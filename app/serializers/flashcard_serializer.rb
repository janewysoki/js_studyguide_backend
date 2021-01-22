class FlashcardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :cardfront, :cardback, :subject, :memorized, :study_guide_id
end
