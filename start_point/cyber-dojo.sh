# The BEAM JIT keeps its generated code in a 64MiB memfd mapped twice, once
# writable and once executable. Growing that memfd is a file growing, so the
# container's file-size limit refuses it and the run dies with SIGXFSZ.
# +JMsingle true asks for one mapping that is both, which needs no memfd. It
# gives up write-execute separation inside the BEAM, and costs no run time.
ERL_FLAGS='+JMsingle true' elixir -r 'lib/**/*.ex' -r test/test_helper.exs -r 'test/**/*_test.exs'
