defmodule AnswerSizeTest do
  use ExUnit.Case

  test "the answer is three digits long" do
    assert String.length(Integer.to_string(HIKER.answer())) == 3
  end

end
