class Team < ActiveRecord::Base
  scope(:disqualified, -> do
    where({:disqualified => false})
  end)

  belongs_to(:tournament)
end
