# Sandbox Configuration 01

## Sets RAM to 8GB
```xml
<MemoryInMB>
  8192
</MemoryInMB>    
```

## Maps Sandbox folders to local host folders

> [!Note]
>  Local host folder structure
> ```
> c:\
> └── tmp
>     └── sandbox
>         ├── sandbox_scripts
>         └── coding_projects
> ```

> [!NOTE]
> Sandbox folder structure
> ```
> c:\
> └── tmp
>     ├── sandbox
>     └── projects
> ```

### WSB File XML
```xml
<MappedFolders>    
  <MappedFolder>
    <HostFolder>C:\tmp\sandbox\sandbox_scripts</HostFolder>
    <SandboxFolder>C:\tmp\sandbox</SandboxFolder>
    <ReadOnly>True</ReadOnly>
  </MappedFolder>
  <MappedFolder>
    <HostFolder>C:\tmp\sandbox\coding_projects</HostFolder>
    <SandboxFolder>C:\tmp\projects</SandboxFolder>
    <ReadOnly>False</ReadOnly>
  </MappedFolder>
</MappedFolders> 
```

## Downloads and installs VSCode

### Batch file to download and install VSCode on Sandbox

> [!NOTE]
> Batch file located in Sandbox host path below
> ```
> c:\
> └── tmp
>     └── sandbox
>        └── sandbox_script
> ```

```batch
REM Download Visual Studio Code
REM downloads the system installer, not the user-specific installer
curl -L "https://go.microsoft.com/fwlink/?linkid=852157" --output C:\tmp\vscode.exe

REM Install and run Visual Studio Code
C:\tmp\vscode.exe /verysilent /suppressmsgboxes
```

### WSB File XML
> [!NOTE]
> Uses the sandbox folder structure

```xml
<LogonCommand>
  <Command>C:\tmp\sandbox\vscode_install.cmd</Command>
</LogonCommand>
```
