/*
 * ���ܱ���
 */
select delivery_no 
from delivery 
where sender_id = 'user02' 
or  receiver_id = 'user02'
and delivery_date like '2015-12-01%'
and delivery_status != '�����Ϸ�' ;