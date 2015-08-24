require('sinatra/activerecord')
require('./lib/team')

get('/') do
  erb(:index)
end
