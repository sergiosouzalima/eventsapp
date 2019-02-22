class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.string :kind
      t.date :start_at
      t.date :finish_at

      t.timestamps
    end
  end
end
