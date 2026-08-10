set -gx XDG_CONFIG_HOME         $HOME/.config
set -gx XDG_CACHE_HOME          $HOME/.cache/
set -gx XDG_DATA_HOME           $HOME/.local/share
set -gx XDG_STATE_HOME          $HOME/.local/state/
set -gx ANDROID_USER_HOME       $XDG_DATA_HOME/android
set -gx ANDROID_NDK_HOME        $HOME/Apps/Android/ndk-r27c/
set -gx GRADLE_USER_HOME        $XDG_DATA_HOME/gradle
set -gx CARGO_HOME              $XDG_DATA_HOME/cargo
set -gx GNUPGHOME               $XDG_DATA_HOME/gnupg
set -gx SDKMAN_DIR              $XDG_DATA_HOME/sdkman
set -gx RUSTUP_HOME             $XDG_DATA_HOME/rustup
set -gx GNUPGHOME               $XDG_DATA_HOME/gnupg
set -gx HISTFILE                $XDG_STATE_HOME/bash/history
set -gx R_LIBS_USER             $HOME/Apps/R
set -gx PNPM_HOME               "/home/eugene/.local/share/pnpm"
# set -gx GITHUB_TOKEN          (gopass github/token)
# set -gx GOOGLE_API_KEY        (gopass google/gemini)
# set -gx LANGSMITH_API_KEY     (gopass langsmith/token)
set -gx CLAUDE_CODE_USE_BEDROCK 1
set -gx AWS_REEGION             "us-east-1"
fish_add_path              ~/go/bin
fish_add_path              $CARGO_HOME/bin
fish_add_path              ~/.local/bin/
fish_add_path              ~/.config/bin/
fish_add_path              ~/Apps
fish_add_path              /opt/lampp/
fish_add_path              ~/.spicetify
fish_add_path              ~/.turso/
mise activate fish | source
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
