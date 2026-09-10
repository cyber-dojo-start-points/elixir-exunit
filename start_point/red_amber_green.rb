lambda { |stdout,stderr,status|
  output = stdout + stderr
  # elixir exits 1 when a file will not compile, so no test ran at all.
  return :amber if status == 1
  # ExUnit exits 2 when any test failed, and 0 when none did. Both colours
  # ride on that one status, so the only thing left to read is which kind
  # of failure it was.
  if status == 2
    # An exception prints a "** (SomeError)" line and an assertion failure
    # does not, which is how the house convention of red for an assertion
    # and amber for an error is applied. ExUnit.AssertionError is excluded
    # because it is ExUnit reporting an assertion, not the kata raising.
    return :amber if /^\s*\*\* \((?!ExUnit\.AssertionError)/.match(output)
    return :red
  end
  # A suite holding no tests passes without proving anything, so it is not
  # green. This is the one line reading wording rather than status, and it
  # is written so that a reword scores an empty suite green rather than
  # scoring a passing one amber.
  return :amber if /^Result: 0 tests/.match(output)
  return :green if status == 0
  return :amber
}
