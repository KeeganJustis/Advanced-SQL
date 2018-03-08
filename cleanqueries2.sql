
USE sample_staff;

CREATE OR REPLACE VIEW v_user_login AS SELECT 

    user_login.id AS 'user_login_id',

    user_login.user_id AS 'user_login_user_id',

    user.name AS 'Name' ,

    user_login.ip_address AS 'ip_address' ,

    INET_NTOA(user_login.ip_address) AS 'formated_ip_address' , 

    user_login.login_dt AS 'login_dt'

    FROM sample_staff.user_login 

    LEFT JOIN sample_staff.user  ON  1=1 
        AND user_login.user_id=user.id
    WHERE 1=1
        AND user_login.deleted_flag=0
    ORDER BY
        user_login.id DESC   ;

