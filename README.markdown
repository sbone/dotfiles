My dotfiles for the core tools on my Mac. Git and zsh get the most use.
Vim is just a basic editor config now. No plugins. tmux has a few keybindings
and mouse support.

Keep the repo at `~/.dotfiles` and symlink the files you want to use:

| Repo file | Link in home directory |
| --- | --- |
| `git/gitconfig.symlink` | `~/.gitconfig` |
| `git/gitignore.symlink` | `~/.gitignore` |
| `git/githelpers.symlink` | `~/.githelpers` (optional) |
| `zsh/zshrc.symlink` | `~/.zshrc` |
| `vim/vimrc.symlink` | `~/.vimrc` |
| `tmux/tmux.conf.symlink` | `~/.tmux.conf` |

Check what's already there first. Back up any existing config before replacing
it. For example, once `~/.zshrc` is out of the way:

```sh
ln -s "$HOME/.dotfiles/zsh/zshrc.symlink" "$HOME/.zshrc"
```

The configs make a few assumptions:

- zsh expects Homebrew at `/opt/homebrew` and puts asdf's shims on PATH.
  It keeps the Git branch in the prompt and Ctrl-R for history search.
- Git uses `/usr/bin/vim` and `diff-so-fancy` with `less`. Install
  `diff-so-fancy` separately if you use this config. The global ignore file
  needs its own link too.
- Vim uses built-in syntax highlighting, two-space indentation, and
  Ctrl-H/J/K/L to move between splits. No plugin install or `~/.vim` link needed.
- tmux needs to be installed separately. Prefix is Ctrl-A; prefix then `\`
  or `-` splits panes, and `h/j/k/l` moves between them. Prefix then `r`
  reloads the config.

Machine-specific zsh settings can go in `~/.zshrc_local`, which loads last.
Keep existing `~/.zshenv` and `~/.zprofile` entries for tools like Rust and
OrbStack; this repo doesn't replace those files. The optional Git helpers
aren't loaded automatically. Add `source ~/.githelpers` to `~/.zshrc_local`
if you want them.

`install.sh` is old and still sets up tools outside this scope. Use the links
above for now. The bash, Sublime, and other old files haven't been reviewed.
The bundled `bin/vim` and `bin/tmux` are Linux binaries, not Mac installs.
