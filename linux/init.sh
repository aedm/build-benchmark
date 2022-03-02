set -x

git clone --depth 1 --branch v0.92.0 https://github.com/gohugoio/hugo.git
git clone --depth 1 --branch v16.14.0 https://github.com/facebook/react.git
git clone --depth 1 --branch v0.20.0 https://github.com/sharkdp/bat.git
git clone --depth 1 --branch v3.1.3 https://github.com/ReactiveX/RxJava.git

cd react
yarn
cd -
