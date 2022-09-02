class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.belongs_to :planet
      t.belongs_to :scientist

      t.timestamps
    end
  end
end
