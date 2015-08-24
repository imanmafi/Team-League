require('rspec')
require('pg')
require('sinatra/activerecord')
require('team')

RSpec.configure do |config|
  config.after(:each) do
    Team.all().each() do |team|
      team.destroy()
    end
  end
end
