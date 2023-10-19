# -*- mode: sh -*-

rc() {
  # macro
  local HOST_CONFDIR=/etc/$APP_NAME
  # dynamic
  local USER_CONFDIR=$HOME/.config/$APP_NAME
  # dynamic
  local PKG_CONFDIR=./.$APP_NAME
}
