export GEM_HOME="$HOME/.gem"
export PATH="$HOME/.gem/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi


# If you need to have libpq first in your PATH, run:
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# For compilers to find libpq you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# For pkg-config to find libpq you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

