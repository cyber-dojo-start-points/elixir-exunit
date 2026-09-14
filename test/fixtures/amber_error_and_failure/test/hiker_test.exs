defmodule HIKERTest do
  use ExUnit.Case

  test "life the universe and everything" do
    assert HIKER.answer() == 42
  end

  test "the checksum of the answer" do
    assert HIKER.checksum() == 7
  end

end
