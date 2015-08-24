require("spec_helper")

describe(Team) do

  describe(".disqualified") do
    it("returns teams not in tournament") do
      disqualified_team1 = Team.create({:team_name => "Mom's of Portland", :disqualified => false})
      disqualified_team2 = Team.create({:team_name => "Mom's of Beaverton", :disqualified => false})
      disqualified_teams = [disqualified_team1, disqualified_team2]
      disqualified_team = Team.create({:team_name => "Status", :disqualified => true})
      expect(Team.disqualified()).to(eq(disqualified_teams))
    end
  end
end
