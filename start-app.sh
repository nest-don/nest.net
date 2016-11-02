#!/bin/bash

if [ "$NEST_CUSHION_CREATED" != "yes" ]; then
	NEST_OPERATION=create_cushion $NEST_FOLDER_APP/app.nest

	if [ $? -eq 0 ]; then
		NEST_OPERATION=install $NEST_FOLDER_APP/app.nest
	fi
fi

NEST_OPERATION=start $NEST_FOLDER_APP/app.nest
