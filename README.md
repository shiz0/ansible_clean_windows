# ansible_clean_windows
Ansible Playbook to free space on Windows Machines:
- Check if cleanmgr.exe is present, copy from WinSxS if not
- Set Registry flags for Cleamngr to include all options
- Run Cleanmgr
- Run DISM Cleanup
- Clear Temp folder of all User Profiles present in the System
