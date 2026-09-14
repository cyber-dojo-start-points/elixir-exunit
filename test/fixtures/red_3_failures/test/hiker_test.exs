defmodule HIKERTest do
  use ExUnit.Case

  test "life the universe and everything" do
    assert HIKER.answer() == 42
  end

  test "the answer is three digits long" do
    assert String.length(Integer.to_string(HIKER.answer())) == 3
  end

  test "the answer is the question" do
    assert HIKER.answer() == "6 * 7"
  end

end
