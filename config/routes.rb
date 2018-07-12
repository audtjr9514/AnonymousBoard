Rails.application.routes.draw do
  
  root 'cont#index'
  
  get 'cont/index'
  
  post 'cont/result'
  
  get 'cont/destroy/:dbase_id' => 'cont#destroy'
  
  get 'cont/edit/:dbase_id' => 'cont#edit'
  
  post 'cont/update/:dbase_id' => 'cont#update'
  
  post '/cont/index/:dbase_id/create' => 'comments#create'
  
  get 'comments/delete/:comment_id' => 'comments#delete'
end