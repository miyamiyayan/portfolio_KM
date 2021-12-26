Rails.application.routes.draw do

  root to: 'homes#top'
  resources :asobis do
    resources :post_comments, only: [:create, :destroy]
    resource :joins, only: [:create, :destroy]
  end

  # マイページと編集
  get "/customers/" => 'customers#show'
  patch "/customers/" => 'customers#update'
  get "/customers/edit" => 'customers#edit'
  get "/customers/confirm" => 'customers#confirm'
  patch "/customers/withdraw" => 'customers#withdraw'


  devise_for :members, controllers: {
        sessions: 'members/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
