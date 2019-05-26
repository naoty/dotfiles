# メモリに確保する履歴の件数
export HISTSIZE=1000

export SAVEHIST=100

# 履歴を共有する
setopt share_history

# 重複する履歴を保存しない
setopt hist_ignore_all_dups

# ビープ音をオフにする
setopt no_beep

# Emacsキーバインディングを有効にする
bindkey -e

# rbenv
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

# direnv
eval "$(direnv hook zsh)"

# google cloud sdk
source $HOME/google-cloud-sdk/path.zsh.inc
source $HOME/google-cloud-sdk/completion.zsh.inc

# zplug
source $ZPLUG_HOME/init.zsh

## テーマ
zplug naoty/prompt, as:theme

## fzf
zplug naoty/fzf-functions

## 補完
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-completions
zplug zsh-users/zsh-history-substring-search

## シンタックスハイライト
zplug zsh-users/zsh-syntax-highlighting

## プラグインのロード
zplug load

# キーバインディング
bindkey '^g' fzf_cd_ghq_list
bindkey '^b' fzf_git_checkout
bindkey '^r' fzf_history

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# ローカルスクリプト
if [ -f "$HOME/.zshrc.local" ]; then
  source $HOME/.zshrc.local
fi
