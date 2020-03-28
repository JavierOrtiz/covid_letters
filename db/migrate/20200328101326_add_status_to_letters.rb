class AddStatusToLetters < ActiveRecord::Migration[6.0]
  def change
    add_column :letters, :status, :integer, default: 0
  end
end
