require('rspec')
require('pg')
require('sinatra/activerecord')
require('team')
require('tournament')

RSpec.configure do |config|
  config.after(:each) do
    Team.all().each() do |team|
      team.destroy()
    end

    Tournament.all().each() do |tournament|
      tournament.destroy()
    end
  end
end
