require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('/lib/**/*.rb')
require('./lib/team')
require('./lib/tournament')

get('/') do
  erb(:index)
end

get('/teams') do
  @teams = Team.all()
  erb(:teams)
end

get('/teams/:id') do
  @team = Team.find(params.fetch("id").to_i())
  @teams_tournament = @team.tournament()
  erb(:team_info)
end

get('/teams/:id/edit') do
  @team = Team.find(params.fetch("id").to_i())
  @tournaments = Tournament.all()
  erb(:task_edit)
end

post('/teams') do
  team_name = params.fetch('team_name')
  team = Team.new({:team_name => team_name})
  team.save()
  erb(:index)
end

patch("/teams/:id") do
  team_name = params.fetch("team_name")
  @team = Team.find(params.fetch("id").to_i())
  @team.update({:team_name => team_name})
  @teams = Team.all()
  erb(:index)
end
