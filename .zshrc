# zmodload zsh/zprof

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

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
 
# starship
eval "$(starship init zsh)"


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/bin:/opt/homebrew/bin:/Applications/Emacs.app/Contents/MacOS/bin:$PATH
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# If you need to have libpq first in your PATH, run:
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# For compilers to find libpq you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# For pkg-config to find libpq you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"

# Set up fzf key bindings
eval "$(fzf --zsh)"

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}' --no-height"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"


_fzf_comprun() {
    local command=$1
    shift

    case "$command" in
        cd)            fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
        export|unset)  fzf --preview "eval 'echo \$' {}"   "$@" ;;
        ssh)           fzf --preview 'dig {}'               "$@" ;;
        *)             fzf --preview "--preview 'bat -n --color=always --line-range :500 {}'" "$@" ;;
    esac

}

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Better history
# HISTFILE=$H0ME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt HIST_IGNORE_SPACE
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(
# 	direnv
# 	docker
# 	fzf
# 	# git
# 	keychain
# 	# kubectl
# 	poetry
# 	ssh-agent
# 	terraform
# 	# zoxide
# )



# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Source zsh completion system
fpath=(~/.zfunc /opt/homebrew/share/zsh/site-functions $fpath)

autoload -Uz compinit
zinit wait lucid blockf atload"compinit -C" for zsh-users/zsh-completions

alias zsh-rebuild-completions='rm -f ~/.zcompdump* && compinit -i'

# brew install zsh-autosuggestions zsh-syntax-highlighting

# activate the autosuggestions, add the following at the end of your .zshrc:
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

# activate the syntax highlighting, add the following at the end of your .zshrc:
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# eza
alias "ls=eza --hyperlink --icons=always --git --no-filesize --no-time --no-user --no-permissions"
alias delta="delta --hyperlinks --hyperlinks-file-link-format='file://{path}#{line}'"
alias rg='rg --hyperlink-format=kitty'

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Function to run fabric-ai with a prompt and pipe output to bat as markdown
ai() {
  fabric-ai "$@" | bat -l markdown
}

export EDITOR="nvim" # Or "vi", "nvim", "nano", etc.
export LESSOPEN="| /usr/bin/lesspipe %s" # Common for many systems (Linux/macOS)


# using bat for MAN pages to add colors
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

PATH="/Users/rwilson/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/rwilson/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/rwilson/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/rwilson/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/rwilson/perl5"; export PERL_MM_OPT;

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# Faster node version manager
# eval "$(fnm env --use-on-cd --shell zsh)"

# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init --path)"
# fi

export GEM_HOME="$HOME/.gem"
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(mise activate zsh)"
#
#
# # Step 2: Create an alias for managing it easily
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# zprof

# pnpm
export PNPM_HOME="/Users/rwilson/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
