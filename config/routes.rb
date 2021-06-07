Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    # /chatrooms/:chatroom_id/messages
    resources :messages, only: :create
  end

  # resources :a do
  #   resources :b do
  #     resources :c do
  #       resources :d

  #       # form for creating D will be
  #       simple_form_for [@a, @b, @c, @d]
  #     end
  #   end
  # end
  

  # /messages
  # resources :messages, only: :create

  # Create a new resource: new and create
  # new -> the page with the form
  # We DON'T want the new action, because the form will be in the Chatrooms#show
  # create -> content, chatroom_id, user_id
  # content => will be sent from an input inside the form
  # user_id => current_user
  # chatroom_id => 
  # option n1) nested route, so we will have params[:chatroom_id]
  # option n2) hidden input with the value filled by us



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
