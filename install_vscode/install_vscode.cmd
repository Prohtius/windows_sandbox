REM Download Visual Studio Code
REM Downloads the system installer, not the user-specific installer
curl -L "https://go.microsoft.com/fwlink/?linkid=852157" --output C:\tmp\vscode.exe

REM Install and run Visual Studio Code
C:\tmp\vscode.exe /verysilent /suppressmsgboxes
