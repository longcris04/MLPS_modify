# python 1_train_stage1.py --dataset luad --trainroot datasets/LUAD-HistoSeg/train/ --testroot datasets/LUAD-HistoSeg/test/ --max_epoches 20 --batch_size 64 --gpu 1 --weights ./init_weights/ilsvrc-cls_rna-a1_cls1000_ep-0001.params
# python 2_generate_PM.py --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/ --dataset luad --gpu 1 --weights checkpoints/stage1_checkpoint_trained_on_luad.pth
# python 3_train_stage2.py --dataset luad --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/ --batch-size 64 --epochs 30 --Is_GM False --resume init_weights/deeplab-resnet.pth.tar 

# python 3_train_stage2.py --dataset luad --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/ --epochs 1 --Is_GM False 
#--resume /home/22long.nh/Projects/Pathology/WSSS/WSSS-Tissue/init_weights/deeplab-resnet.pth.tar --gpu 1

# python 1_train_stage1.py --dataset luad --trainroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/train/ --testroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/test/ --max_epoches 20 --batch_size 64 --gpu 1 --weights ./init_weights/ilsvrc-cls_rna-a1_cls1000_ep-0001.params
 
python 3_train_stage2.py --model timm-resnest101e --dataset luad --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/
python 3_train_stage2.py --model mit_b4 --dataset luad --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/
python 3_train_stage2.py --model se_resnet152 --dataset luad --dataroot /mnt/disk1/backup_user/22long.nh/WSSS-Tissue/datasets/LUAD-HistoSeg/

