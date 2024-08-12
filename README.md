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
