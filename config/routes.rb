Rails.application.routes.draw do
 get 'show' , to:'mysql#index'
 post 'show', to:'mysql#output'
end
