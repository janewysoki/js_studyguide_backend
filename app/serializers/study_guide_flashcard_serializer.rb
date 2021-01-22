class StudyGuideFlashcardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :flashcards
end
