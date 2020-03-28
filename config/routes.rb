#Route Types
# simple route, default route, root route, resourceful routes
#
# simple (match) route
#
#   //example
#
#     get demo/index
#     match "demo/index", :to => "demo#index", :via => :
#
# default route
#    //structure:
#     :controller/:action/:id
#    //
#     get ':controller(/:action(/:id))'
#     match ':controller(/:action(/:id))', :via => :get
#
#   //example
#
#     GET /students/edit/52
#
#   //is represented as...
#     StudentsController, edit action, id = 52
#
#
# root route
#   //structure
#     match "/", :to => "demo#index", :via => :get
#
#   //example
#
#     root "demo#index"
#
# resourceful routes
#
Rails.application.routes.draw do
  get 'subjects/index'
  get 'subjects/show'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/delete'
#Simple Route example

  # get 'demo/index'

#Default Route example
# may go away in future versions of Rails

  # get ':controller(/:action(/:id))'

#Root Route example
  root "demo#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
