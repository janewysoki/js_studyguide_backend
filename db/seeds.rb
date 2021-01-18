# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

sat_words = user.study_guides.find_or_create_by(name: "SAT Words")

flashcard_1 = user.flashcards.find_or_create_by(cardfront: "antipathy", cardback: "a strong feeling of dislike", subject: "vocabulary", memorized: false, study_guide_id: sat_words.id)
flashcard_2 = user.flashcards.find_or_create_by(cardfront: "promulgate", cardback: "to put into law or formally declare", subject: "vocabulary", memorized: false, study_guide_id: sat_words.id)
flashcard_3 = user.flashcards.find_or_create_by(cardfront: "demagogue", cardback: "rabble-rousing leader", subject: "vocabulary", memorized: true, study_guide_id: sat_words.id)


ww2_test = user.study_guides.find_or_create_by(name: "WWII Test")
flashcard_1 = user.flashcards.find_or_create_by(cardfront: "League of Nations", cardback: "A world organization established in 1920 to promote international cooperation and peace. It was first proposed in 1918 by President Woodrow Wilson, although the United States never joined the League. Essentially powerless, it was officially dissolved in 1946.", subject: "history", memorized: false, study_guide_id: ww2_test.id)