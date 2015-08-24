class Team < ActiveRecord::Base
  scope(:disqualified, -> do
    where({:qualified => false})
  end)
end
