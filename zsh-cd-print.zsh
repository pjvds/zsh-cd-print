#!/bin/zsh
emulate -L zsh

function _cd_print::put_color
{
  tput setaf 3;
}

function _cd_print::print_wd
{
  pwd
}

function _cd_print::reset_color
{
  tput sgr0;
}

function _cd_print::print
{
  _cd_print::put_color
  _cd_print::print_wd
  _cd_print::reset_color
}

function _cd_print::init
{
  chpwd_functions=(${chpwd_functions[@]} _cd_print::print)
}
