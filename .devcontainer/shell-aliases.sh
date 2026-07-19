# AtCoder 用のシェルヘルパー。

ropen() {
  code main.rb
}

# atcr <contest> <problem>: コンテストを取得し、指定問題を開く。
atcr() {
  NODE_OPTIONS="--disable-warning=DEP0040" acc new "$1" && pushd "$1/$2" && ropen
}

# rtest: カレントの main.rb を tests/ のサンプルで実行する。
rtest() {
  oj t -c "ruby main.rb" -d tests -N
}
