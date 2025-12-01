# Path to your oh-my-zsh installation.
export ZSH="/Users/ryoohshima/.oh-my-zsh"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
setopt nonomatch

# ------------------------------------------------------------------------------------------------------
# プロンプト (Starship)
# ------------------------------------------------------------------------------------------------------

eval "$(starship init zsh)"


# ------------------------------------------------------------------------------------------------------
# エイリアス
# ------------------------------------------------------------------------------------------------------

## change directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

## git
alias ga='git add'
alias gcom='git commit'
alias gpl='git pull'
alias gpsh='git push'
alias gch='git checkout'
alias gf='git fetch'
alias gb='git branch'
alias gs='git status'
alias gst='git stash'
alias gsta='git stash apply stash@{0}'
alias gr='git reset'

## short cut key
alias dockerStop='docker stop $(docker ps -a -q)'
alias grep='(){grep -rI $1 $2 --exclude-dir={node_modules,dist,SMS,.vim,.git,.next,image,images,img,assets} --exclude={package-lock.json,theme.liquid,gift_card.liquid,password.liquid,est.js,*.min.js}}'
alias sed='(){grep -rl "$1" ./* | xargs sed -i "" -e "s/$1/$2/g"}' 
alias code='open -a Visual\ Studio\ Code'
alias claude="/Users/ryoohshima/.claude/local/claude"

## screen
alias screen='WEEK=`LANG=C date "+%a"` screen'


# ------------------------------------------------------------------------------------------------------
# 関数・ツール設定
# ------------------------------------------------------------------------------------------------------

# タブ間履歴共有
function share_history {
  history -a
  history -c
  history -r
}


# ------------------------------------------------------------------------------------------------------
# パス (PATH) 設定
# ------------------------------------------------------------------------------------------------------

# 一般的なパス
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/themekit/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/ryoohshima/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ------------------------------------------------------------------------------------------------------
# バージョン管理 (mise)
# ------------------------------------------------------------------------------------------------------

# Node.js, Python, Ruby, Go などを一括管理
eval "$(~/.local/bin/mise activate zsh)"
