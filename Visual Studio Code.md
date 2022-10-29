# User settings
```
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.renderWhitespace": "all",
  "editor.tabSize": 2,
  "editor.wordWrap": "bounded",
  "editor.wordWrapColumn": 200,
  "emmet.includeLanguages": {
    "javascript": "javascriptreact",
    "njk": "html"
  },
  "emmet.triggerExpansionOnTab": true,
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "files.autoSave": "onFocusChange",
  "javascript.updateImportsOnFileMove.enabled": "never",
  "typescript.updateImportsOnFileMove.enabled": "never",
  "security.workspace.trust.untrustedFiles": "open",
  "stylelint.validate": ["css", "scss", "javascript", "javascriptreact"],
  "window.titleBarStyle": "custom",
  "workbench.colorTheme": "Atom One Dark",
  "workbench.colorCustomizations": {
    "editorWarning.foreground": "#E5C07B"
  },
  "extensions.ignoreRecommendations": true,
  "[nunjucks]": {
    "editor.defaultFormatter": "okitavera.vscode-nunjucks-formatter"
  },
  "workbench.startupEditor": "none"
}
```

# Key bindings
```
[
    {
      "key": "ctrl+D",
      "command": "editor.action.copyLinesDownAction",
      "when": "editorTextFocus && !editorReadonly"
    },
    {
      "key": "ctrl+numpad_divide",
      "command": "editor.action.blockComment",
      "when": "editorTextFocus && !editorReadonly"
    },
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
* Quokka.js
* Stylelint
* SVG
* Tailwind CSS IntelliSense
