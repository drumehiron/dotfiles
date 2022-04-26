### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load the pure theme, with zsh-async library that's bundled with it.
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

# シンタックスハイライト
zinit light zsh-users/zsh-syntax-highlighting
# 入力補完
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
# コマンド履歴を検索
zinit light zdharma/history-search-multi-word

# alias
alias ls="gls --color=auto"
alias la="gls -a --color=auto"

# vim:set ft=zsh:
eval "$(pyenv init -)"

export PIPENV_VENV_IN_PROJECT=true

export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"

alias chrome="open -a 'Google Chrome'"