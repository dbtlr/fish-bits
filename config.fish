set -x PATH /usr/local/bin $PATH

# pull in the generated boxen config
if test -f ~/.config/fish/boxen.fish
  . ~/.config/fish/boxen.fish
end

# Make sure local bins take precidence.
set -x PATH ~/.config/fish/bin ~/.bin ~/.composer/vendor/bin $PATH

set fish_greeting ""
set -x EDITOR "vim"
set -x CLICOLOR 1
set -x BROWSER open

cd ~

if test -d "/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"
   set -x JAVA_HOME "/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"
end

# pull in a local, ignored-by-git config file
if test -f ~/.config/fish/config.local.fish
  . ~/.config/fish/config.local.fish
end

