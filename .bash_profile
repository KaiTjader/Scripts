#!/bin/bash

# Windows users run bash_profile, but others bashrc.
# This runs bashrc that way all the starting code runs from the same file for all OSs.
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi