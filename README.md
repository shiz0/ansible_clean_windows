# ansible_clean_windows
Ansible Playbook to free space on Windows Machines, commands are run with Powershell.
Due to its kind of weird behavior, cleamngr has to be run with psexec, or it will hang and never finish.
Steps in the playbook:

- Check if cleanmgr.exe is present, copy from WinSxS Folder if not
- Create temporary directory and copy over PsExec.exe (Needs to be in the current dir of the playbook, you can use the script to download/extract it)
- Set Registry flags for Cleamngr to include all options (https://stackoverflow.com/a/64106041/13580924)
- Run Cleanmgr
- Run DISM Cleanup (Optional with tag "full")
- Clear all files older than 30 days from various temp foilders (system and users)
- Clean up temp directory

Thanks to David Norman https://github.com/deekayen, who wrote a similiar function as Ansible Role: https://github.com/deekayen/ansible-role-cleanmgr
