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

# vietvu
set -gx PATH $PATH /opt/homebrew/bin
set -x GOROOT /usr/local/go
set -x PATH $PATH $GOROOT/bin
set -x PATH $PATH /Users/vietvu/go/bin
set -x PATH $PATH /Users/vietvu/.cargo/bin
set -x PATH $PATH /Users/vietvu/.local/bin
direnv hook fish | source

## functions
function gi
  curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$argv
end
function initPythonMakefile
    echo -e ".PHONY: init
init:
\tuv venv
\tuv init
\trm hello.py

.PHONY: requirements-compile
requirements-compile:
\tuv pip compile pyproject.toml > requirements.txt
\tuv pip compile pyproject.toml --extra dev > requirements-dev.txt

.PHONY: requirements-dev
requirements-dev: requirements-compile
\tuv pip install -r requirements-dev.txt

.PHONY: requirements
requirements: requirements-compile
\tuv pip install -r requirements.txt

.PHONY: build
build:
\tuv build" > Makefile
end

function initPyrightZedCfg
    echo '{
    "venvPath": ".",
    "venv": ".venv"
}'> ./pyrightconfig.json
end

function gh-clone
    cd ~/works/github.com/ ; gh repo clone $argv[1]
end



## alias
alias notes "cd ~/works/github.com/vietvudanh/notes"
alias dotfiles "cd ~/works/github.com/vietvudanh/dotfiles"
alias gi-list 'gi list'
alias gi-py 'gi python,Jetbrains,VisualStudioCode,dotenv,dbt > .gitignore'
