Set-PSDebug -Trace 1
cd RxJava
gradle clean
gradle --stop
Measure-Command { gradle assemble --no-build-cache }
cd ..