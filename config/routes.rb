Rails.application.routes.draw do
    
  get 'welcome/index'

  devise_for :users
  resources :posts do
  resources :comments
  
  end
  resources :pins do
  	member do
  	put "like", to: "pins#upvote"
  end
end


  root 'welcome#index'

end
