class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.string :place
      t.datetime :date

      t.timestamps
    end
  end
end
