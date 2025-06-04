require 'redmine'

Redmine::Plugin.register :redmine_custom_newtask do
  name 'Redmine Custom NewTask Message Plugin'
  author 'Aganov D.'
  description 'Добавляет информационный блок на страницу создания задачи'
  version '0.0.1'
  url 'https://github.com/daganov/redmine_custom_newtask.git'
  author_url 'https://github.com/daganov/redmine_custom_newtask.git'

  settings default: { 
    'info_text' => '<%= l(:default_text) %>',
    'show_block' => '1',
    'project_identifiers' => 'jenkins'
  }, 
  partial: 'settings/redmine_custom_newtask_settings'
end
