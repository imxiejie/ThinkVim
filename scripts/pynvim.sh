#!/usr/bin/env bash

# @see https://github.com/rafi/vim-config/blob/master/venv.sh

_try_pyenv() {
	local name='' src=''
	if hash pyenv 2>/dev/null; then
		echo '===> pyenv found, searching virtualenvs…'
		for name in 'neovim' 'neovim3' 'nvim'; do
			src="$(pyenv prefix "${name}" 2>/dev/null)"
			if [ -d "${src}" ]; then
				ok "===> pyenv virtualenv found '${name}'"
				# Symlink virtualenv for easy access
				ln -fs "${src}" "${__venv}"
				return 0
			fi
		done
		warn "===> skipping pyenv. manual virtualenv isn't found"
		warn
		warn "Press Ctrl+C and use pyenv to create one yourself (name it 'neovim')"
		warn "and run ${0} again. Or press Enter to continue and try 'python3'."
		read -r
	else
		warn '===> pyenv not found, skipping'
	fi
	return 1
}

_try_python() {
	if ! hash python3 2>/dev/null; then
		warn '===> python3 not found, skipping'
		return 1
	fi
	ok "===> python3 found"
	[ -d "${__venv}" ] || python3 -m venv "${__venv}"
}

Install_Pynvim() {
	# Concat a base path for vim cache and virtual environment
	local __cache="${XDG_CACHE_HOME:-$HOME/.cache}/vim"
	local __venv="${__cache}/venv"
	mkdir -p "${__cache}"

	if [ -d "${__venv}/neovim3" ]; then
		error -n '===> ERROR: Python 2 has ended its life, only one virtualenv is '
		warn 'created now.'
		warn "Delete '${__venv}' (or backup!) first, and then run ${0} again."
	elif _try_pyenv || _try_python; then
		# Install Python 3 requirements
		"${__venv}/bin/pip" install -U pynvim PyYAML Send2Trash
		ok '===> success'
	else
		error '===> ERROR: unable to setup python3 virtualenv.'
		warn -e '\nConsider using pyenv with its virtualenv plugin:'
		warn '- https://github.com/pyenv/pyenv'
		warn '- https://github.com/pyenv/pyenv-virtualenv'
	fi
}
