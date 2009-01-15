# ~/.bashrc

# {{{ Interactive?
if [[ $- != *i* ]]; then
	return
fi
# }}}

# {{{ Keychain
if [[ -z "${SSH_AGENT_PID}" ]] && type keychain &>/dev/null
then
    eval $(keychain --quiet --eval id_rsa | sed -e 's,;,\n,g')
fi
# }}}

# {{{ Path
if [[ -n "${PATH/*$HOME\/bin:*/}" ]]
then
    export PATH="$HOME/bin:$PATH"
fi
# }}}

# {{{ Prompt
PS1="\n[\$] (\t) \u@\h:\w\n> "
# }}}

# vim: ts=8 sw=8 noet fdm=marker tw=80 :
