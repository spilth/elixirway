defmodule PigLatin do
  def translate(word) do
    if starts_with_vowel(word) do
        word <> "way"
    else
        first_letter = String.downcase(String.first(word))
        rest_of_word = String.slice(word, 1..-1)
        rest_of_word <> first_letter <> "ay"
    end
  end

  def starts_with_vowel(word) do
    first_letter = String.downcase(String.first(word))
    Enum.member?(["a", "e", "i", "o", "u"], first_letter)
  end
end
