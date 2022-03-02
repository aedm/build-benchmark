Set-PSDebug -Trace 1
cd \x\code\build-benchmark
cd bat
cargo clean
Measure-Command { cargo build }
cd ..