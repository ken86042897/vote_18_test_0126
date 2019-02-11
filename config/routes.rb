Rails.application.routes.draw do
  resources :article_attachments
  mount Ckeditor::Engine => '/ckeditor'
  root 'articles#homepage'
  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
