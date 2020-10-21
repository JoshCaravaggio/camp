class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :info
      t.string :location
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
