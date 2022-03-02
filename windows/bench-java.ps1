Set-PSDebug -Trace 1
cd \x\code\build-benchmark
cd RxJava
gradle clean
Measure-Command { gradle build -x test }
cd ..