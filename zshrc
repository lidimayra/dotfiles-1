source ~/.zplug/init.zsh

zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-syntax-highlighting', nice:10
zplug 'zsh-users/zsh-completions', nice:10

zplug load

export EDITOR="vim"

for zsh_source in $HOME/.zsh/configs/*.zsh; do
  source $zsh_source
done

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

sz() { source ~/.zshrc }
