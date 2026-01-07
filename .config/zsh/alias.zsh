
# Clean up all local branches that are fully merged. This does not touch the remote so should be fine to run as often as you pull.
alias clean-branches="git branch --merged | grep -v '\*' | grep -v master | grep -v main | grep -v dev | xargs -n 1 git branch -d"

# I use docker-compose way more often than I use a decimal calculator.
alias dc="docker-compose"

# Dotfiles Management
alias dotfiles="git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git"

alias reload_profile="source $HOME/.zshrc"

alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard'"

# Handy for doing Tailscale things from the terminal on MacOS
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# For more visual room to work with
alias k9s="k9s --logoless"

# Shortcuts for OSS development on Spin
alias spinrelease="~/src/spinframework/spin/target/release/spin"
alias spindebug="~/src/spinframework/spin/target/debug/spin"

# Kubectl autocompletion
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

# Git aliases and conveniences
alias gist="git status"
alias gich="git checkout"
alias gill="git pull origin"
alias gish="git push origin"
alias gishf="git push --force-with-lease origin"
alias gire="git rebase"
alias gibr="git branch"
alias gilo="git log --oneline"
alias gilop="git log -p"
alias gidi="git diff"
alias gidiw="git diff --word-diff"
alias giad="git add"
alias giadp="git add --patch"
alias gico="git commit -s -S"
alias gicoa="git commit -s -S --amend"
alias gicl="git clean -di"
alias yolo="git add . && git commit -m"
alias gigr='git log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) \
    - %C(bold cyan)%aD%C(dim white) - \
    %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
alias gisync="git pull upstream main --rebase"
alias gireflog="git reflog HEAD@{now}"
function girei() {
  git rebase -i HEAD~$1
}
function gira() {
  local remote="${1}"
  local repo="${2:-$(basename `git rev-parse --show-toplevel`)}"

  if [ "" == "${remote}" ] || [ "" == "${repo}" ]; then
    echo "usage: add_remote <remote> <repo>"
    return 1
  fi

  git remote add "${remote}" "git@github.com:${remote}/${repo}.git"
}

# Cargo shortcuts
alias cbr="cargo build --release"
alias cbd="cargo build"

# Filesystem
ll() { [[ -f "$1" ]] && bat --plain "$1" || ls -Gah "${1:-.}"; }

# Tmux shortcuts
alias t='tmux new-session -A -s'
alias tls='tmux ls'

# Colorful diffing
alias diff='colordiff'
