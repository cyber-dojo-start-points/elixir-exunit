defmodule AnswerSizeTest do
  use ExUnit.Case

  test "the answer is two digits long" do
    assert String.length(Integer.to_string(HIKER.answer( == 2
  end

end
