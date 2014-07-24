# Determine arguments for ls colours
if [[ -x "`whence -p dircolors`" ]]; then
  alias ls='ls --color=auto'
else
  alias ls='ls -G'
fi

alias v='vim'

alias x='exit'

alias bx='bundle exec'

alias pgen='openssl rand -base64'

# Git aliases
alias g='git'

alias gp='git push origin $(current_branch)'

alias gd='git fetch && git rebase origin/$(current_branch)'

alias ga='git add -p'

alias gc='git ci'

alias gs='git st -sb'

alias gl='git l'
alias gr='git r'

alias gwip='git add --all . && git commit -m "WIP"'

alias retag='ctags -R --exclude=.git --exclude=log --exclude=tmp *'

alias fs='grep -RL --exclude turnip_helper.rb --exclude spec_helper.rb --exclude-dir spec/acceptance --exclude-dir spec/support --exclude-dir spec/fixtures "spec_helper" spec | xargs rspec'
