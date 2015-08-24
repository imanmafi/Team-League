describe(Tournament) do
  describe("#teams") do
    it("tells which teams are in it") do
      test_tournament = Tournament.create({:tournament_name => "city tournament"})
      test_team1 = Team.create({:team_name => "team1", :tournament_id => test_tournament.id})
      test_team2 = Team.create({:team_name => "team2", :tournament_id => test_tournament.id})
     expect(test_tournament.teams()).to(eq([test_team1, test_team2]))
    end
  end
end
