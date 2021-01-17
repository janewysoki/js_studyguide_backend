class CreateStudyGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :study_guides do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
