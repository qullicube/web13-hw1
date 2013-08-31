class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :education
      t.text :hobbies
      t.date :birthday
      t.text :relationship

      t.timestamps
    end
  end
end
