#### START
```bash
# make scripts executable
chmod +x *.sh

# pull the fedora riscv image 
./get_image.sh

# install requirements
./install_requirements.sh

# try running qemu, logging in as root and examine filesystem 
./launch_qemu.sh

# ----- IN VM ----
# once in vm login using root:riscv credentials
# examine filesystem 
# for example find /root/ dir

# to turn off the vm
poweroff

# ----- OUT OF VM ----
# copy files from host you want to have on vm
# for example we will copy it to /root/
virt-copy-in -a image/Fedora-Minimal-Rawhide-20200108.n.0-sda.raw <path-files-you-want-to-copy> /root/

# now when you boot the vm your files will be in /root/ directory
./launch_qemu.sh

# ----- IN VM ----
cd /root/
ls # to see your files
#... do what you want
```

#### ROOT PASSWORD
```
username: root
password: riscv
```

#### HOW TO MOVE DIRECTORY FROM HOST TO FILESYSTEM OF THE VM
`virt-copy-in -a image/Fedora-Minimal-Rawhide-20200108.n.0-sda.raw <path-to-file/directory-on-host> <path-to-file/directory-on-guest>` \

- path-to-file/directory-on-host - Directry/File you want to copy from your filesystem to guest

- path-to-file/directory-on-guest - Directory/File name you want to be destination in guest filesystem

#### TO TURN OF THE QEMU MACHINE JUST CALL
`poweroff`
