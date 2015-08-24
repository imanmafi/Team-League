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

  describe("#players") do
    it('tells what players are in the team') do
      test_team = Team.create({:team_name => "Moms of Beaverton", :tournament_id => test_tournament.id})
      test_player1 = Player.create({:player_name => "Hiraldo", :team_id => nil})
      test_player2 = Player.create({:player_name => "Geraldo", :team_id => nil})
      expect(test_team.players()).to(eq([test_player1, test_player2]))
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
