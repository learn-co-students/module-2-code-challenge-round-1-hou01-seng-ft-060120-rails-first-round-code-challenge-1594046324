class HeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.integer :heroin_id
      t.integer :power_id

      t.timestamps
    end
  end
end
