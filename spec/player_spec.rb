require("spec_helper")

describe(Player) do

  describe("#tournament") do
    it('tells which tournament the team belongs to') do
      test_tournament = Tournament.create({:tournament_name => "city tournament"})
      test_team = Team.create({:team_name => "Moms of Beaverton", :tournament_id => test_tournament.id})
      expect(test_team.tournament()).to(eq(test_tournament))
    end
  end
end
