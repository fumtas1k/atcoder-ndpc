# Dev Container（AtCoder 環境）

このリポジトリを VS Code の Dev Containers 拡張、GitHub Codespaces、または
`devcontainer` CLI で開くための定義です。`atcoder-novisteps` と同じ機能を基に、
このリポジトリの依存関係に合わせています。

## 含まれるもの

- Ruby 3.4.5、Node.js 22.18.0
- `acc` 2.2.0 と `oj` 11.5.1
- `ac-library-rb`、`rbtree`、`numo-narray`、`sorted_containers`、Ruby LSP
- Claude Code CLI、Codex CLI、GitHub CLI
- `atcr`、`rtest`、`ropen` のシェルヘルパー

Ruby の gem はイメージ内に導入されるため、問題コードはジャッジ環境と同様に
`ruby main.rb` で実行できます。ホスト環境で `acc` を使う場合のみ `npm install` を実行してください。

## AtCoder へのログイン

AtCoder の Cloudflare チェックにより、コンテナ内の `oj login` / `acc login` が通らない
場合があります。普段のブラウザで AtCoder にログインして `REVEL_SESSION` Cookie を取得し、
コンテナ内で次を実行してください。

```sh
set-atcoder-session
oj login --check https://atcoder.jp/
```

認証情報は名前付き volume に保存されるため、コンテナをリビルドしても維持されます。

## Codex へのログイン

コンテナをリビルドした後、ターミナルで `codex` を実行し、表示される案内に従って
ログインしてください。Codex の認証情報と設定は名前付き volume に保存されるため、
コンテナをリビルドしても維持されます。

## 利用例

```sh
acc new abc999
cd abc999/a
rtest
acc submit main.rb
```
