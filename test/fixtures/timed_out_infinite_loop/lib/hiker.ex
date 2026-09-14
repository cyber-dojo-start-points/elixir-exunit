defmodule HIKER do

  def answer do
    count_to_the_answer(0)
  end

  # The learner meant to count up to 42 and never moves n, so this spins for
  # as long as it is allowed to. ExUnit's own per-test timeout is 60 seconds
  # and the manifest gives the run 15, so the runner is what stops it and the
  # outcome is timed_out rather than a failed test.
  defp count_to_the_answer(n) do
    if n == 42 do
      n
    else
      count_to_the_answer(n)
    end
  end

end
