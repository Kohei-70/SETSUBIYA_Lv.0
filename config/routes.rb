Rails.application.routes.draw do
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # devise_for :admin, skip: [:registrations, :passwords], controllers: {
  #   # sessions: "admin/sessions"
  # }

  namespace :admin do
    resources :quizzes, only: [:index, :new, :create, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end

end
