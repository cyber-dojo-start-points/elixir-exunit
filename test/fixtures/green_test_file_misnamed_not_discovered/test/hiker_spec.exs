# cyber-dojo.sh gathers test/**/*_test.exs, and this name ends in _spec, so
# these tests are never loaded and never run. The assertion is one that would
# fail, so that a green says it really did not run rather than that it ran
# and passed.
defmodule HIKERSpec do
  use ExUnit.Case

  test "the answer is three digits long" do
    assert String.length(Integer.to_string(HIKER.answer())) == 3
  end

end
