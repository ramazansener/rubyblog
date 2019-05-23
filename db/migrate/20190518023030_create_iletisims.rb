class CreateIletisims < ActiveRecord::Migration[5.2]
  def change
    create_table :iletisims do |t|
      t.text :aciklama

      t.timestamps
    end
  end
end
