# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/vietvu/miniconda3/bin/conda
    eval /Users/vietvu/miniconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/vietvu/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/vietvu/.cache/lm-studio/bin

set -gx PATH $PATH /opt/homebrew/bin
set -x GOROOT /usr/local/go
set -x PATH $PATH $GOROOT/bin
set -x PATH $PATH /Users/vietvu/go/bin
set -x PATH $PATH /Users/vietvu/.cargo/bin
set -x PATH $PATH /Users/vietvu/.local/bin
