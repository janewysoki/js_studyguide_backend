class Flashcard < ApplicationRecord
  belongs_to :user
  belongs_to :study_guide

  validates :cardfront, presence: true
  validates :cardback, presence: true
  validates :memorized, inclusion: { in: [true, false] }
end
