# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Ruby rbenv
export GEM_HOME="$HOME/.gem"
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Python pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# If you need to have libpq first in your PATH, run:
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# For compilers to find libpq you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# For pkg-config to find libpq you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# auto-load direnv
eval "$(direnv hook bash)"

# directory for virtualenvs created using virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true

# if [[ -r ~/.pyenv/shims/virtualenvwrapper.sh ]]; then
#     source ~/.pyenv/shims/virtualenvwrapper.sh
# else
#     echo "WARNING: Can't find virtualenvwrapper.sh"
# fi

eval "$(starship init bash)"
