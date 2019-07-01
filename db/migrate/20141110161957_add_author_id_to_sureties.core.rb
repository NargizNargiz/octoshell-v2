# This migration comes from core (originally 20141110161741)
class AddAuthorIdToSureties < ActiveRecord::Migration[4.2]
  def change
    add_column :core_sureties, :author_id, :integer
    add_index :core_sureties, :author_id
  end
end
