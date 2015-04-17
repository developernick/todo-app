require 'bundler'
Bundler.require()

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'to_do_list'
)

# Model
require './models/model'

# ******Routing*******
get '/' do
  erb :index
end

 get '/api/todos' do
   content_type :json
   todo = Todo.all
   todo.to_json
 end

# All todos

 get '/api/todos/:id' do
   content_type :json
   todo = Todo.params[:id]
   todo.to_json
 end

# A specific todo

 post '/api/todos' do
   content_type :json
   todo = Todo.create(params[:id])
   todo.to_json
 end

# Create a new todo

 put '/api/todos/:id' do
   content_type :json
   todo = Todo.find(params[:id].to_i)
   todo.update(params[:todo])
   todo.to_json
 end

# Update an existing todo

 patch '/api/todos/:id' do
   content_type :json
   todo = Todo.find(params[:id].to_i)
   todo.update(params[:todo])
   todo.to_json
 end

# Update an existing todo

 delete '/api/todos/:id' do
   content_type :json
   todo = Todo.delete(params[:id].to_i)
   {message: 'Success'}.to_json
 end

# Delete an existing todo
