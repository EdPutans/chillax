Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :create, :show]
      end
    end
  end

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :destinations, only: [:index, :show]
      end
    end
  end



  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :user_destinations
      end
    end
  end


  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :comments
      end
    end
  end



  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :pictures, only: [:show, :index]
      end
    end
  end


  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :months, only: [:show, :index]
      end
    end
  end
end
