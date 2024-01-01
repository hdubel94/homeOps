apt install -y nfs-common #DO THIS FOR ALL NODES

# Add repo to helm  
helm repo add nfs-subdir-external-provisioner <https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/>  

# Install  
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \  
--set nfs.server=192.158.1.155 \  
--set nfs.path=/nfs/k3s \  
--create-namespace \  
--namespace nfs-system