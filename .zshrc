# プロンプト
PROMPT="%2/ %# "

# 履歴を共有する
setopt share_history

# 重複する履歴を保存しない
setopt hist_ignore_all_dups

# zsh-completions
if [ -d "$(brew --prefix)/share/zsh-completions" ]; then
  fpath=("$(brew --prefix)/share/zsh-completions" $fpath)
fi

# ローカル設定ファイル
if [ -f "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi

# ローカル補完ファイル
if [ -d "$HOME/.zsh/completions" ]; then
  fpath=("$HOME/.zsh/completions" $fpath)
fi

# ローカルキーバインディング
if [ -d "$HOME/.zsh/keybinds" ]; then
  for f in $(ls $HOME/.zsh/keybinds/*.zsh); do
    source $f
  done
fi

# 補完を有効にする
autoload -U compinit && compinit

