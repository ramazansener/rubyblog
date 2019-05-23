class AddAttachmentResimToYazilars < ActiveRecord::Migration[5.2]
  def self.up
    change_table :yazilars do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :yazilars, :resim
  end
end
