Set-PSDebug -Trace 1
cd jest
yarn build-clean
Measure-Command { yarn build }
cd ..   