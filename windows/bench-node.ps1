Set-PSDebug -Trace 1
cd jest
Remove-Item dist -Recurse -ErrorAction Ignore
Measure-Command { yarn build }
cd ..