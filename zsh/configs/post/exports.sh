export NAME='Nick Charlton'
export EMAIL='nick@nickcharlton.net'
export TZ='Europe/London'

export XDG_CONFIG_HOME=$HOME/.config
mkdir -p "$XDG_CONFIG_HOME"

export DEBFULLNAME=$NAME
export DEBEMAIL=$EMAIL

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export VAGRANT_VMWARE_CLONE_DIRECTORY=$HOME/.vagrant.d/clones
mkdir -p "$VAGRANT_VMWARE_CLONE_DIRECTORY"

export ATLAS_USER=nickcharlton

export DISABLE_SPRING=1

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# dotnet
export DOTNET_ROOT=/usr/local/share/dotnet
