set -x
cd hugo
go clean -cache
time go build
cd -