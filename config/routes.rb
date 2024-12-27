Rails.application.routes.draw do
  root to: 'registrations#new' # замените на ваш корневой маршрут

  # Маршруты для регистрации
  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'
  get 'registration_success', to: 'registrations#success', as: 'registration_success'

  # Ресурсные маршруты для пользователей
  resources :users, only: [:new, :create]

  # Ресурсные маршруты для постов
  resources :posts

  # Проверка состояния приложения
  get "up" => "rails/health#show", as: :rails_health_check

  # Другие маршруты (например, для PWA)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker"
end
