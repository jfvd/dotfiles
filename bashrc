# ~/.bashrc

# {{{ Interactive?
if [[ $- != *i* ]]; then
	return
fi
# }}}

# {{{ Keychain
if [[ -z "${SSH_AGENT_PID}" ]] && type keychain &>/dev/null
then
    eval $(keychain --quiet --eval id_dsa | sed -e 's,;,\n,g')
fi
# }}}

# {{{ PATH
if [[ -n "${PATH/*$HOME\/bin:*/}" ]]
then
    export PATH="$HOME/bin:$PATH"
fi
# }}}

# vim: ts=8 sw=8 noet fdm=marker tw=80 :
