autoload -U colors && colors

# Customized git status
git_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "[$(current_branch)]"
  fi
}

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

PROMPT='%2~ $(git_status)$%b '
