Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, { format: 'json' } do
    namespace :v1 do
        get 'csv_settings/list' => 'csv_settings#list'
        get 'csv_settings/show' => 'csv_settings#show'
        get 'csv_settings/create' => 'csv_settings#create'
        get 'csv_settings/update' => 'csv_settings#update'
        get 'csv_settings/destroy' => 'csv_settings#destroy'
    end
  end

end
