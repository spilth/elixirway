defmodule PigLatinTest do
  use ExUnit.Case
  doctest PigLatin

  test "word starting with a vowel" do
    assert PigLatin.translate("apple") == "appleway"
    assert PigLatin.translate("orange") == "orangeway"
  end

  test "word starting with a single consonant" do
    assert PigLatin.translate("computer") == "omputercay"
    assert PigLatin.translate("coding") == "odingcay"
  end

  test "word starting with multiple consonants" do
    assert PigLatin.translate("programming") == "ogrammingpray"
  end

  test "find first vowel" do
    assert PigLatin.get_first_vowel_index("apple") == 0
    assert PigLatin.get_first_vowel_index("computer") == 1
  end
end
