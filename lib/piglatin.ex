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
        first_vowel_index = get_first_vowel_index(word)
        first_part = String.slice(word, 0..first_vowel_index-1)
        rest_of_word = String.slice(word, first_vowel_index..-1)

        rest_of_word <> first_part <> "ay"
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

  @doc """
  Finds the index of the first vowel in a weord.

  Return the index of the first vowel or nil if none found.

  ## Examples

      iex> PigLatin.get_first_vowel_index("apple")
      0
  """

  def get_first_vowel_index(word) do
    Enum.find_index(
        String.graphemes(word),
        fn(character) -> Enum.member?(
            ["a", "e", "i", "o", "u"],
            character
        ) end
    )
  end
end
