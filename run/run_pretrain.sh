export CUDA_VISIBLE_DEVICES=0,1,2,3
python -W ignore pretrain.py                    \
 -a lsqmobilenetv2                                 \
 -c checkpoints/lsqmobilenetv2_lr001b64e150_cifar100_w8a8  \
 --epochs 150                                   \
 --data data/cifar100                           \
 --data_name cifar100                           \
 --lr 0.01                                      \
 --wd 1e-4                                   \
 --obs 2000                                 \
 --train_batch 128                              \
 --workers 32                                   \
 --bits 8                                       \
#  --half                                         \
#  --pretrained                                   \

