class StudyGuide < ApplicationRecord
  belongs_to :user
  has_many :flashcards
end
