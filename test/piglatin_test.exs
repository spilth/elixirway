defmodule PigLatinTest do
  use ExUnit.Case
  doctest PigLatin

  test "word starting with a vowel" do
    assert PigLatin.translate("apple") == "appleway"
    assert PigLatin.translate("orange") == "orangeway"
  end

  test "word starting with a consanant" do
    assert PigLatin.translate("computer") == "omputercay"
  end
end
