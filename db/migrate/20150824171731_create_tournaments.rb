class CreateTournaments < ActiveRecord::Migration
  def change
    create_table(:tournaments) do |t|
      t.column(:tournament_name, :string)

      t.timestamps()
    end
  end
end
