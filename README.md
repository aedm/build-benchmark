# Benchmarking Java, Rust, Go and Node build times on Windows, WSL and Linux

This repository contains code I used to write an article comparing build times.

## Set up tests on Linux

Start with a fresh Ubuntu.

1. Run `linux/init-install-toolchains.sh`. This will install all tools needed.
1. Open a new Bash.
1. Run `linux/init-clone-repos.sh`. This will git clone the test projects into `~/bench`.
1. Run every `linux/bench-*.sh` script to download dependencies.
1. Turn off networking.

## Set up tests on Windows

1. Install tools manually. Sorry.
1. Go to the `windows` directory.
1. Run `init-clone-repos.ps1`. This will git clone the test projects into the current folder.
1. Run every `bench-*.sh` script to download dependencies.
1. Turn off networking.

### Running a test

1. Restart the machine.
1. Run a `bench-*` script to run a benchmark with cold file cache.
1. Run the same script again to get the result with a hot file cache.
