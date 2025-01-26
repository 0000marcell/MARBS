#!/usr/bin/bash

yay -S dropbox
systemctl --user enable dropbox.service
systemctl --user start dropbox.service
dropbox
