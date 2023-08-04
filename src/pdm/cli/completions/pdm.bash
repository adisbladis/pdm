# BASH completion script for pdm
# Generated by pycomplete 0.4.0

_pdm_a919b69078acdf0a_complete()
{
    local cur script coms opts com
    COMPREPLY=()
    _get_comp_words_by_ref -n : cur words

    # for an alias, get the real script behind it
    if [[ $(type -t ${words[0]}) == "alias" ]]; then
        script=$(alias ${words[0]} | sed -E "s/alias ${words[0]}='(.*)'/\\1/")
    else
        script=${words[0]}
    fi

    # lookup for command
    for word in ${words[@]:1}; do
        if [[ $word != -* ]]; then
            com=$word
            break
        fi
    done

    # completing for an option
    if [[ ${cur} == --* ]] ; then
        opts="--config --help --ignore-python --pep582 --verbose --version"

        case "$com" in

            (add)
            opts="--dev --dry-run --editable --fail-fast --global --group --help --lockfile --no-editable --no-isolation --no-self --no-sync --prerelease --project --save-compatible --save-exact --save-minimum --save-wildcard --skip --unconstrained --update-all --update-eager --update-reuse --venv --verbose"
            ;;

            (build)
            opts="--config-setting --dest --help --no-clean --no-isolation --no-sdist --no-wheel --project --skip --verbose"
            ;;

            (cache)
            opts="--help --verbose"
            ;;

            (completion)
            opts="--help"
            ;;

            (config)
            opts="--delete --edit --global --help --local --project --verbose"
            ;;

            (export)
            opts="--dev --expandvars --format --global --group --help --lockfile --no-default --output --production --project --pyproject --verbose --without-hashes"
            ;;

            (fix)
            opts="--dry-run --global --help --project --verbose"
            ;;

            (import)
            opts="--dev --format --global --group --help --project --verbose"
            ;;

            (info)
            opts="--env --global --help --json --packages --project --python --venv --verbose --where"
            ;;

            (init)
            opts="--backend --cookiecutter --copier --global --help --lib --non-interactive --overwrite --project --python --skip --verbose"
            ;;

            (install)
            opts="--check --dev --dry-run --fail-fast --global --group --help --lockfile --no-default --no-editable --no-isolation --no-lock --no-self --plugins --production --project --skip --venv --verbose"
            ;;

            (list)
            opts="--csv --exclude --fields --freeze --global --graph --help --include --json --markdown --project --resolve --reverse --sort --venv --verbose"
            ;;

            (lock)
            opts="--check --dev --global --group --help --lockfile --no-cross-platform --no-default --no-isolation --no-static-urls --production --project --refresh --skip --static-urls --verbose"
            ;;

            (plugin)
            opts="--help --verbose"
            ;;

            (publish)
            opts="--ca-certs --comment --help --identity --no-build --no-very-ssl --password --project --repository --sign --skip --username --verbose"
            ;;

            (remove)
            opts="--dev --dry-run --fail-fast --global --group --help --lockfile --no-editable --no-isolation --no-self --no-sync --project --skip --venv --verbose"
            ;;

            (run)
            opts="--global --help --json --list --project --site-packages --skip --venv --verbose"
            ;;

            (search)
            opts="--help --verbose"
            ;;

            (self)
            opts="--help --verbose"
            ;;

            (show)
            opts="--global --help --keywords --license --name --platform --project --summary --venv --verbose --version"
            ;;

            (sync)
            opts="--clean --dev --dry-run --fail-fast --global --group --help --lockfile --no-default --no-editable --no-isolation --no-self --only-keep --production --project --reinstall --skip --venv --verbose"
            ;;

            (update)
            opts="--dev --fail-fast --global --group --help --lockfile --no-default --no-editable --no-isolation --no-self --no-sync --outdated --prerelease --production --project --save-compatible --save-exact --save-minimum --save-wildcard --skip --top --unconstrained --update-all --update-eager --update-reuse --venv --verbose"
            ;;

            (use)
            opts="--first --global --help --ignore-remembered --project --skip --venv --verbose"
            ;;

            (venv)
            opts="--help --path --project --python"
            ;;

        esac

        COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        __ltrim_colon_completions "$cur"

        return 0;
    fi

    # completing for a command
    if [[ $cur == $com ]]; then
        coms="add build cache completion config export fix import info init install list lock plugin publish remove run search self show sync update use venv"

        COMPREPLY=($(compgen -W "${coms}" -- ${cur}))
        __ltrim_colon_completions "$cur"

        return 0
    fi
}

complete -o default -F _pdm_a919b69078acdf0a_complete pdm
