setlocal tabstop=4
setlocal shiftwidth=4

command -buffer Format !.tox/dev/bin/python cairo-format -i %
