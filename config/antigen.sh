######################################################
################### << ANTIGEN >> ####################
######################################################

export ANTIGEN_AUTO_CONFIG=true

# export ADOTDIR="$HOME/.config/.antigen"
# export ANTIGEN_BUNDLES="$HOME/.config/.antigen/bundles"

typeset -a ANTIGEN_CHECK_FILES=($HOME/.config/zsh/.antigenrc)

# ADOTDIR — This directory is used to store all the repo clones, your bundles, themes, caches and everything else Antigen requires to run smoothly. Defaults to $HOME/.antigen.
# ANTIGEN_LOG — Use this configuration to define where Antigen should store log information. By default logging is disabled. Use ANTIGEN_LOG=/path/to/antigen.log to activate it, useful when debugging failing bundle installs. Customizations
# ANTIGEN_CACHE — This configures the path to the cache init file, where Antigen stores it's cached bundles. Defaults to $ADOTDIR/init.zsh. Set to false to disable caching mechanism.
# ANTIGEN_COMPDUMP — Use this configuration to define where zsh's completion system should store completion's dump file. Defaults to $ADOTDIR/.zcompdump.
# ANTIGEN_BUNDLES — This directory is used to store bundle clones. Defaults to $ADOTDIR/bundles.
# ANTIGEN_LOCK — Use this configuration to define where Antigen should create .lock files.
# ANTIGEN_DEBUG_LOG — On develop mode define the debug log path. Optimizations
# ANTIGEN_AUTO_CONFIG — This configuration determines if Antigen should auto detect configuration files to check for changes (see ANTIGEN_CHECK_FILES). Default true.
# ANTIGEN_CHECK_FILES — Use this configuration to tell Antigen which files to check for configuration changes, this is to avoid doing antigen-reset manually. It's auto-determined if ANTIGEN_AUTO_CONFIG is enabled (default), otherwise use typeset -a ANTIGEN_CHECK_FILES=(/path/to/.antigenrc /path/to/.zshrc /path/to/other).
# ANTIGEN_CLONE_ENV, ANTIGEN_CLONE_OPTS, ANTIGEN_SUBMODULE_OPTS — Use to control how Antigen perform cloning repositories and fetching submodules from bundles. These are flags for git-clone and git-submodule commands, respectivelly.Misc.
# ANTIGEN_DEFAULT_REPO_URL — This is the default repository url that is used for bundle commands. The default value is robbyrussell's oh-my-zsh repo, but you can set this to the fork url of your own fork.
# ANTIGEN_PREZTO_REPO_URL — This is the repository url for cloning and updating Prezto. The default value is sorin's prezto repository (sorin-ionescu/prezto).
