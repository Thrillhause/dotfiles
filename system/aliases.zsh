# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Enable aliases to be sudo’ed
alias sudo="sudo "

# Shortcuts
alias o="open"
alias oo="open ."
alias e="$EDITOR"
alias g="git"
alias v="vim"
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"
alias h="history"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Weather App
alias weather="node Projects/learn/nodetest/weather-app/app-promise.js -a 92649"

# SSH Connections
alias ssh-dhc="ssh ubuntu@208.97.140.227"
alias ssh-yakko="ssh deanj@yakko.sd.dreamhost.com"
alias ssh-thrill="ssh thrillhause@ps158038.dreamhostps.com"

# Be nice
alias htop='sudo htop'
alias hosts='sudo vi /private/etc/hosts'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

alias dig="dig +nocmd any +multiline +noall +answer"

# View HTTP traffic
alias sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Download file and save it with filename of remote file
alias get="curl -O -L"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Disc utils
alias diskspace_report="df -P -kHl"

# File size
alias fs="stat -f \"%z bytes\""

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs & the useless sleepimage to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle; brew cleanup;  brew doctor; npm-check -g -u"
