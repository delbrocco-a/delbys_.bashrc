---

# _Delb'y's .bashrc_

---

## Description
*It's just a config file*

Here is my .bashrc file containing my bash prompt and listing predilections, as well as a custom cd function for my bash terminals. This configuration was made specifically with variants of **JetBrains Mono** in mind, which can be downloaded from:

> https://www.jetbrains.com/lp/mono/

Alternatively, if you're already running a linux machine, it can be installed using dnf:

> ```sudo dnf install jetbrains-mono-fonts```

**NB!** This configuration does reveal your hostname per prompt, so be careful if you're in a situation that requires hostname anonymity 

## Specification
*What it actually does*

- Per prompt: ```|{HH:MM}-[hostname:/{pwd\2}]$ ```
  - Cyan ```|``` marker on every prompt to make skimming swathes of plaintext from prompts slightly easier.
  - ```HH:MM``` timestamps to see when a command was submitted
  - ```Hostname``` to keep track of which terminal is remote etc
  - Printed working directories trimmed to 2 to reduce line fodder
  - Mandatory ```$``` character (although I would change it to ```£``` if such were ASCII)

- Listing Colours:
  - Directories: Cyan
  - Executables: Green
  - Regular Files: bold or bright white
  - Symbolic Links: magenta
 
- Custom cd:
  - <cd> Change directory (as standard)
  - <pwd> Prints working directory (with echo decorations)
  - <ls> List's the contents of the current directory moved to

## Documentation
*If you're interested in tinkering with it*

- PS1="\[\033[036m\]|\[\033[037m\]\D{%H:%M}-[\h:/\[\033[036m\]\w\[\033[37m\]]$ "
  - `\[\033[036m\]` - Set color to cyan
  - `\[\033[037m\]` - Set color to white
  - `\D{%H:%M}` - Current time in 24-hour format (HH:MM)
  - `\h` - Hostname (short form)
  - `\[\033[036m\]` - Switch back to cyan
  - `\w` - Current working directory (full path)
  - `\[\033[37m\]` - Switch back to white
 
- export LS_COLORS="di=36:ex=32:fi=1:ln=35"
  - ```di=36``` - Directories = cyan (36)
  - ```ex=32``` - Executable files = green (32)
  - ```fi=1``` - Regular files = bold/bright (1)
  - ```ln=35``` - Symbolic links = magenta/purple (35)

---
 
> Have fun ~ _Delb'y_

