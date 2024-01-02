#!bash

# 拉ubuntu latest
docker pull ubuntu

docker run -ti ubuntu /bin/bash

# exit： ctrl+p 然后 ctrl+q , container会在后台继续运行