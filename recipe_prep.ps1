# choco installation
# https://chocolatey.org/install

Write-Host "=== Prepping your development environment! ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco feature enable -name=allowGlobalConfirmation;
choco install ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
