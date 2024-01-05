# download
sudo apt update
sudo apt install -y curl
sudo mkdir /opt/intel
cd /opt/
curl -L https://storage.openvinotoolkit.org/repositories/openvino/packages/2022.3.1/linux/l_openvino_toolkit_ubuntu20_2022.3.1.9227.cf2c7da5689_x86_64.tgz --output openvino_2022.3.1.tgz
tar -xf openvino_2022.3.1.tgz
sudo mv l_openvino_toolkit_ubuntu20_2022.3.1.9227.cf2c7da5689_x86_64 /opt/intel/openvino_2022.3.1

cd /opt/intel/openvino_2022.3.1
sudo -E ./install_dependencies/install_openvino_dependencies.sh

# soft link
cd /opt/intel
sudo ln -s openvino_2022.3.1 openvino_2022