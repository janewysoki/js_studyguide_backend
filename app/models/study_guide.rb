class StudyGuide < ApplicationRecord
  belongs_to :user
  has_many :flashcards

  validates :name, presence: true #now you can't create a SG without a name
end
