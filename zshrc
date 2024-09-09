ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="simple"

# Add ruby version on prompt (float right)
RPS1='[$(ruby_prompt_info)]$EPS1'

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search asdf fzf)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"


 export PATH=~/.npm-global/bin:$PATH
 
# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export PATH="$PATH:$HOME/bin"

export FLYCTL_INSTALL="/home/gkosmo/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


export PATH="/home/gkosmo/.local/share/solana/install/active_release/bin:$PATH"
export PATH="/home/gkosmo/.local/bin:$PATH"
# bun completions
[ -s "/home/gkosmo/.bun/_bun" ] && source "/home/gkosmo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

export PATH=$PATH:$JAVA_HOME/bin

export REACT_EDITOR=code

export FZF_DEFAULT_COMMAND='ag --hidden -g ""'export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
