class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string :cardfront
      t.text :cardback
      t.string :subject
      t.boolean :memorized
      t.references :user, null: false, foreign_key: true
      t.references :study_guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
