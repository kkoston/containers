if [ "$1" == "" ]; then
    echo "Usage mkcotn.sh <machine name>"
    exit 1
fi

echo Provisioning new machine: $1, system: ArchLinux

systemd-nspawn --machine=$1 --network-veth --network-bridge=br0 -bD /root/containers/$1
