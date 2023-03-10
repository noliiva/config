# Calibre configuration (ebook)
## Configuration de l'appareil
__Modèle de sauvegarde :__

`{#collection}/{author:swap_around_comma()}, {series:swap_around_comma()||, } {series_index:0>2s|T|, }{title:swap_around_comma()}`
## Tableau de connexion des métadonnées
### KOBO
| Champ de destination | Modèle source |
| --- | --- |
| title | {series_index:0>2s\|T.\| ◊ }{title} |
| tags  | {series}-{series_index}           |
### KOBOTOUCH
*Pas vraiment nécessaire depuis que les séries sont prises en compte.*
| Champ de destination | Modèle source |
| --- | --- |
| title | {series_index:0>2s\|T.\| ◊ }{title} |
