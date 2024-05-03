create index comments_post_id_idx on comments (post_id);
create index comments_user_id_idx on comments (user_id);

create index posts_user_id_idx on posts (user_id);

# 要検証
create index comments_created_at_idx on comments (created_at);
