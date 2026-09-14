defmodule HIKERTest do
  use ExUnit.Case

  test "life the universe and everything" do
    assert HIKER.answer() == 42
  end

  test "the answer is two digits long" do
    assert String.length(Integer.to_string(HIKER.answer())) == 2
  end

end
