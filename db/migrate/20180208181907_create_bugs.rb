class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :projectname
      t.string :description

      t.timestamps
    end
  end
end
