if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

PATH=$PATH:$HOME/flutter/bin
PATH=$PATH:$HOME/.pub-cache/bin
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

export GOPATH=$HOME/go
export GOROOT=$HOME/.go
PATH=$GOPATH/bin:$PATH

PATH=$PATH:$HOME/Android/Sdk
PATH=$PATH:$HOME/Android/Sdk/platform-tools
PATH=$PATH:`echo $HOME/.local/share/JetBrains/Toolbox/apps/AndroidStudio/*/*/jre/bin`
