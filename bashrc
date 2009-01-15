# ~/.bashrc

# Interactive?
if [[ $- != *i* ]]; then
	return
fi

# Run keychain
keychain id_rsa
[[ -z ${HOSTNAME} ]] && HOSTNAME=$(uname -n)
[[ -f ${HOME}/.keychain/${HOSTNAME}-sh ]] && \
	. "${HOME}/.keychain/${HOSTNAME}-sh"
[[ -f ${HOME}/.keychain/${HOSTNAME}-sh-gpg ]] && \
	. "${HOME}/.keychain/${HOSTNAME}-sh-gpg"

# vim: ts=8 sw=8 noet fdm=marker tw=80 :
