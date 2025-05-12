#Use Windows Server Core as the base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

#Install PowerShell and Active Directory module
RUN Install-WindowsFeature RSAT-AD-PowerShell 

# Copu the script into container 
COPY ADManager.ps1 C:\Users\Jude\OneDrive\Documents\Project\cloud9\ADProject\ADManager.ps1

#Set PowerShell as the entry point
CMD ["powershell.exe", "-ExecutionPolicy", "Bypass", "-File", C:\Users\Jude\OneDrive\Documents\Project\cloud9\ADProject\ADManager.ps1]