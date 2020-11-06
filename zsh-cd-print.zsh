#!/bin/zsh
emulate -L zsh

function _cd_print::put_color
{
  tput setaf 3;
}

function _cd_print::print_wd
{
  tput setaf 3;
}

function _cd_print::reset_color
{
  tput sgr0;
}

cd() {
  builtin cd $@
  _cd_print::put_color
  _cd_print::print_wd
  _cd_print::reset_color
}

