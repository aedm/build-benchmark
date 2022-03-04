Set-PSDebug -Trace 1
cd bat
cargo clean
Measure-Command { cargo build }
cd ..