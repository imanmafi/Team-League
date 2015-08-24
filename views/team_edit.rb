<h1>Update <%=@team.team_name() %> </h1>

<form action="/teams/<%= @team.id() %>" method="post">
  <input name="_method" type="hidden" value="patch">
  <label for="team_name">Rename your team:</label>
  <input id="team_name" name="team_name" type="text">

  <button type="submit">Update</button>
</form>
