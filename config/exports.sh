# XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# GROOVY AND APPENGINE
export GROOVY_HOME="/usr/local/opt/groovy/libexec"

# REDIRECT HOMEBREW (MAC)
# export PATH="/usr/local/sbin:$PATH"

# ZSH DIR
# export ZSH_COMPDUMP=$HOME/.config/zsh/.zcompdump
# ZSH COMP - Save the location of the current completion dump file.
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$HOME/.config/zsh/.zsh_history"

# USER CONFIGURATION
# export MANPATH="/usr/local/man:$MANPATH"

# SSH
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# ANTIGEN
export ANTIGEN_BUNDLE_RECORD="$HOME/.antigen/bundles"

# JAVA MAC
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-14.0.2.jdk/Contents/Home
# export PATH=$PATH:$JAVA_HOME/bin

# JAVA SDK MAN
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# GRADLE
export GRADLE_HOME=/opt/gradle/latest
export PATH=${GRADLE_HOME}/bin:${PATH}

# PYTHON AND PIP
# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

# ANACONDA3
export PATH="$HOME/anaconda3/bin/:$PATH"

# PDF GETTEXT SOURCE
export PATH="/usr/local/opt/gettext/bin:$PATH"

# LANG
export LANG=en_US.UTF-8

# NPM
export NPM_HOME=$HOME/.nvm/versions/node/v15.14.0/lib/node_modules
export PATH=$PATH:$NPM_HOME

# NVM bundle
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# YARN
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# export PATH="/usr/local/opt/libxml2/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/qt/bin:$PATH"

# DEFAULT APPS
export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"

# BROWSER
export BROWSER="chrome"

# PNPM MAC
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# LVIM
# export PATH=$PATH:$HOME/.local/bin

# RBENV
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# SWIFT ENV
# if which swiftenv >/dev/null; then eval "$(swiftenv init -)"; fi
# export SWIFTENV_ROOT="$HOME/.swiftenv"
# export PATH="$SWIFTENV_ROOT/bin:$PATH"

# RUBY
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# export RB_USER_INSTALL='true'
# export GEM_HOME=$HOME/.gem
# export PATH=$HOME/.gem/bin:$PATH

# GO
# export PATH=$PATH:/usr/local/go/bin

# JAVA LINUX
# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# export PATH=$PATH:$JAVA_HOME/bin
