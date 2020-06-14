use vk;
-- задание 2
select * from users
 where id in (select to_user_id from messages where to_user_id 
        in (select target_user_id from friend_requests where initiator_user_id = 99 and status = 'approved'
            union
          select initiator_user_id from friend_requests where target_user_id = 99 and status = 'approved') order by to_user_id asc);
          
          
-- задание 3
Select to_user_id, count(*), (select birthday from profiles where user_id = likes_users.to_user_id) as 'birthday' from likes_users where to_user_id in (select id from users) GROUP BY birthday desc WITH ROLLUP limit 10;
