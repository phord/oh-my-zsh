function chpwd; {
    DIRECTORY="$PWD"
    while true; do
        for SETUP in setup.bash .env.rc env ; do
            if [ -f "${DIRECTORY}/${SETUP}" ]; then
                source "${DIRECTORY}/${SETUP}"
                DIRECTORY="/" # cheap quick exit
                break
            fi
        done
        [ '/' = "$(readlink -f "${DIRECTORY}")" ] && break
        DIRECTORY="${DIRECTORY}/.."
    done
}
