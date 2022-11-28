# ansible_clean_windows
Ansible Playbook to free space on Windows Machines, commands are run with Powershell:
- Check if cleanmgr.exe is present, copy from WinSxS Folder if not
- Set Registry flags for Cleamngr to include all options
- Run Cleanmgr
- Run DISM Cleanup
- Clear all User Profiles temp files present in the System
