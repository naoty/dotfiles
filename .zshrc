# zsh-completions
if [ -d "$(brew --prefix)/share/zsh-completions" ]; then
  fpath=("$(brew --prefix)/share/zsh-completions" $fpath)
fi

# ローカル設定ファイル
if [ -f "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi

# 補完を有効にする
autoload -U compinit
compinit

