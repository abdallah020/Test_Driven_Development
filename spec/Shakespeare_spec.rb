require_relative '../lib/Shakespeare' # Assurez-vous que le chemin vers votre fichier de code source est correct

RSpec.describe "#word_counter" do
  describe "with common words" do
    let(:corpus) { "The quick brown fox jumps over the lazy dog." }
    let(:common_words) { ["the", "quick", "fox", "over"] }

    it "counts occurrences of common words in the corpus" do
      result = word_counter(corpus, common_words)
      expect(result).to eq({"the" => 2, "quick" => 1, "fox" => 1, "over" => 1})
    end
  end

  describe "with Shakespeare's corpus" do
    let(:corpus) { File.read(File.join(__dir__, '../data/Shakespeare.txt')) }
    let(:common_words) { ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"] }

    it "counts occurrences of common words in Shakespeare's corpus" do
      result = word_counter(corpus, common_words)
      expect(result).not_to be_empty
    end
  end

  describe "with swear words" do
    let(:corpus) { File.read(File.join(__dir__, '../data/Shakespeare.txt')) }
    let(:swear_words_file) { File.read(File.join(__dir__, '../data/swearWords.txt')) }
    let(:swear_words) { swear_words_file.downcase.split("\n") }

    it "counts occurrences of swear words in Shakespeare's corpus" do
      result = word_counter(corpus, swear_words)
      expect(result).not_to be_empty
    end
  end
end

