require("spec_helper")

describe(Team) do

  describe(".disqualified") do
    it("returns teams not in tournament") do
      disqualified_team1 = Team.create({:team_name => "Mom's of Portland", :disqualified => false})
      disqualified_team2 = Team.create({:team_name => "Mom's of Beaverton", :disqualified => false})
      disqualified_teams = [disqualified_team1, disqualified_team2]
      disqualified_team = Team.create({:team_name => "status", :disqualified => true})
      expect(Team.disqualified()).to(eq(disqualified_teams))
    end
  end

  describe("#tournament") do
    it('tells which tournament the team belongs to') do
      test_tournament = Tournament.create({:tournament_name => "city tournament"})
      test_team = Team.create({:team_name => "Moms of Beaverton", :tournament_id => test_tournament.id})
      expect(test_team.tournament()).to(eq(test_tournament))
    end
  end
end
