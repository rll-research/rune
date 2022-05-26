for seed in 12345 23451 34512 45123 51234; do
    python train_PrefPPO_explore.py --env metaworld_button-press-v2 --seed $seed --date $1  --lr 0.0003 --batch-size 128 --n-envs 16 --ent-coef 0.0 --n-steps 250 --total-timesteps 4000000 --num-layer 3 --hidden-dim 256 --clip-init 0.4 --gae-lambda 0.92  --re-feed-type 1 --re-num-interaction 10000 --teacher-beta -1 --teacher-gamma 1 --teacher-eps-mistake 0 --teacher-eps-skip 0 --teacher-eps-equal 0 --re-segment 50 --unsuper-step 32000 --unsuper-n-epochs 50 --re-max-feed 10000 --re-batch 100 --re-update 50
done
