# Run the vault sync through WSL git.
# Usage: powershell -ExecutionPolicy Bypass -File sync.ps1
wsl --cd "$PSScriptRoot" -e bash ./sync.sh
