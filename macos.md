# Mac OS survival config for Windows user

## FR - PC Keyboard
### Remap numpad .
Source: https://apple.stackexchange.com/a/408880 / https://gist.github.com/trusktr/1e5e516df4e8032cbc3d

`~/Library/KeyBindings/DefaultKeyBinding.dict`
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
- [Linear Mouse](https://linearmouse.app/)
  <details>
     <summary>config</summary>

     #### Scrolling     
     **Scrolling mode:** By Pixels\
     **Distance:** 128px

     #### Pointer
     **Pointer acceleration:** 0.6875\
     **Pointer speed:** 0.1
     ```
  </details>
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
    <summary>config</summary>
    
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
- [Homebrew](https://brew.sh/)
- [Ghostty](https://ghostty.org/)
  <details>
    <summary>config</summary>
    
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
  <details>
     <summary>.zshrc</summary>

     ```
     export PATH="/opt/homebrew/bin:$PATH"
   
     eval "$(starship init zsh)"
         
     eval "$(brew shellenv)"
     autoload -Uz +X compinit && compinit
         
     export NVM_DIR="$HOME/.nvm"
        [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
        [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
         
     zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
     zstyle ':completion:*' menu select

     
     # Aliases
     alias ls="ls -la --color"
     alias nano="/opt/homebrew/bin/nano"
     ```
  </details>
- [Nerd Fonts](https://www.nerdfonts.com/)
- [Starship](https://starship.rs/)
  <details>
     <summary>~/.config/starship.toml</summary>

     ```
     # Get editor completions based on the config schema
     "$schema" = 'https://starship.rs/config-schema.json'
      
     # Inserts a blank line between shell prompts
     add_newline = true
     continuation_prompt = "[❯❯ ](dimmed green)"

     
     format = """
     $directory\
     $git_branch\
     $git_state\
     $git_status\
     $line_break\
     $character"""
      
     right_format = """
     $cmd_duration"""
      
     palette = 'catppuccin_mocha'
      
      
     [directory]
     style = "lavender"
     format = "[󰀵 $path]($style)"
     truncation_length = 3
     truncation_symbol = "…/"
      
     [git_branch]
     symbol = ""
     style = "dimmed yellow"
     format = '[ $symbol $branch ]($style)'
      
     [git_status]
     style = "yellow"
     format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)"
     conflicted = ""
     untracked = ""
     modified = ""
     staged = ""
     renamed = ""
     deleted = ""
     stashed = "≡"
      
     [git_state]
     format = '\([$state( $progress_current/$progress_total)]($style)\) '
     style = "bright-black"
      
     [character]
     success_symbol = '[❯](bold fg:green)'
     error_symbol = '[❯](bold fg:red)'
     vimcmd_symbol = '[❮](bold fg:green)'
     vimcmd_replace_one_symbol = '[❮](bold fg:lavender)'
     vimcmd_replace_symbol = '[❮](bold fg:lavender)'
     vimcmd_visual_symbol = '[❮](bold fg:yellow)'
      
     [cmd_duration]
     format = "[in $duration]($style)"
     show_milliseconds = true
     style = "dimmed surface2"
     show_notifications = true
     min_time_to_notify = 45000
      
     [palettes.catppuccin_mocha]
     rosewater = "#f5e0dc"
     flamingo = "#f2cdcd"
     pink = "#f5c2e7"
     mauve = "#cba6f7"
     red = "#f38ba8"
     maroon = "#eba0ac"
     peach = "#fab387"
     yellow = "#f9e2af"
     green = "#a6e3a1"
     teal = "#94e2d5"
     sky = "#89dceb"
     sapphire = "#74c7ec"
     blue = "#89b4fa"
     lavender = "#b4befe"
     text = "#cdd6f4"
     subtext1 = "#bac2de"
     subtext0 = "#a6adc8"
     overlay2 = "#9399b2"
     overlay1 = "#7f849c"
     overlay0 = "#6c7086"
     surface2 = "#585b70"
     surface1 = "#45475a"
     surface0 = "#313244"
     base = "#1e1e2e"
     mantle = "#181825"
     crust = "#11111b"%
     ```
  </details>
- VSCode
  <details>
    <summary>settings.json</summary>

    ```json
    "editor.fontFamily": "IosevkaTerm Nerd Font, FiraMono Nerd Font",
    "editor.fontLigatures": false,
    "editor.fontSize": 16,
    "editor.lineHeight": 22,
      
    "editor.formatOnSave": true,
    ```
  </details>
  
  <details>
    <summary>keybindings.json</summary>

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
