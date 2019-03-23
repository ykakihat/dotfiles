# パス

# 日本語を使用
export LANG=ja_JP.UTF-8

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit

# 他のターミナルとヒストリーを共有
setopt share_history

# cdの設定
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt list_packed
setopt nolistbeep
setopt prompt_subst
watch="all"
cdpath=(... ~ ~/git)

# ヒストリー
HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_all_dups
setopt share_history
setopt extended_history

# プロンプト
autoload -Uz vcs_info
TERM=xterm-256color
local GRAY=$'%{\e[1;30m%}'
local WHITEY=$'%{\e[1;37m%}'
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
PROMPT=$GREEN"${USER}@${HOSTNAME} [${vcs_info_msg_0_}$GREEN]
$BLUE%(!.#.$) $WHITE"
RPROMPT=$BLUE"[%~]"$WHITE

# pecoでhistory検索
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

