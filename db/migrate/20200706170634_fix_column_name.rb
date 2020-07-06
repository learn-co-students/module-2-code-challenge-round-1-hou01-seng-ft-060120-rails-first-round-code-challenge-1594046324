class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table :heroine_powers do |t|
      t.rename :heroin_id, :heroine_id
    end
  end
end
