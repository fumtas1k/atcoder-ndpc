#!/usr/bin/env bash
# Dev Container 生成時のリポジトリ固有セットアップ。再実行しても安全。
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"

# 名前付き volume は root 所有で作成される場合があるため、vscode が利用できるようにする。
sudo chown -R vscode:vscode "$HOME/.local" "$HOME/.config" "$HOME/.claude" "$HOME/.codex"

# Claude Code feature のグローバル領域を vscode 所有にして、自動更新を可能にする。
npm_prefix="$(npm config get prefix)"
sudo chown -R vscode:vscode "$npm_prefix/lib/node_modules" "$npm_prefix/bin"

# Codex CLI をグローバルに導入する。認証・設定は $HOME/.codex の名前付き volume に残る。
if ! command -v codex >/dev/null 2>&1; then
  npm install --global @openai/codex
fi

# acc の設定と Ruby テンプレートを配置する。session.json（認証情報）は維持される。
mkdir -p "$HOME/.config/atcoder-cli-nodejs"
cp -r "$here/acc-config/." "$HOME/.config/atcoder-cli-nodejs/"

# シェルヘルパーを bash で有効にする。
source_line="source \"$here/shell-aliases.sh\""
if ! grep -qF "$source_line" "$HOME/.bashrc" 2>/dev/null; then
  printf '\n# AtCoder shell helpers (devcontainer)\n%s\n' "$source_line" >> "$HOME/.bashrc"
fi
