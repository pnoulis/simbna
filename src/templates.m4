# -*- mode: sh; -*-

templates() {
  # macro
  local HOST_TEMPLATESDIR=/usr/local/share/$APP_NAME
  # dynamic
  local USER_TEMPLATESDIR=$HOME/.local/share/$APP_NAME
  # dynamic
  local PKG_TEMPLATESDIR=./.$APP_NAME
}
