img="nvcr.io/nvidia/pytorch:22.01-py3" 

docker run --gpus all  --privileged=true   --workdir /git --name "testformer"  -e DISPLAY --ipc=host -d --rm  -p 6335:8889 \
-v /home/ggzhang/ETSformer:/git/ETSformer \
 -v /home/ggzhang/datasets:/git/datasets \
 $img sleep infinity

docker exec -it testformer /bin/bash

#docker images  |grep "pytorch"  |grep "21."

#docker stop  testformer

docker exec -it testformer /bin/bash
