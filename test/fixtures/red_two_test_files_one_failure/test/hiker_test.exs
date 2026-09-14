defmodule HIKERTest do
  use ExUnit.Case

  test "life the universe and everything" do
    assert HIKER.answer() == 42
  end

  test "the answer is not the question" do
    refute HIKER.answer() == "6 * 7"
  end

end
