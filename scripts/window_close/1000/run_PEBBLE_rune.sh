for seed in 12345 23451 34512 45123 51234; do
    python train_PEBBLE_explore.py env=metaworld_window-close-v2 experiment=PEBBLE-RUNE date=$1 agent.params.actor_lr=0.0003 agent.params.critic_lr=0.0003 gradient_update=1 activation=tanh num_train_steps=500000 agent.params.batch_size=512 double_q_critic.params.hidden_dim=256 double_q_critic.params.hidden_depth=3 diag_gaussian_actor.params.hidden_dim=256 diag_gaussian_actor.params.hidden_depth=3 reward_update=10 reward_batch=10 max_feedback=1000 num_unsup_steps=9000 feed_type=1 large_batch=10 num_interact=10000 seed=$seed
done
