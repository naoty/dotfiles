# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# vcs_infoを使ってプロンプトにGitの情報を表示する
autoload -U vcs_info
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats "[%b|%a]"
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"

precmd() { vcs_info }

# プロンプト
setopt prompt_subst
PROMPT='%1d${vcs_info_msg_0_}%# '

# 履歴を共有する
setopt share_history

# 重複する履歴を保存しない
setopt hist_ignore_all_dups

# emacsモードを有効にする
bindkey -e

# ローカル設定ファイル
if [ -f "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi

# ローカル補完ファイル
if [ -d "$HOME/.zsh/completions" ]; then
  fpath=("$HOME/.zsh/completions" $fpath)
fi

# .zsh以下をロードする
if [ -d "$HOME/.zsh" ]; then
  for f in $(ls $HOME/.zsh/**/*.zsh); do
    source $f
  done
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
