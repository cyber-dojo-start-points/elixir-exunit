# The name ends in _spec, so cyber-dojo.sh never gathers this file, and it is
# half written so it would not parse either. Elixir reads only the files it is
# told to read, so this one is never opened and the half-written line costs
# nothing. That is what separates this start-point from one whose runner
# parses every file it can see.
defmodule HIKERSpec do
  use ExUnit.Case

  test "the answer is three digits long" do
    assert String.length(Integer.to_string(HIKER.answer( == 3
  end

end
