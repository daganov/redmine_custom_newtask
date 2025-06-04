module RedmineCustomNewtask
  class Engine < ::Rails::Engine
    isolate_namespace RedmineCustomNewtask
    
    config.to_prepare do
      # Автоматически подключаем хук
      require_dependency 'redmine_custom_newtask/hooks'
    end
  end
end
