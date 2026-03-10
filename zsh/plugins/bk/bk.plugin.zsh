bk() {
    local steps=${1:-1}

    # must be a positive integer
    if ! [[ "$steps" =~ ^[0-9]+$ ]]; then
        echo "Usage: bk [N]"
        return 1
    fi

    local target="$PWD"

    # compute target path manually
    while (( steps > 0 )); do
        [[ "$target" == "/" ]] && break

        target="${target%/}"     # strip trailing slash if any
        target="${target%/*}"    # remove last component
        [[ -z "$target" ]] && target="/"  # root fallback

        ((steps--))
    done

    # --- disable hooks (zoxide / chpwd) temporarily ---
    local old_chpwd_functions=("${chpwd_functions[@]}")
    chpwd_functions=()

    builtin cd "$target"

    # restore hooks
    chpwd_functions=("${old_chpwd_functions[@]}")
}
