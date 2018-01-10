Rails.application.routes.draw do
  get 'registry/index'

  get 'registry/create'

  get 'registry/show'

  get 'registry/edit'

  get 'registry/update'

  get 'registry/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
