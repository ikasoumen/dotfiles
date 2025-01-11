fish_ssh_agent

# Linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"

# Warning: umask is currently set to 000. Directories created by Homebrew cannot
# be world-writable. This issue can be resolved by adding "umask 002" to
# your ~/.config/fish/config.fish:
#   echo 'umask 002' >> ~/.config/fish/config.fish
umask 002

# openSSL
export PATH="/opt/homebrew/opt/openssl/bin:$PATH"