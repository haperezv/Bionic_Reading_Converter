class CreateBionics < ActiveRecord::Migration[7.0]
  def change
    create_table :bionics do |t|
      t.text :text_initial
      t.text :text_converted

      t.timestamps
    end
  end
end
