Set-PSDebug -Trace 1
cd \x\code\build-benchmark
cd hugo
go clean -cache
Measure-Command { go build }
cd ..