# https://github.com/shyiko/jabba
# This file is indented to be "sourced" (i.e. ". ~/.jabba/jabba.sh")

export JABBA_HOME="$HOME/.jabba"

jabba() {
    local fd3=$(mktemp /tmp/jabba-fd3.XXXXXX)
    (JABBA_SHELL_INTEGRATION=ON /usr/local/bin/jabba "$@" 3>| ${fd3})
    local exit_code=$?
    eval $(cat ${fd3})
    rm -f ${fd3}
    return ${exit_code}
}

if [ ! -z "$(jabba alias default)" ]; then
    jabba use default
fi
