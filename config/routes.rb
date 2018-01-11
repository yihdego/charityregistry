Rails.application.routes.draw do
  get 'user/new'

  get 'user/create'

  get 'user/edit'

  get 'user/update'

  get 'user/delete'

  get 'user/show'

  get 'user/index'

  get 'registry/destroy'

  get 'registry/new'

  get 'registry/index'

  get 'registry/create'

  get 'registry/show'

  get 'registry/edit'

  get 'registry/update'

  get 'registry/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
