# -*- mode: sh; -*-

# macro
APP_NAME=sib

main() {

}

quote() {
  echo \'"$@"\'
}

debug() {
  [ ! $DEBUG ] && return
  echo "$@" >&2
}

parse_args() {
  declare -ga posargs=()
  while (($# > 0)); do
    case "${1:-}" in
      -h | --help)
        usage
        exit 0
        ;;
      -[a-zA-Z][a-zA-Z]*)
        local i="${1:-}"
        shift
        local rest="$@"
        set --
        for i in $(echo "$i" | grep -o '[a-zA-Z]'); do
          set -- "$@" "-$i"
        done
        set -- $@ $rest
        continue
        ;;
      --)
        shift
        posargs+=("$@")
        ;;
      -[a-zA-Z]* | --[a-zA-Z]*)
        fatal "Unrecognized argument ${1:-}"
        ;;
      *)
        posargs+=("${1:-}")
        ;;
    esac
    shift
  done
}

parse_param() {
  local param arg
  local -i toshift=0

  if (($# == 0)); then
    return $toshift
  elif [[ "$1" =~ .*=.* ]]; then
    param="${1%%=*}"
    arg="${1#*=}"
  elif [[ "${2-}" =~ ^[^-].+ ]]; then
    param="$1"
    arg="$2"
    ((toshift++))
  fi

  if [[ -z "${arg-}" && ! "${OPTIONAL-}" ]]; then
    fatal "${param:-$1} requires an argument"
  fi

  echo "${arg:-}"
  return $toshift
}


main "$@"
