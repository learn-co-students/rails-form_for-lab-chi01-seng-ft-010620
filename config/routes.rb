Rails.application.routes.draw do
    resources :students
    resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]

    patch 'school_classes/:id', to: 'school_classes#update'
end
