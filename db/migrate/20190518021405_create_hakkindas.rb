class CreateHakkindas < ActiveRecord::Migration[5.2]
  def change
    create_table :hakkindas do |t|
      t.text :aciklama
      t.date :tarih

      t.timestamps
    end
  end
end
