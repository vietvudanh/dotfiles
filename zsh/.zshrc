function gi () {
        curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@
}

alias gi-py='gi list'
alias gi-py='gi python,Jetbrains,VisualStudioCode,dotenv,dbt > .gitignore'

function initPythonMakefile {
    cat > Makefile <<EOF
.PHONY: init
init:
	uv venv
	uv init

.PHONY: requirements-compile
requirements-compile:
	uv pip compile pyproject.toml > requirements.txt
	uv pip compile pyproject.toml --extra dev > requirements-dev.txt

.PHONY: requirements-dev
requirements-dev: requirements-compile
	uv pip install -r requirements-dev.txt

.PHONY: requirements
requirements: requirements-compile
	uv pip install -r requirements.txt

.PHONY: build
build:
	uv build
EOF
}
