def word_counter(corpus, dictionary)
  word_counts = Hash.new(0)
  corpus.downcase.split(/\W+/).each do |word|
    word_counts[word] += 1 if dictionary.include?(word)
  end
  word_counts
end

# Lecture du fichier shakespeare.txt
corpus = File.read('../data/Shakespeare.txt')

# Définition du dictionnaire des mots communs
common_words = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# Comptage des occurrences des mots communs
common_word_counts = word_counter(corpus, common_words)

# Affichage des résultats
puts "Occurrences des mots communs dans le corpus de Shakespeare :"
common_word_counts.each do |word, count|
  puts "#{word}: #{count}"
end
# Lecture du fichier de gros mots
swearWords_file = File.read('../data/swearWords.txt')

# Transformation en une array de mots
swearWords = swearWords_file.downcase.split("\n")
# Utilisation de la fonction word_counter pour compter les occurrences des gros mots
nombre_occurrences = word_counter(corpus, swearWords)

# Affichage du nombre total d'occurrences de gros mots
puts "Le nombre total d'occurrences de gros mots dans l'œuvre de Shakespeare est : #{nombre_occurrences.values.sum}"
