class CreateTeams < ActiveRecord::Migration
  def change
    create_table(:teams) do |t|
      t.column(:team_name, :string)
      t.column(:disqualified, :boolean)

      t.timestamps()
    end
  end
end
