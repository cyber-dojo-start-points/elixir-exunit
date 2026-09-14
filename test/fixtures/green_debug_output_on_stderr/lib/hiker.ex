defmodule HIKER do

  # The learner is watching when the answer gets asked for, and has not taken
  # this out yet.
  def answer do
    IO.puts(:stderr, "debug: answer was called")
    6 * 7
  end

end
