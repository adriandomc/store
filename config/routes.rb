Rails.application.routes.draw do
  get "rich_text_attachments/create"
  resource :session
  resources :passwords, param: :token
  root "products#index"

  resources :products do
    resources :subscribers, only: [ :create ]
  end

  post "rich_text_attachments", to: "rich_text_attachments#create"
end
