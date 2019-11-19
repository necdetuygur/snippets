:: PowerShell > code --list-extensions | % { "code --install-extension $_" }

code --install-extension bmewburn.vscode-intelephense-client
code --install-extension eamodio.gitlens
code --install-extension eiminsasete.apacheconf-snippets
code --install-extension felixfbecker.php-debug
code --install-extension felixfbecker.php-intellisense
code --install-extension felixfbecker.php-pack
code --install-extension hollowtree.vue-snippets
code --install-extension Kelvin.vscode-sshfs
code --install-extension mrmlnc.vscode-apache
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wmaurer.change-case
code --install-extension zhuangtongfa.Material-theme

code --install-extension aaron-bond.better-comments
code --install-extension albymor.increment-selection
code --install-extension Atishay-Jain.All-Autocomplete
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension eamodio.gitlens
code --install-extension felixfbecker.php-debug
code --install-extension felixfbecker.php-intellisense
code --install-extension HookyQR.beautify
code --install-extension jkjustjoshing.vscode-text-pastry
code --install-extension mhutchie.git-graph
code --install-extension miguelsolorio.min-theme
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.sublime-keybindings
code --install-extension mtxr.sqltools
code --install-extension nmsmith89.incrementor
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension zhuangtongfa.material-theme


// keybindings.json
[
  {
    "command": "incrementor.incByOne",
    "key": "ctrl+up"
  },
  {
    "command": "incrementor.decByOne",
    "key": "ctrl+down"
  },
  {
    "command": "incrementor.incByTenth",
    "key": "ctrl+alt+up"
  },
  {
    "command": "incrementor.decByTenth",
    "key": "ctrl+alt+down"
  },
  {
    "command": "incrementor.incByTen",
    "key": "ctrl+alt+cmd+up"
  },
  {
    "command": "incrementor.decByTen",
    "key": "ctrl+alt+cmd+down"
  },
  {
    "key": "ctrl+shift+d",
    "command": "editor.action.copyLinesDownAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+e",
    "command": "-workbench.action.quickOpenNavigateNextInFilePicker",
    "when": "inFilesPicker && inQuickOpen"
  },
  {
    "key": "ctrl+e",
    "command": "-workbench.action.quickOpen"
  },
  {
    "key": "ctrl+e",
    "command": "editor.emmet.action.expandAbbreviation",
    "when": "config.emmet.triggerExpansionOnTab && editorTextFocus && !editorReadonly && !editorTabMovesFocus"
  },
  {
    "key": "tab",
    "command": "-editor.emmet.action.expandAbbreviation",
    "when": "config.emmet.triggerExpansionOnTab && editorTextFocus && !editorReadonly && !editorTabMovesFocus"
  },
  {
    "key": "ctrl+e",
    "command": "emmet.expandAbbreviation"
  },
  {
    "key": "ctrl+shift+u",
    "command": "editor.action.transformToUppercase",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+shift+l",
    "command": "editor.action.transformToLowercase",
    "when": "editorTextFocus"
  }
]
