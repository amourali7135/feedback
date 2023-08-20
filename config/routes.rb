Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #skipping the original join tables for first MVP draft initially to test out

  resources :company, only: [:edit, :new, :update, :create] do 
    resources :companyfeedback, shallow: true do 
      resources :companyfeedbackresponse, only: [:new, :create] # should I even keep this?
    end
  end

  #this may be risky as fuck, test and be careful!  Refactor if needed.
  resources :user, only: [:show], shallow: true do
    resources :userfeedback, shallow: true do 
      resources :userfeedbackresponse, only: [:new, :create] #skipping join table
    end
    resources :userobstacle #skipping join table
    resources :usergoal #skipping join table
    resources :userweakness #skipping join table
  end

  #this may be risky as fuck, test and be careful!  Refactor if needed.
  resources :team, shallow: true do
    resources :member, only: [:index, :create]
    resources :teamfeedback, shallow: true do 
      resources :teamfeedbackresponse, only: [:new, :create]
    end #skipping join table
    resources :teamgoal #skipping join table
  end

  # get creative with this, it's problematic!
  # maybe get list from user teams of users and load them...shit.  May miss some.  
  # It's a 1:N, so no join table.  Refactor later if manager table is needed and gets complicated, though for now it's not really necessary I'd say.  Just have a link and use controllers to get them there otgether.  
  # resources :managertable, except: [:index], shallow: true do  #do I even need this table?  
  resources :employeelist, shallow: true do   #skipping join table
    resources :employeenote#, only: [:create, :new, :index] may not even need it nested
  end

  resources :managementfeedbacktable, shallow: true do 
    resources :managementfeedback, shallow: true do 
      resources :managementfeedbackresponse, only: [:new, :create]
    end
  end

  resources :survey, shallow: true do 

  end

  
end

