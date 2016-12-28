defmodule PigLatinTest do
  use ExUnit.Case
  doctest PigLatin

  test "word starting with a lowercase vowel" do
    assert PigLatin.translate("apple") == "appleway"
    assert PigLatin.translate("orange") == "orangeway"
  end

  test "word starting with an uppercase vowel" do
    assert PigLatin.translate("Apple") == "Appleway"
  end

  test "word starting with a single lowercase consonant" do
    assert PigLatin.translate("computer") == "omputercay"
    assert PigLatin.translate("coding") == "odingcay"
  end

  test "word starting with a single uppercase consonant" do
    assert PigLatin.translate("Computer") == "Omputercay"
  end

  test "word starting with multiple lowercase consonants" do
    assert PigLatin.translate("programming") == "ogrammingpray"
    assert PigLatin.translate("string") == "ingstray"
  end

  test "word starting with multiple uppercase consonants" do
    assert PigLatin.translate("Programming") == "Ogrammingpray"
    assert PigLatin.translate("String") == "Ingstray"
  end

  test "find first vowel" do
    assert PigLatin.get_first_vowel_index("apple") == 0
    assert PigLatin.get_first_vowel_index("computer") == 1
  end

  test "capitalized" do
    assert PigLatin.capitalized("apple") == false
    assert PigLatin.capitalized("Apple") == true
  end
end
