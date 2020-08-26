# Linux Home configuration files

# Other notes
For emacs to work, I made the following config changes inside Windows Terminal:
`
// CMc: unbind a bunch of keys to leave emacs alone!!! 
{ "command": "unbound", "keys": [ "alt+shift+-" ] },
{ "command": "unbound", "keys": [ "alt+shift+plus" ] },
{ "command": "unbound", "keys": [ "alt+down" ] },
{ "command": "unbound", "keys": [ "alt+left" ] },
{ "command": "unbound", "keys": [ "alt+right" ] },
{ "command": "unbound", "keys": [ "alt+up" ] },
{ "command": "unbound", "keys": [ "alt+enter" ] },
{ "command": "unbound", "keys": [ "alt+shift+down" ] },
{ "command": "unbound", "keys": [ "alt+shift+left" ] },
{ "command": "unbound", "keys": [ "alt+shift+right" ] },
{ "command": "unbound", "keys": [ "alt+shift+up" ] }
`

I also had to comment out the following defaults:
`
//{ "command": {"action": "copy", "singleLine": false }, "keys": "ctrl+c" },
//{ "command": "paste", "keys": "ctrl+v" },
`
