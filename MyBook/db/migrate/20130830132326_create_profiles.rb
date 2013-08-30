class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :education
      t.array :hobbies
      t.date :birthday
      t.text :relationship

      t.timestamps
    end
  end
end
