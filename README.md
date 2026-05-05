# Next DP Contest (AtCoder) ワークスペース

AtCoderの「Next generation Dynamic Programming Contest」用のRuby開発環境です。

## 環境

- **Ruby**: 3.4.5 (Bundler)
- **Python**: 3.13 (uv)
- **Node.js**: 20+ (npm)

## セットアップ

依存ツールとライブラリをインストールします。

```bash
# Ruby ライブラリ
bundle install

# Python ツール (online-judge-tools)
uv sync

# Node.js ツール (atcoder-cli)
npm install
```

## ツール

リポジトリ内のツールを使用する場合は、以下のコマンドを利用してください。

```bash
# atcoder-cli (acc)
npx acc <command>

# online-judge-tools (oj)
uv run oj <command>
```

### 連携設定の推奨
`acc` で `oj` を自動的に呼び出すように設定しておくと便利です。
```bash
npx acc config default-test-command "uv run oj t -c 'ruby main.rb'"
```

## 問題一覧

| # | 問題 | アルゴリズム | 解答コード |
| :--- | :--- | :--- | :--- |
| A | [Frog 1](https://atcoder.jp/contests/dp/tasks/dp_a) | 末尾分解, 境界状態圧縮 | [解答済](./ndpc/a/main.rb) |
| B | [Frog 2](https://atcoder.jp/contests/dp/tasks/dp_b) | - | [未解答](./ndpc/b/main.rb) |
| C | [Vacation](https://atcoder.jp/contests/dp/tasks/dp_c) | - | [未解答](./ndpc/c/main.rb) |
| D | [Knapsack 1](https://atcoder.jp/contests/dp/tasks/dp_d) | - | [未解答](./ndpc/d/main.rb) |
| E | [Knapsack 2](https://atcoder.jp/contests/dp/tasks/dp_e) | - | [未解答](./ndpc/e/main.rb) |
| F | [LCS](https://atcoder.jp/contests/dp/tasks/dp_f) | - | [未解答](./ndpc/f/main.rb) |
| G | [Longest Path](https://atcoder.jp/contests/dp/tasks/dp_g) | - | [未解答](./ndpc/g/main.rb) |
| H | [Grid 1](https://atcoder.jp/contests/dp/tasks/dp_h) | - | [未解答](./ndpc/h/main.rb) |
| I | [Coins](https://atcoder.jp/contests/dp/tasks/dp_i) | - | [未解答](./ndpc/i/main.rb) |
| J | [Sushi](https://atcoder.jp/contests/dp/tasks/dp_j) | - | [未解答](./ndpc/j/main.rb) |
| K | [Stones](https://atcoder.jp/contests/dp/tasks/dp_k) | - | [未解答](./ndpc/k/main.rb) |
| L | [Deque](https://atcoder.jp/contests/dp/tasks/dp_l) | - | [未解答](./ndpc/l/main.rb) |
| M | [Candies](https://atcoder.jp/contests/dp/tasks/dp_m) | - | [未解答](./ndpc/m/main.rb) |
| N | [Slimes](https://atcoder.jp/contests/dp/tasks/dp_n) | - | [未解答](./ndpc/n/main.rb) |
| O | [Matching](https://atcoder.jp/contests/dp/tasks/dp_o) | - | [未解答](./ndpc/o/main.rb) |
| P | [Independent Set](https://atcoder.jp/contests/dp/tasks/dp_p) | - | [未解答](./ndpc/p/main.rb) |
| Q | [Flowers](https://atcoder.jp/contests/dp/tasks/dp_q) | - | [未解答](./ndpc/q/main.rb) |
| R | [Walk](https://atcoder.jp/contests/dp/tasks/dp_r) | - | [未解答](./ndpc/r/main.rb) |
| S | [Digit Sum](https://atcoder.jp/contests/dp/tasks/dp_s) | - | [未解答](./ndpc/s/main.rb) |
| T | [Permutation](https://atcoder.jp/contests/dp/tasks/dp_t) | - | [未解答](./ndpc/t/main.rb) |

## ライブラリ

以下の gem が導入されています。
- `ac-library-rb`: AtCoder Library (ACL) の Ruby 移植版
- `numo-narray`: 数値計算ライブラリ
- `sorted_containers`: ソート済みコレクション
- `rbtree`: 赤黒木
- `matrix`: 行列演算
