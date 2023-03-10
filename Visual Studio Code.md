# User settings
```
{
  "editor.acceptSuggestionOnCommitCharacter": false,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.fontFamily": "Fira Mono, Consolas, 'Courier New', monospace",
  // "editor.fontLigatures": true,
  "editor.fontSize": 14,
  "editor.formatOnSave": true,
  "editor.lineHeight": 22,
  "editor.linkedEditing": true,
  "editor.occurrencesHighlight": false,
  "editor.renderWhitespace": "all",
  "editor.selectionHighlight": false,
  "editor.semanticHighlighting.enabled": false,
  "editor.suggest.insertMode": "replace",
  "editor.tabSize": 2,
  "editor.wordWrap": "bounded",
  "editor.wordWrapColumn": 200,
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  "emmet.triggerExpansionOnTab": true,
  "explorer.autoReveal": false,
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "extensions.ignoreRecommendations": true,
  "files.autoSave": "onFocusChange",
  "javascript.updateImportsOnFileMove.enabled": "never",
  "typescript.updateImportsOnFileMove.enabled": "never",
  "security.workspace.trust.untrustedFiles": "open",
  "window.titleBarStyle": "custom",
  "workbench.colorCustomizations": {
    "editorWarning.foreground": "#E5C07B",
    "[Atom One Dark]": {
      "editor.selectionBackground": "#3D59A1",
      "editor.selectionHighlightBackground": "#3D59A1"
    }
  },
  "workbench.colorTheme": "Atom One Dark",
  "workbench.tree.indent": 15,
  "workbench.tree.renderIndentGuides": "always",
  "workbench.startupEditor": "none",
}
```

# Key bindings
```
// Place your key bindings in this file to override the defaults
[
  {
    "key": "ctrl+d",
    "command": "editor.action.copyLinesDownAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+shift+d",
    "command": "editor.action.addSelectionToNextFindMatch",
    "when": "editorFocus"
  },
  {
    "key": "ctrl+oem_2",
    "command": "editor.action.blockComment",
    "when": "editorHasSelection && editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+n",
    "command": "explorer.newFile"
  },
  {
    "key": "ctrl+shift+n",
    "command": "workbench.action.files.newUntitledFile"
  },
  {
    "key": "ctrl+r",
    "command": "workbench.action.gotoSymbol"
  },
  {
    "key": "ctrl+shift+o",
    "command": "revealFileInOS"
  }
]
```

# Extensions
* Atom One Dark Theme
* Docker
* DotENV / ENV
* EditorConfig for VS Code
* ESLint
* Git Blame
* Git Graph
* Path Intellisense
* Prettier
* Stylelint
* SVG
* Tailwind CSS IntelliSense
