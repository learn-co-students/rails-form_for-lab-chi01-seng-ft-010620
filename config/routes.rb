Rails.application.routes.draw do
  resources :students, only: [:new,:create,:edit,:update,:show]
  patch 'students/:id', to: 'students#update'
  
  resources :school_classes , except: [:destroy,:index] 
  get 'school_classes/:id/edit', to: 'school_classes#edit'
  patch 'school_classes/:id', to: 'school_classes#update'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb  URI Pattern                  Controller#Action
#     students GET   /students(.:format)          students#index
#              POST  /students(.:format)          students#create
#  new_student GET   /students/new(.:format)      students#new
# edit_student GET   /students/:id/edit(.:format) students#edit
#      student GET   /students/:id(.:format)      students#show
#              PATCH /students/:id(.:format)      students#update
#              PUT   /students/:id(.:format)      students#update


# school_classes   POST  /school_classes(.:format)          school_classes#create
#  new_school_class GET   /school_classes/new(.:format)      school_classes#new
# edit_school_class GET   /school_classes/:id/edit(.:format) school_classes#edit
#      school_class GET   /school_classes/:id(.:format)      school_classes#show
#                   PATCH /school_classes/:id(.:format)      school_classes#update
#                   PUT   /school_classes/:id(.:format)      school_classes#update
