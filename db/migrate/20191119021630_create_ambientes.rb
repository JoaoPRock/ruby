class CreateAmbientes < ActiveRecord::Migration[6.0]
  def change
    create_table :ambientes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
