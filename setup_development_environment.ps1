# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your development environment! ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco install ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco install wsl2 --params "/Version:2 /Retry:true" -y
choco install wsl-ubuntu-2204 --params "/InstallRoot:true" -y

Write-Host "====> Installing dotnet <===="
choco install dotnet --version=6.0.29 -y
choco install dotnet --version=7.0.18 -y
choco install dotnet -y

# core components
Write-Host "====> Installing core components..."
choco install powershell-core -y
choco install microsoft-windows-terminal -y
choco install git -y
choco install curl -y
choco install wget -y
choco install nodejs-lts -y
choco install nvm =y
choco install python3 -y
choco install docker-desktop -y
choco install terraform -y
choco install meld -y
choco install azure-cli -y
choco install microsoftazurestorageexplorer -y
choco install NuGet.CommandLine -y
choco install azure-cli -y

# browsers
Write-Host "====> Installing web browsers..."
choco install firefox -y
choco install GoogleChrome -y

# git gui softwares
Write-Host "====> Installing git gui softwares..."
choco install git-cola -y
#choco install git-fork -y

# ides
Write-Host "====> Installing IDEs..."
choco install vscode -y
choco install visualstudio2022enterprise -y --package-parameters "--includeRecommended --locale en-GB --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Node --add Component.GitHub.VisualStudio --add Microsoft.VisualStudio.Component.Git"
#choco install visualstudio2022community -y --package-parameters "--includeRecommended --locale en-GB --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Node --add Component.GitHub.VisualStudio --add Microsoft.VisualStudio.Component.Git"
choco install jetbrains-rider -y
choco install linqpad -y
choco install sql-server-management-studio -y

# ide extensions
Write-Host "====> Installing IDE extensions..."
choco install resharper -y
choco install sonarlint-vs2022 -y
choco install codemaid -y

# additional softwares
Write-Host "====> Installing additional softwares..."
choco install discord -y
choco install drawio -y
choco install firacode -y
choco install logitech-options-plus -y
choco install postman -y
choco install powertoys -y
choco install devtoys -y
choco install slack -y
choco install screenpresso -y
choco install spotify -y
choco install vlc -y
choco install vscode-drawio -y
choco install rainmeter -y
choco install nvda -y

Write-Host "=== Your development environment is ready to use! Enjoy! ==="

Write-Host "Manual Installation Required"
Write-Host " - Rainbow braces vs extension"
Write-Host " - adobe-creative-cloud"
