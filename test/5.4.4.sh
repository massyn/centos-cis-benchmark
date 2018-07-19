#!/bin/sh
# 5.4.4 Ensure default user umask is 027 or more restrictive (Scored)

[[ "$(umask)" =~ [0-7][2-7]7$ ]] || exit;
