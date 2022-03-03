Set-PSDebug -Trace 1
cd hugo
go clean -cache
Measure-Command { go build }
cd ..