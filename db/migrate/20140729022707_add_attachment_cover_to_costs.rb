class AddAttachmentCoverToCosts < ActiveRecord::Migration
  def self.up
    change_table :costs do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :costs, :cover
  end
end
