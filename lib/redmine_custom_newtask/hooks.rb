module RedmineCustomNewtask
  class Hooks < Redmine::Hook::ViewListener
    def view_issues_new_top(context = {})
      settings = Setting.plugin_redmine_custom_newtask
      
      # Проверяем, включен ли блок
      return unless settings['show_block'] == '1' && settings['info_text'].present?
      
      # Получаем текущий проект
      project = context[:project]
      return unless project
      
      # Проверяем, доступен ли блок для этого проекта
      allowed_projects = (settings['project_identifiers'] || '').split(',').map(&:strip)
      return unless allowed_projects.empty? || allowed_projects.include?(project.identifier)

      context[:controller].send(:render_to_string, {
        partial: 'redmine_custom_newtask/info_block',
        locals: { info_text: settings['info_text'], important_info: settings['important_info'] }
      })
    end
  end
end
