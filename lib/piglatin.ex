defmodule PigLatin do
  @moduledoc """
  This is the main PigLatin module for translating words.
  """

  @doc """
  Translates the given word to Piglatin.

  Returns the translated word.

  ## Examples

      iex> PigLatin.translate("apple")
      "appleway"

  """
  def translate(word) do
    if starts_with_vowel(word) do
        word <> "way"
    else
        first_letter = String.downcase(String.first(word))
        rest_of_word = String.slice(word, 1..-1)
        rest_of_word <> first_letter <> "ay"
    end
  end

  @doc """
  Determines if a word starts with a vowel.

  Returns true if the word starts with a vowel. Otherwise false.

  ## Examples

      iex> PigLatin.starts_with_vowel("apple")
      true

  """
  def starts_with_vowel(word) do
    first_letter = String.downcase(String.first(word))
    Enum.member?(["a", "e", "i", "o", "u"], first_letter)
  end
end
