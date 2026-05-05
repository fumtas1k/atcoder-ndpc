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
| A | [Polyomino](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_a) | - | [解答済](./ndpc/a/main.rb) |
| B | [DAG](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_b) | - | [未解答](./ndpc/b/main.rb) |
| C | [String](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_c) | - | [未解答](./ndpc/c/main.rb) |
| D | [Banknote](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_d) | - | [未解答](./ndpc/d/main.rb) |
| E | [Summer Vacation](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_e) | - | [未解答](./ndpc/e/main.rb) |
| F | [Set](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_f) | - | [未解答](./ndpc/f/main.rb) |
| G | [Mouth](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_g) | - | [未解答](./ndpc/g/main.rb) |
| H | [Coin](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_h) | - | [未解答](./ndpc/h/main.rb) |
| I | [Update Positions](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_i) | - | [未解答](./ndpc/i/main.rb) |
| J | [Number and Total](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_j) | - | [未解答](./ndpc/j/main.rb) |
| K | [Addition and Subtraction](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_k) | - | [未解答](./ndpc/k/main.rb) |
| L | [LCM](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_l) | - | [未解答](./ndpc/l/main.rb) |
| M | [Numeral](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_m) | - | [未解答](./ndpc/m/main.rb) |
| N | [Knapsack](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_n) | - | [未解答](./ndpc/n/main.rb) |
| O | [Game](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_o) | - | [未解答](./ndpc/o/main.rb) |
| P | [LIS](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_p) | - | [未解答](./ndpc/p/main.rb) |
| Q | [Union of Intervals](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_q) | - | [未解答](./ndpc/q/main.rb) |
| R | [Triples](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_r) | - | [未解答](./ndpc/r/main.rb) |
| S | [Two doors](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_s) | - | [未解答](./ndpc/s/main.rb) |
| T | [Independent Set](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_t) | - | [未解答](./ndpc/t/main.rb) |

## ライブラリ

以下の gem が導入されています。
- `ac-library-rb`: AtCoder Library (ACL) の Ruby 移植版
- `numo-narray`: 数値計算ライブラリ
- `sorted_containers`: ソート済みコレクション
- `rbtree`: 赤黒木
- `matrix`: 行列演算
