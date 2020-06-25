fish_ssh_agent

# Linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# nodenv 
eval (nodenv init -)

# Warning: umask is currently set to 000. Directories created by Homebrew cannot
# be world-writable. This issue can be resolved by adding "umask 002" to
# your ~/.config/fish/config.fish:
#   echo 'umask 002' >> ~/.config/fish/config.fish
umask 002