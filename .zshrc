# メモリに確保する履歴の件数
export HISTSIZE=1000

# ファイルに保存される履歴の件数
export SAVEHIST=10000

# 履歴を共有する
setopt share_history

# 重複する履歴を保存しない
setopt hist_ignore_all_dups

# ビープ音をオフにする
setopt no_beep

# Emacsキーバインディングを有効にする
bindkey -e

# ローカルスクリプト
if [ -f "$HOME/.zshrc.local" ]; then
  source $HOME/.zshrc.local
fi
