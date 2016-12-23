Rails.application.routes.draw do

  namespace :api, { format: 'json' } do
    namespace :v1 do
        get 'csv_settings/list', to:  'csv_settings#list'
        get 'csv_settings/show', to: 'csv_settings#show'
        get 'csv_settings/create', to: 'csv_settings#create'
        get 'csv_settings/update', to: 'csv_settings#update'
        get 'csv_settings/destroy', to: 'csv_settings#destroy'

    end
  end

  resources :item_groups
  resources :items
  resources :products
end
