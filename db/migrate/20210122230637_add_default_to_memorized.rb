class AddDefaultToMemorized < ActiveRecord::Migration[6.0]
  def change
    change_column :flashcards, :memorized, :boolean, default: false
  end
end
