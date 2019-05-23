class CreateYazilars < ActiveRecord::Migration[5.2]
  def change
    create_table :yazilars do |t|
      t.string :kategori
      t.string :baslik
      t.string :yazar
      t.text :aciklama
      t.date :tarih

      t.timestamps
    end
  end
end
