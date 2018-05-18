cd dpdk-stable-17.05.2
sed -i "s/pci_intx_mask_supported(dev)/pci_intx_mask_supported(dev)||true/g" lib/librte_eal/linuxapp/igb_uio/igb_uio.c
patch -p 1 < 0001-PATCH-kni-use-netlink-event-for-multicast-driver-par.patch
make config T=x86_64-native-linuxapp-gcc
make 
export RTE_SDK=$PWD

