mkdir image
wget https://dl.fedoraproject.org/pub/alt/risc-v/repo/virt-builder-images/images/Fedora-Minimal-Rawhide-20200108.n.0-sda.raw.xz
mv Fedora-Minimal-Rawhide-20200108.n.0-sda.raw.xz image/
cd image 
unxz Fedora-Minimal-Rawhide-20200108.n.0-sda.raw.xz  
cd -

