#!/bin/bash

SAVE_FILE_NAME="vars.bash"

init_vars() {
	declare -a domainss=();
	declare -a directories=();
	declare -a configs=();

}

save_vars() {
	declare -p domains directories configs > "$SAVE_FILE_NAME"
}

load_vars() {
	source "$SAVE_FILE_NAME"
}




