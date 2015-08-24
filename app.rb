require('sinatra/activerecord')
require('./lib/team')

get('/') do
  erb(:index)
end

get('/teams/:id/edit') do
  @task = Team.find(params.fetch("id").to_i())
  erb(:task_edit)
end

patch("/teams/:id") do
  team_name = params.fetch("team_name")
  @team = Team.find(params.fetch("id").to_i())
  @team.update({:team_name => team_name})
  @teams = Team.all()
  erb(:index)
end
