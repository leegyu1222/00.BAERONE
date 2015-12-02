/*
 * 비콘구분
 */
select delivery_no 
from delivery 
where sender_id = 'user02' 
or  receiver_id = 'user02'
and delivery_date like '2015-12-01%'
and delivery_status != '결제완료' ;