DROP TABLE IF EXISTS likes_media;
CREATE TABLE likes_media(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    deleted_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (user_id, media_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);
DROP TABLE IF EXISTS likes_users_posts;
CREATE TABLE likes_users_posts(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    users_posts_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    deleted_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (user_id, users_posts_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (users_posts_id) REFERENCES users_posts(id)
);
DROP TABLE IF EXISTS likes_users;
CREATE TABLE likes_users(
	id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    deleted_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (from_user_id, to_user_id),
	FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);