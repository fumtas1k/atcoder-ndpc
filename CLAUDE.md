# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 言語（大前提）

**ユーザーとのやり取りは常に日本語で行う。** 説明・提案・レビュー・要約などユーザー向けの
出力はすべて日本語で書くこと（コード・コミットメッセージ・識別子など、日本語が不適切な箇所は除く）。

## このリポジトリについて

AtCoder の DP 系コンテストを Ruby で解いた解答置き場。アプリケーションのソースコードではなく、
1問1ディレクトリの競技プログラミング解答集。対象は3つのコンテストセット:

- `dp/` — [Educational DP Contest](https://atcoder.jp/contests/dp)（EDPC）
- `ndpc/` — [Next generation Dynamic Programming Contest](https://atcoder.jp/contests/ndpc)（NDPC）
- `tdpc/` — [Typical DP Contest](https://atcoder.jp/contests/tdpc)（TDPC）

進捗は `README.md` の一覧表（問題名 / アルゴリズム / 回答リンク / 解答済・未解答）で管理している。

## Claude Code の役割

**問題を解くのは人間**。Claude Code は基本的に、人間が書いた解答（`main.rb`）を
**レビューし、改善する**役割。ゼロから解答を書くのがメインではない。

- 主なタスク: バグ・計算量（TLE/MLE リスク）の指摘、より速い/簡潔な書き方の提案、`ac-library-rb` で置き換えられる箇所の指摘、Ruby/CRuby 特有の落とし穴の指摘。
- Ruby コードをレビュー・改善・デバッグ・助言するときは、たとえ「自明に見えても」必ず **`atcoder-ruby` スキル** に従う（CRuby の計算量・イディオム・`ac-library-rb` の使い方が検証済みでまとまっている。`Array#shift`/`#unshift` の計算量など Claude が間違えやすい点も網羅）。
- 求められない限り、人間の解答を勝手に全面書き換えしない。まず指摘・提案してから直す。

### レビュー時は問題文と解説を必ず確認する

コードだけを見て推測でレビューしない。**まず問題文に当たり、次に公式解説（editorial）を辿って**、
「解答がその問題を正しく解いているか」「想定解法・想定計算量と合っているか」を確認したうえで指摘する。

問題 URL はコンテストごとにタスク ID の付け方が違うため、**`README.md` の一覧表の直リンクを使うのが確実**:

- EDPC (`dp/`): `https://atcoder.jp/contests/dp/tasks/dp_<problem>`（例: `dp/a/` → `.../tasks/dp_a`）
- NDPC (`ndpc/`): `https://atcoder.jp/contests/ndpc/tasks/ndpc2026_<problem>`（例: `ndpc/a/` → `.../tasks/ndpc2026_a`）
- TDPC (`tdpc/`): タスク ID が問題ラベルではなく **名前ベース**（例: `tdpc/e/` → `.../tasks/tdpc_number`）。
  ディレクトリ名からは導けないので `README.md` のリンクを参照する。

解説は、上の問題 URL の末尾に `/editorial` を付けたページ（`.../tasks/<taskid>/editorial`）は
**解説へのリンク一覧**でしかない。ここで終わらず、そこに載っている実際の解説記事
`https://atcoder.jp/contests/<contest>/editorial/<id>` まで辿って本文を読むこと。
日本語・英語（`en_translator` 版）が別記事なので、必要な方を選ぶ。
（コンテスト全体の一覧は `https://atcoder.jp/contests/<contest>/editorial`。）

`WebFetch` でこれらを取得して、制約（`N` の上限など）・入出力形式・想定計算量を確認する。
確認できた制約と解法をレビュー結果の根拠として示す。

## ディレクトリ構成

```
<contest>/<problem>/
  main.rb          # 解答（ファイル名は必ず main.rb）
  tests/           # acc が DL したサンプル
    sample-1.in / sample-1.out / ...
```

- `<contest>` は `dp` / `ndpc` / `tdpc` のいずれか。`<problem>` は小文字のタスクラベル（`a`, `e` など）。
- 例: `dp/a/main.rb`、`ndpc/c/main.rb`、`tdpc/e/main.rb`。
- 解答ファイル名は `<problem>.rb` ではなく必ず **`main.rb`**（`acc` テンプレート・`rtest`・`ropen`・`npm test` すべて `main.rb` 前提）。

## 開発ワークフロー（Dev Container 内）

環境は `.devcontainer/` の Dev Container で再現する。詳細は `.devcontainer/README.md`。
`acc`(atcoder-cli) / `oj`(online-judge-tools) / Ruby 3.4.5 と競プロ用 gem
（グローバル導入、Bundler 不要）が入っており、
`.devcontainer/shell-aliases.sh` の関数が `~/.bashrc` から読み込まれている。

- **問題セットアップ**: `atcr <contest> <problem>`
  （`acc new <contest>` でテスト DL → `<contest>/<problem>` へ移動 → `main.rb` を開く）
- **サンプルテスト**: 問題ディレクトリで `rtest`
  （= `oj t -c "ruby main.rb" -d tests -N`。`-N` で末尾改行差を無視）。
  `cd <contest>/<problem> && npm test` でも実行できる（`package.json` の test スクリプト。ただし `-N` は付かないので末尾改行差は無視されない）。
- **単体実行**: `ruby main.rb < <contest>/<problem>/tests/sample-1.in`
- **提出**: `acc submit main.rb`（または `oj submit`）

`acc new` は要ログイン。認証は Cloudflare 対策で `oj/acc login` が通らないため、
ブラウザで取得した `REVEL_SESSION` Cookie を `set-atcoder-session` コマンド
（atcoder-toolkit feature 同梱）で流し込む（`.devcontainer/README.md` 参照）。

## 解答の規約（レビュー時の前提）

人間の解答は `acc new` の Ruby テンプレート（`.devcontainer/acc-config/ruby/main.rb`）を雛形にしている。
レビュー・改善時はこの慣習を前提にする:

- 先頭で `ac-library-rb`（dsu / segtree / priority_queue / fenwick_tree）・`rbtree`・`set` を require し `include AcLibraryRb`
- 定義済みヘルパー: `inside?(r, c, h, w)`（グリッド範囲判定）、`bsearch(ng, ok) { ... }`（二分探索）
- 定数: `MOD`（既定 `10**9+7`、`998244353` はコメントアウトで用意。DP 系は `998244353` を使う問題も多い）、`INF = 1 << 60`
- 入力は `gets` / `gets.split.map(&:to_i)` 系。既存解答（`ndpc/c/main.rb`、`dp/a/main.rb` など）のスタイルに合わせる（ファイル冒頭に問題ラベル・解法をコメント）。

利用可能な gem は `.devcontainer/devcontainer.json` の atcoder-ruby feature の `gems`
オプションに固定: `ac-library-rb`, `rbtree`, `numo-narray`, `sorted_containers`（グローバル導入、`bundle exec` 不要）。
自前でデータ構造を書く前に `ac-library-rb` に無いか確認する（`atcoder-ruby` スキル参照）。
順序付き集合/多重集合が要る場合は `sorted_containers` gem（`SortedSet` / `SortedList`）が使える点も、
スキルの `references/sorted-set.md`（自作の平方分割版）と合わせて検討する。

## README.md の更新

`README.md` はコンテストごとの問題一覧表（`# / 問題 / アルゴリズム / 解答コード`）。
問題を解いたら該当行の「アルゴリズム」に解法を、「解答コード」を `[未解答]` から
`[解答済](./<contest>/<problem>/main.rb)` に更新する。
これは進捗管理表なので、解答を追加・更新したら合わせて反映すること。
