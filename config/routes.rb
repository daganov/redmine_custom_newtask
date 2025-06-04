RedmineApp::Application.routes.draw do
  # Добавляем маршрут для обработки сохранения настроек
  match 'settings/plugin/redmine_custom_newtask', 
        to: 'redmine_custom_newtask_settings#save', 
        via: [:post, :put]
end
