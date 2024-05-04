# index
create index comments_post_id_idx on comments (post_id, created_at DESC);
create index comments_user_id_idx on comments (user_id);

# create index posts_user_id_idx on posts (user_id);
create index posts_created_at_idx on posts (created_at DESC);
create index posts_user_id_created_at_idx on posts (user_id, created_at DESC);

# create index users_del_flg_idx on users (del_flg);
# create index users_created_at_idx on users (created_at DESC);
