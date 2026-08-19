set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx ANDROID_USER_HOME $XDG_DATA_HOME/android
set -gx ANDROID_NDK_HOME $HOME/Apps/Android/ndk-r27c
set -gx GRADLE_USER_HOME $XDG_DATA_HOME/gradle
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
set -gx SDKMAN_DIR $XDG_DATA_HOME/sdkman
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx HISTFILE $XDG_STATE_HOME/bash/history
set -gx R_LIBS_USER $HOME/Apps/R
set -gx PNPM_HOME "$HOME/.local/share/pnpm"

set -gx CLAUDE_CODE_USE_BEDROCK 1
set -gx AWS_REGION "us-east-1"

fish_add_path ~/go/bin $CARGO_HOME/bin ~/.local/bin ~/.config/bin ~/Apps /opt/lampp ~/.spicetify ~/.turso

mise activate fish | source