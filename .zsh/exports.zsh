###
# Exports
###

if [[ -f $HOME/opt/bin/nvim ]]; then
    export EDITOR=$HOME/opt/bin/nvim
else
    export EDITOR=/bin/nano
fi

export PATH=$HOME/opt/bin:$PATH

# ctags sorting in vim/emacs is better behaved with this in place
export LC_COLLATE=C

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/opt/lib:$LD_LIBRARY_PATH

# pkg-config
export PKG_CONFIG_PATH=$HOME/opt/lib/pkgconfig

