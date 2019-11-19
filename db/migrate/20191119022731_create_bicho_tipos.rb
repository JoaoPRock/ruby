class CreateBichoTipos < ActiveRecord::Migration[6.0]
  def change
    create_table :bicho_tipos do |t|
      t.references :bicho, null: false, foreign_key: true
      t.references :tipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
