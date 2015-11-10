class AddAttachmentIconToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :icon
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :projects, :icon
    remove_attachment :projects, :file
  end
end
