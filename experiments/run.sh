python=/home/comp/20481896/anaconda3/envs/py36/bin/python

# python main.py --name=runs/resnet50/resnet50_prune72 --dataset=cifar10 \
# --lr=0.001 --lr-decay-every=10 --momentum=0.9 --epochs=25 --batch-size=256 \ 
# --pruning=True --seed=0 --model=resnet50 --load_model=./models/pretrained/resnet50-19c8e357.pth \
# --wd=0.0 --tensorboard=True --pruning-method=22 \
# --data=/imagenet/ --no_grad_clip=True --pruning_config=./configs/imagenet_resnet50_prune72.json


model=resnet18
dataset=CIFAR10

# tensorboard --bind_all --port=12030 --logdir runs/resnet18/resnet18_prune72


python main.py --name=runs/${model}/${model}_prune56 --dataset=${dataset} \
--lr=0.001 --lr-decay-every=10 --momentum=0.9 --epochs=25 --batch-size=256 \
--pruning=True --seed=0 --model=${model} \
--wd=0.0 --tensorboard=True --pruning-method=22 \
--data="~/datasets/cifar10" --no_grad_clip=True --pruning_config=./configs/${dataset}_${model}_prune56.json \
--gpu=3







