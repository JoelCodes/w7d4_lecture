class CreatePlanners < ActiveRecord::Migration[5.1]
  def change
    create_table :planners do |t|
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
