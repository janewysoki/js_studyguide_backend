class Flashcard < ApplicationRecord
  belongs_to :user
  belongs_to :study_guide
end
