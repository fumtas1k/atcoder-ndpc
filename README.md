# Next DP Contest (AtCoder) ワークスペース

AtCoderの「Next generation Dynamic Programming Contest」用のRuby開発環境です。

## 環境

- **Ruby**: 3.4.5 (Bundler)
- **Python**: 3.13 (uv)
- **Node.js**: 22.18+ (npm)

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

リポジトリ内のツールを使用する場合は、`npx` または `uv run` を介して実行します。これらはローカルにインストールされているため、グローバルな環境を汚さずに利用可能です。

```bash
# atcoder-cli (acc) の使用
npx acc <command>

# online-judge-tools (oj) の使用
uv run oj <command>
```

## テストの実行

テストは、**各問題のディレクトリ（例: `ndpc/a/`）に移動してから**実行してください。`npm test` を使用すると、自動的に適切な環境でテストが実行されます。

```bash
# 問題ディレクトリへ移動
cd ndpc/a

# テスト実行
npm test

# (補足) npmを経由せずに直接実行する場合
uv run oj t -c "ruby main.rb" -d tests
```

## 問題一覧

| # | 問題 | アルゴリズム | 解答コード |
| :--- | :--- | :--- | :--- |
| A | [Polyomino](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_a) | 末尾分解, 境界状態圧縮 | [解答済](./ndpc/a/main.rb) |
| B | [DAG](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_b) | トポロジカルソート, 経路数え上げ | [解答済](./ndpc/b/main.rb) |
| C | [String](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_c) | 決定性有限オートマトン（DFA）の直積上でのDP | [解答済](./ndpc/c/main.rb) |
| D | [Banknote](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_d) | 桁DP(下から) | [解答済](./ndpc/d/main.rb) |
| E | [Summer Vacation](https://atcoder.jp/contests/ndpc/tasks/ndpc2026_e) | 貪欲法, ダブリング | [解答済](./ndpc/e/main.rb) |
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

## Educational DP Contest

| # | 問題 | アルゴリズム | 解答コード |
| :--- | :--- | :--- | :--- |
| A | [Frog 1](https://atcoder.jp/contests/dp/tasks/dp_a) | - | [解答済](./dp/a/main.rb) |
| B | [Frog 2](https://atcoder.jp/contests/dp/tasks/dp_b) | - | [解答済](./dp/b/main.rb) |
| C | [Vacation](https://atcoder.jp/contests/dp/tasks/dp_c) | - | [解答済](./dp/c/main.rb) |
| D | [Knapsack 1](https://atcoder.jp/contests/dp/tasks/dp_d) | ナップサックDP | [解答済](./dp/d/main.rb) |
| E | [Knapsack 2](https://atcoder.jp/contests/dp/tasks/dp_e) | ナップサックDP（価値を軸にするDP） | [解答済](./dp/e/main.rb) |
| F | [LCS](https://atcoder.jp/contests/dp/tasks/dp_f) | 最長共通部分列（LCS）, DP復元 | [解答済](./dp/f/main.rb) |
| G | [Longest Path](https://atcoder.jp/contests/dp/tasks/dp_g) | トポロジカルソート | [解答済](./dp/g/main.rb) |
| H | [Grid 1](https://atcoder.jp/contests/dp/tasks/dp_h) | - | [解答済](./dp/h/main.rb) |
| I | [Coins](https://atcoder.jp/contests/dp/tasks/dp_i) | 確率DP | [解答済](./dp/i/main.rb) |
| J | [Sushi](https://atcoder.jp/contests/dp/tasks/dp_j) | 期待値DP, メモ化再帰 | [解答済](./dp/j/main.rb) |
| K | [Stones](https://atcoder.jp/contests/dp/tasks/dp_k) | ゲーム必勝法 | [解答済](./dp/k/main.rb) |
| L | [Deque](https://atcoder.jp/contests/dp/tasks/dp_l) | 区間DP, バックトラック法 | [解答済](./dp/l/main.rb) |
| M | [Candies](https://atcoder.jp/contests/dp/tasks/dp_m) | 累積和 | [解答済](./dp/m/main.rb) |
| N | [Slimes](https://atcoder.jp/contests/dp/tasks/dp_n) | 区間DP, 累積和 | [解答済](./dp/n/main.rb) |
| O | [Matching](https://atcoder.jp/contests/dp/tasks/dp_o) | ビットDP | [解答済](./dp/o/main.rb) |
| P | [Independent Set](https://atcoder.jp/contests/dp/tasks/dp_p) | 木DP | [解答済](./dp/p/main.rb) |
| Q | [Flowers](https://atcoder.jp/contests/dp/tasks/dp_q) | セグメント木 | [解答済](./dp/q/main.rb) |
| R | [Walk](https://atcoder.jp/contests/dp/tasks/dp_r) | - | [未解答](./dp/r/main.rb) |
| S | [Digit Sum](https://atcoder.jp/contests/dp/tasks/dp_s) | 桁DP | [解答済](./dp/s/main.rb) |
| T | [Permutation](https://atcoder.jp/contests/dp/tasks/dp_t) | 挿入DP | [解答済](./dp/t/main.rb) |
| U | [Grouping](https://atcoder.jp/contests/dp/tasks/dp_u) | ビットDP | [解答済](./dp/u/main.rb) |
| V | [Subtree](https://atcoder.jp/contests/dp/tasks/dp_v) | 全方位木DP, 累積積 | [解答済](./dp/v/main.rb) |
| W | [Intervals](https://atcoder.jp/contests/dp/tasks/dp_w) | - | [未解答](./dp/w/main.rb) |
| X | [Tower](https://atcoder.jp/contests/dp/tasks/dp_x) | - | [解答済](./dp/x/main.rb) |
| Y | [Grid 2](https://atcoder.jp/contests/dp/tasks/dp_y) | 包除原理 | [解答済](./dp/y/main.rb) |
| Z | [Frog 3](https://atcoder.jp/contests/dp/tasks/dp_z) | Convex Hull Trick | [解答済](./dp/z/main.rb) |

## Typical DP Contest

| # | 問題 | アルゴリズム | 解答コード |
| :--- | :--- | :--- | :--- |
| A | [コンテスト](https://atcoder.jp/contests/tdpc/tasks/tdpc_contest) | - | [解答済](./tdpc/a/main.rb) |
| B | [ゲーム](https://atcoder.jp/contests/tdpc/tasks/tdpc_game) | バックトラック法 | [解答済](./tdpc/b/main.rb) |
| C | [トーナメント](https://atcoder.jp/contests/tdpc/tasks/tdpc_tournament) | - | [未解答](./tdpc/c/main.rb) |
| D | [サイコロ](https://atcoder.jp/contests/tdpc/tasks/tdpc_dice) | - | [解答済](./tdpc/d/main.rb) |
| E | [数](https://atcoder.jp/contests/tdpc/tasks/tdpc_number) | 桁DP | [解答済](./tdpc/e/main.rb) |
| F | [準急](https://atcoder.jp/contests/tdpc/tasks/tdpc_semiexp) | - | [解答済](./tdpc/f/main.rb) |
| G | [辞書順](https://atcoder.jp/contests/tdpc/tasks/tdpc_lexicographical) | - | [解答済](./tdpc/g/main.rb) |
| H | [ナップサック](https://atcoder.jp/contests/tdpc/tasks/tdpc_knapsack) | - | [未解答](./tdpc/h/main.rb) |
| I | [イウィ](https://atcoder.jp/contests/tdpc/tasks/tdpc_iwi) | - | [未解答](./tdpc/i/main.rb) |
| J | [ボール](https://atcoder.jp/contests/tdpc/tasks/tdpc_ball) | - | [未解答](./tdpc/j/main.rb) |
| K | [ターゲット](https://atcoder.jp/contests/tdpc/tasks/tdpc_target) | - | [未解答](./tdpc/k/main.rb) |
| L | [猫](https://atcoder.jp/contests/tdpc/tasks/tdpc_cat) | - | [未解答](./tdpc/l/main.rb) |
| M | [ゲーム2](https://atcoder.jp/contests/tdpc/tasks/tdpc_game2) | - | [未解答](./tdpc/m/main.rb) |
| N | [木](https://atcoder.jp/contests/tdpc/tasks/tdpc_tree) | - | [未解答](./tdpc/n/main.rb) |
| O | [文字列](https://atcoder.jp/contests/tdpc/tasks/tdpc_string) | - | [未解答](./tdpc/o/main.rb) |
| P | [畳](https://atcoder.jp/contests/tdpc/tasks/tdpc_tiling) | - | [未解答](./tdpc/p/main.rb) |
| Q | [グラフ](https://atcoder.jp/contests/tdpc/tasks/tdpc_graph) | - | [未解答](./tdpc/q/main.rb) |
| R | [派閥](https://atcoder.jp/contests/tdpc/tasks/tdpc_group) | - | [未解答](./tdpc/r/main.rb) |
| S | [桁](https://atcoder.jp/contests/tdpc/tasks/tdpc_digits) | - | [未解答](./tdpc/s/main.rb) |
| T | [フィボナッチ](https://atcoder.jp/contests/tdpc/tasks/tdpc_fibonacci) | - | [未解答](./tdpc/t/main.rb) |

## ライブラリ

以下の gem が導入されています。
- `ac-library-rb`: AtCoder Library (ACL) の Ruby 移植版
- `numo-narray`: 数値計算ライブラリ
- `sorted_containers`: ソート済みコレクション
- `rbtree`: 赤黒木
- `matrix`: 行列演算
