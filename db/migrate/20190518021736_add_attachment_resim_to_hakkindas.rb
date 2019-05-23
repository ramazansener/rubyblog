class AddAttachmentResimToHakkindas < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hakkindas do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :hakkindas, :resim
  end
end
