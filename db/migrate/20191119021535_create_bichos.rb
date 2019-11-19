class CreateBichos < ActiveRecord::Migration[6.0]
  def change
    create_table :bichos do |t|
      t.string :nome
      t.string :alimentacao

      t.timestamps
    end
  end
end
