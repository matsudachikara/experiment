Rails.application.routes.draw do
  get 'products/index'

  get 'products/create'

  get 'products/new'

  get 'products/edit'

  get 'products/show'

  get 'products/update'

  get 'products/destroy'

  get 'items/index'

  get 'items/create'

  get 'items/new'

  get 'items/edit'

  get 'items/show'

  get 'items/update'

  get 'items/destroy'

  get 'item_groups/index'

  get 'item_groups/create'

  get 'item_groups/new'

  get 'item_groups/edit'

  get 'item_groups/show'

  get 'item_groups/update'

  get 'item_groups/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
