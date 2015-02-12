Rails.application.routes.draw do
    
  get 'welcome/index'

devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root :to => 'welcome#index'
    end
    unauthenticated :user do
      root :to => 'welcome#roots', as: :unauthenticated_root
    end
  end
  
  resources :posts do
    member do
  	put "like", to: "posts#upvote"
  	put "unlike", to: "posts#downvote"
    end
  resources :comments
  
  end
  
  resources :pins do
  	member do
  	put "like", to: "pins#upvote"
  	put "unlike", to: "pins#downvote"
    end
  end


  #root 'welcome#roots'
  
  

end
