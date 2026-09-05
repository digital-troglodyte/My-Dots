#!/bin/bash

export ESRVNAME=edit
emacs --daemon=$ESRVNAME
ps -ef | grep -i 'emacs --daemon'
