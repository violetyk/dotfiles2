#!/bin/bash

FILE=`mktemp`;
curl -sL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info > $FILE
tic -xe alacritty,alacritty-direct $FILE