export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="common"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# C# Path
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

. "$HOME/.asdf/asdf.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kristopher/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kristopher/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kristopher/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kristopher/google-cloud-sdk/completion.zsh.inc'; fi

# Neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# Zig
export PATH="$HOME/zig-x86_64-linux-0.15.2:$PATH"

# chess aliases
alias current="cd ~/Documents/code/chess"
alias c="current;bin/c"
alias up="current;FRONTEND=1 bin/mutagen up -d"
alias down="current;bin/mutagen down"
# cloudflare_workers aliases
alias query="npx wrangler d1 execute DB --local --command"
alias query_remote="npx wrangler d1 execute DB --remote --command"
alias json_pretty="python -m json.tool"

# add Pulumi to the PATH
export PATH=$PATH:/home/kristopher/.pulumi/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/home/kristopher/.bun/_bun" ] && source "/home/kristopher/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# GNS completions
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit

# GNS - Chess.com repos root
export MULTI_REPO_ROOT="/home/kristopher/Documents/code"
