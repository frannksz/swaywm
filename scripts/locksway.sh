#!/bin/bash

swaylock --screenshots \
		--ignore-empty-password \
		--daemonize \
		--indicator-caps-lock \
		--indicator \
		--clock \
		--timestr " %Hh %Mm %Ss"\
		--datestr "  %d.%b.%Y" \
		--show-failed-attempts \
		--indicator-idle-visible
