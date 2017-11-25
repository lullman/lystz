class AddRedactFieldToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :redacted, :boolean, default: false
  end
end
