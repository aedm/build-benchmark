Set-PSDebug -Trace 1
cd RxJava
gradle clean
gradle --stop
Remove-Item "$env:USERPROFILE\.gradle\caches" -Recurse -ErrorAction Ignore
Measure-Command { gradle build -x test }
cd ..