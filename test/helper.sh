[[ -z "$SHUNIT2"     ]] && SHUNIT2=/usr/share/shunit2/shunit2
[[ -n "$ZSH_VERSION" ]] && setopt shwordsplit

setUp() { return; }
tearDown() { return; }
oneTimeTearDown() { return; }

echo -e "PWD:\t$PWD"
echo -e "HOME:\t$HOME"
echo -e "PATH:\t$PATH"
echo -e "SHELL:\t$SHELL"
echo
