#!/bin/bash
/usr/lib/xscreensaver/glmatrix -window-id $(xwininfo -name "Desktop" | grep 'Window id' | sed 's/.*\(0x[0-9a-z]*\).*/\1/g') -root -no-fog -fps -speed 3 -density 9
