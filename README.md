# Next DP Contest (AtCoder) ワークスペース

AtCoderの「Next generation Dynamic Programming Contest」用のRuby開発環境です。

## 環境

- **Ruby**: 3.4.5
- **Package Manager**: Bundler
- **Tools**: `atcoder-cli` (acc), `online-judge-tools` (oj) を想定

## 問題一覧

| # | 問題 | アルゴリズム | 解答コード |
| :--- | :--- | :--- | :--- |
| A | [Frog 1](https://atcoder.jp/contests/dp/tasks/dp_a) | 末尾分解, 境界状態圧縮 | [解答済](./a/main.rb) |
| B | [Frog 2](https://atcoder.jp/contests/dp/tasks/dp_b) | - | [未解答](./b/main.rb) |
| C | [Vacation](https://atcoder.jp/contests/dp/tasks/dp_c) | - | [未解答](./c/main.rb) |
| D | [Knapsack 1](https://atcoder.jp/contests/dp/tasks/dp_d) | - | [未解答](./d/main.rb) |
| E | [Knapsack 2](https://atcoder.jp/contests/dp/tasks/dp_e) | - | [未解答](./e/main.rb) |
| F | [LCS](https://atcoder.jp/contests/dp/tasks/dp_f) | - | [未解答](./f/main.rb) |
| G | [Longest Path](https://atcoder.jp/contests/dp/tasks/dp_g) | - | [未解答](./g/main.rb) |
| H | [Grid 1](https://atcoder.jp/contests/dp/tasks/dp_h) | - | [未解答](./h/main.rb) |
| I | [Coins](https://atcoder.jp/contests/dp/tasks/dp_i) | - | [未解答](./i/main.rb) |
| J | [Sushi](https://atcoder.jp/contests/dp/tasks/dp_j) | - | [未解答](./j/main.rb) |
| K | [Stones](https://atcoder.jp/contests/dp/tasks/dp_k) | - | [未解答](./k/main.rb) |
| L | [Deque](https://atcoder.jp/contests/dp/tasks/dp_l) | - | [未解答](./l/main.rb) |
| M | [Candies](https://atcoder.jp/contests/dp/tasks/dp_m) | - | [未解答](./m/main.rb) |
| N | [Slimes](https://atcoder.jp/contests/dp/tasks/dp_n) | - | [未解答](./n/main.rb) |
| O | [Matching](https://atcoder.jp/contests/dp/tasks/dp_o) | - | [未解答](./o/main.rb) |
| P | [Independent Set](https://atcoder.jp/contests/dp/tasks/dp_p) | - | [未解答](./p/main.rb) |
| Q | [Flowers](https://atcoder.jp/contests/dp/tasks/dp_q) | - | [未解答](./q/main.rb) |
| R | [Walk](https://atcoder.jp/contests/dp/tasks/dp_r) | - | [未解答](./r/main.rb) |
| S | [Digit Sum](https://atcoder.jp/contests/dp/tasks/dp_s) | - | [未解答](./s/main.rb) |
| T | [Permutation](https://atcoder.jp/contests/dp/tasks/dp_t) | - | [未解答](./t/main.rb) |

## セットアップ

依存ライブラリをインストールします。

```bash
bundle install
```

## 使い方

各ディレクトリ（`a/`, `b/`, ...）には各問題の解答コードを配置します。

### 実行とテスト

通常、各ディレクトリ内で以下のように実行・テストを行います。

```bash
# 直接実行
ruby main.rb < input.txt

# online-judge-tools を使用したテスト（例）
oj t -c "ruby main.rb"
```

## ライブラリ

以下の gem が導入されています。
- `ac-library-rb`: AtCoder Library (ACL) の Ruby 移植版
- `numo-narray`: 数値計算ライブラリ
- `sorted_containers`: ソート済みコレクション
- `rbtree`: 赤黒木
- `matrix`: 行列演算
