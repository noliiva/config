# Mac OS survival config for Windows user

## FR - PC Keyboard
### Remap numpad .
`~/Library/KeyBindings/DefaultKeyBinding.dict`\
Source: https://apple.stackexchange.com/a/408880 / https://gist.github.com/trusktr/1e5e516df4e8032cbc3d
```
{
   "#," = ("insertText:", ".");
   "#." = ("insertText:", ",");
}
```
### Remap Keyboad Shortcuts
`System Settings > Keyboard > Keyboard Shortcuts...`

#### Mission Control
| Action          | Shortcut  |
|-----------------|-----------|
| Show Desktop    | ^D        |

#### Windows > General
| Action          | Shortcut  |
|-----------------|-----------|
| Minimize        | ⌘M        |

#### Screenshots
| Action                           | Shortcut  |
|----------------------------------|-----------|
| Copy selected area to clipboard  | ^⇧S       |
| Screenshot and recording options | ⌥⇧S       |

#### Spotlight
| Action                 | Shortcut  |
|------------------------|-----------|
| Show Spotlight search  | ^Space    |

#### Modifier keys
| Key             | Action    |
|-----------------|-----------|
| Control (^) key | ⌘ Command |
| Option (⌥) key  | ^ Control |
| Command (⌘) key | ⌥ Option  |

## Apps
- [AltTab](https://alt-tab-macos.netlify.app/)
- [Rectangle](https://rectangleapp.com/)
- [Hidden Bar](https://apps.apple.com/us/app/hidden-bar/id1452453066)
- [Superchage](https://sindresorhus.com/supercharge)\
  Prevent accidental app quits by remapping Cmd+Q\
  Open files with Enter\
  Auto-open preview after screeshot\
  Quit app after closing all its windows\
  Offer to install apps after downloading a .dmg & move .dmg to trash after install
- [Stats](https://mac-stats.com/)
- [Hammerspoon](https://www.hammerspoon.org/)
  <details>
    <summary>Config</summary>
    
    ```
      -[[===================
        Discord menubar icon
      ====================]]--
      local discordIcon = hs.image.imageFromPath(hs.configdir .. "/icons/discord.png"):setSize({w=18, h=18})
      local discordAppName = "Discord"
      local discordApp = hs.application.get(discordAppName)
      local discordMenuBar = hs.menubar.new()
      
      discordMenuBar:setIcon(discordIcon)
      discordMenuBar:autosaveName(discordAppName)
      
      discordMenuBar:setClickCallback(function(mods)
        hs.application.launchOrFocus(discordAppName)
      end)
      
      discordMenuBar:setMenu({
        { title = "Ouvrir Discord", fn = function()
            hs.application.launchOrFocus(discordAppName)
          end
        },
        { title = "Quitter Discord", fn = function()
            discordApp:kill() 
            discordMenuBar:removeFromMenuBar()
          end
        }
      })
      
      local function updateDiscordMenuBar()
        if discordApp and discordApp:isRunning() then
          if not discordMenuBar:isInMenuBar() then
            discordMenuBar:returnToMenuBar()
          end
      
        else
          if discordMenuBar then
            discordMenuBar:removeFromMenuBar()
          end
        end
      end
      
      -- check every minutes
      updateDiscordMenuBar()
      hs.timer.doEvery(60, updateDiscordMenuBar)
    ```
  </details>
- [Nerd Fonts](https://www.nerdfonts.com/)
- [Ghostty](https://ghostty.org/)
  <details>
    <summary>Config</summary>
    
    ```
      theme = catppuccin-mocha
    
      cursor-invert-fg-bg = true
      
      window-padding-x = 8
      
      font-family = Iosevka
      font-size = 16
      font-feature = -liga
      
      copy-on-select = true
      clipboard-trim-trailing-spaces = true
      
      ###############
      # KEYBINDINGS #
      ###############
      
      # Cmd+C → Ctrl+C (cancel)
      keybind = cmd+c=text:\x03
      
      # Cmd+X → Ctrl+X (nano exit)
      keybind = cmd+x=text:\x18
      
      # Cmd+K → Ctrl+K (nano cut line)
      keybind = cmd+k=text:\x0B
      
      # Cmd+U → Ctrl+U (nano uncut)
      keybind = cmd+u=text:\x15
      
      # opt+suppr → Ctrl+W (delete next word)
      keybind = alt+delete=text:\x1bd
      
      # cmd+suppr → Ctrl+K (delete end of line)
      keybind = cmd+delete=text:\x0b
      
      # Splits commands
      keybind = alt+kp_add=new_split:right
      keybind = alt+kp_subtract=new_split:down
      keybind = alt+up=goto_split:up
      keybind = alt+left=goto_split:left
      keybind = alt+down=goto_split:down
      keybind = alt+right=goto_split:right
      keybind = alt+shift+delete=close_surface
    ```
  </details>
- VSCode
  <details>
    <summary>settings</summary>

    ```json
      "editor.fontFamily": "IosevkaTerm Nerd Font, FiraMono Nerd Font",
      "editor.fontLigatures": false,
      "editor.fontSize": 16,
      "editor.lineHeight": 22,
      
      "editor.formatOnSave": true,
    ```
  </details>
  
  <details>
    <summary>keybindings</summary>

    ```json
      [
        {
          "key": "cmd+[Period]",
          "command": "editor.action.commentLine",
          "when": "editorTextFocus && !editorReadonly"
        },
        {
          "key": "shift+cmd+[Period]",
          "command": "editor.action.blockComment",
          "when": "editorTextFocus && !editorReadonly"
        },
        {
          "key": "cmd+d",
          "command": "editor.action.copyLinesDownAction",
          "when": "editorTextFocus && !editorReadonly"
        },
        {
          "key": "cmd+shift+d",
          "command": "editor.action.addSelectionToNextFindMatch",
          "when": "editorFocus"
        },
        {
          "key": "shift+cmd+alt+f",
          "command": "workbench.action.replaceInFiles"
        },
        {
          "key": "cmd+g",
          "command": "workbench.action.gotoLine"
        },
        {
          "key": "cmd+n",
          "command": "explorer.newFile"
        },
        {
          "key": "shift+cmd+n",
          "command": "workbench.action.files.newUntitledFile"
        },
        {
          "key": "shift+cmd+o",
          "command": "revealFileInOS"
        },
        {
          "key": "cmd+r",
          "command": "workbench.action.gotoSymbol",
          "when": "!accessibilityHelpIsShown && !accessibleViewIsShown"
        },
        {
          "key": "cmd+t",
          "command": "workbench.action.terminal.toggleTerminal"
        },
        // Terminal
        {
          "key": "cmd+c",
          "command": "workbench.action.terminal.sendSequence",
          "when": "terminalFocus",
          "args": { "text": "\u0003" }
        }
      ]
    ```
  </details>
