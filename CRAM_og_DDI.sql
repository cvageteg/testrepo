select O.*--, to_char(O.response_time, 'DD.MM.YYYY HH24:MI:SS')  --> 31-10-2016 08:50:00
from ogs_soap_requests O
where subscriber_id in  '45' || '20149941' 
--where subscriber_id = '45VK101331'
--where cu_order_id = '263370182' 
--where order_id = '00DD2C12D07FCD8C0200068C02'
--where subscriber_id not like '45VK%'
-- order_type = 'expireSubscriber'
--and order_type = 'modifySubscriber'
--where order_type = 'adDdiRange'
--and response_code = 'CR-0000'
--and request_time > sysdate - 60--
--where soap_xml like '%44747372%'
--and soap_xml not like '%DataLimitPrivate%'
--where request_time > sysdate - 10
--and  response_time between to_date('03-10-2022 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and to_date('06-10-2022 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
--and response_info not like '%4596210020'
--and cu_order_id != '252666879'
--and response_code = 'CR-0004'-- not in ('CR-0000')
--and subscriber_id != '4520424312'
--and rownum < 10
order by  response_time desc;

USDPP02-VK117299

Command> select * from trs_arp_subscriber where subscriber_parent_id = '4561208916';
< 26807516, <NULL>, <NULL>, 4520518963, 4520518963, 4561208916 >
< 79604323, <NULL>, <NULL>, 4520599354, 4520599354, 4561208916 >


select * from error_cdr;

select * from ogs_soap_requests where 
request_time between sysdate - 20 and sysdate - 10
and order_type = 'addDdiRange'
and response_code = 'CR-0000'
and rownum < 20;

select to_char(to_date('20230717000100', 'YYYYMMDDHH24MISS') -1/24/60/60, 'DD.MM.YYYY HH24:MI:SS') new_date  from dual;

select to_char(to_date(substr(to_char('2018-06-15 16:59:49.672843'),1,19), 'YYYY-MM-DD HH24:MI:SS'), 'DD.MM.YYYY HH24:MI:SS') dato from dual;

***********

select to_char(to_date('01.02.2023 07:30:00', 'DD.MM.YYYY HH24:MI:SS') -1/24/60/60, 'DD.MM.YYYY HH24:MI:SS') from dual; --> subscriber

select to_char(to_date('01.02.2023 07:30:00', 'DD.MM.YYYY HH24:MI:SS') -1/24/60/60, 'YYYY-MM-DD HH24:MI:SS') from dual; --> subscription

*********************

select /*PARALLEL(O,8) FULL(O) */ to_char(substr(response_time,1,16)) dato, count(*) antal --subscriber_id, order_id, cu_order_id --, to_char(O.response_time, 'DD.MM.YYYY HH24:MI:SS')  --> 31-10-2016 08:50:00
from ogs_soap_requests O
where response_time between  to_date('15-03-2022 07:00:00', 'DD-MM-YYYY HH24:MI:SS') and to_date('15-03-2022 09:00:00', 'DD-MM-YYYY HH24:MI:SS')
--and response_code = 'CR-0000'
group by to_char(substr(response_time,1,16))
order by 1 desc;   

/****/

select distinct subscriber_no, product_type, notification_type, to_date(notification_date, 'DD-MM-YYYY HH24:MI:SS') notification_date--, file_name 
from ogs_speeddrop_log 
--where subscriber_no in ('4529174652')
--where product_type = 'DataLimitPrivate'
--and notification_type = 100
where notification_date > sysdate - 5
--and product_type like 'VoiceIntUd%'
--and product_type not in ('ErhVolumeNotify', 'DailyDataLimit', 'VoiceLimitPrivate')
--and rownum < 30
order by 4 desc;
--and product_type not in ('SharedUsageDataLimit', 'DataLimitPrivate', 'ErhDataLimit', 'SharedUsageDataLimitGroup1', 'DailyDataLimit', 'DataStep4', 'DataStep1', 'DataLimitPrivate1')

select trunc(notification_date), count(*)
from ogs_speeddrop_log 
where notification_date  between to_date('07-03-2022 07:42:00', 'DD-MM-YYYY HH24:MI:SS') and to_date('31-03-2022 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
group by trunc(notification_date)
order by 1 desc;

6

Table CRAM.DDI_RANGES:
  Columns:
    START_NUMBER                    VARCHAR (255) NOT INLINE NOT NULL
    STOP_NUMBER                     VARCHAR (255) NOT INLINE NOT NULL
    SUBSCRIBER_ID                   VARCHAR (255) NOT INLINE NOT NULL
    START_DATE                      TIMESTAMP NOT NULL
    STOP_DATE                       TIMESTAMP
  
select * from ddi_ranges where '4538698900' between start_number and stop_number;

select to_char(to_date('20230329073000', 'YYYYMMDDHH24MISS') -1/24/60/60, 'YYYY-MM-DD HH24:MI:SS') || '.000000' from dual;


58588120 - 58588199


< 4558588100, 4558588209, 45VK101750, 2016-10-01 00:00:00.000000, 2020-11-03 08:43:59.000000 >


select * from ddi_ranges where subscriber_id = '45VK101750' and start_number like '455858%'order by start_number; 

select * from ddi_ranges where subscriber_id = '45VK101750' and start_number like and stop_date is null;

insert into ddi_ranges values (
'4558588120',
'4558588199',
'45VK101750',
'2023-06-01 07:29:59.000000',
null
);


 update ddi_ranges
 set stop_date = '2023-03-29 07:29:59.000000'
 where subscriber_id = '45VK101750'
 and start_number = '4554866508'
 and stop_number = '4554866508'
 and start_date = '2022-06-14 09:20:00.000000'
;
 
 update ddi_ranges
 set stop_date = '2023-03-01 07:29:59.000000'
 where subscriber_id = '45VK101750'
 and start_number = '4533288881'
 and stop_number = '4533288887'
 and start_date = '2022-12-05 07:30:00.000000'
;

 update ddi_ranges
 set stop_date = '2023-03-01 07:29:59.000000'
 where subscriber_id = '45VK101750'
 and start_number = '4533288888'
 and stop_number = '4533288888'
 and start_date = '2022-12-05 07:30:00.000000'
;

 update ddi_ranges
 set stop_date = '2023-03-01 07:29:59.000000'
 where subscriber_id = '45VK101750'
 and start_number = '4533288889'
 and stop_number = '4533288889'
 and start_date = '2022-12-05 07:30:00.000000'
;

insert into ddi_ranges values (
'4597321448',
'4597321448',
'45VK101750 ',
'2023-04-05 05:30:00.000000',
null
);


*****************************************************
delete from ddi_ranges where subscriber_id = '45VK101750'
and start_number = '4587453100'
and stop_number = '4587453119'


update ddi_ranges
 set start_date = '2019-06-18 09:52:00.000000'
 where subscriber_id = '45VK101750'
 and start_number = '4548168100'
 and stop_number = '4548168199'
 and start_date = '2019-06-18 11:12:00.000000';


update ddi_ranges
set stop_date = '2017-03-08 06:27:59.000000'
where subscriber_id = '45VK1045VK1017505101'
and start_number = '4532466120'
and stop_date = '2017-05-16 11:11:01.000000';


select * from ddi_ranges
where subscriber_id = '45VK101750'
and start_number like '45391506%'
order by start_number;

***************************************

create table cava_ddi as select subscriber_no from subscriber where 1=2

select 'insert into ddi_ranges values (''' || subscriber_no || ''', ''' || subscriber_no || ''', ''45VK104887'', ''2017-08-01 07:30:00.000000'', null);' from cava_ddi where subscriber_no between '4587472080' and '4587472083'

select * from ddi_ranges where '4586261700' between start_number and stop_number

update ddi_ranges
 set stop_date = '2017-08-01 06:27:00.000000' 
 where subscriber_id = '45VK104887'
 and start_number = '4587434240'
 and stop_number = '4586371944'
 --and stop_date = '2017-06-21 11:32:59.000000'
 and start_date = '2018-10-24 07:30:00.000000';
  
insert into ddi_ranges values (
'4586371944',
'4586371944',
'45VK104887',
'2017-08-01 07:30:00.000000',
null);
 
****************************************
select ACCOUNT_T_NAME, VALID_UNTIL, PREVIOUS_VALID_FROM, BALANCE, LAST_B
from CRAM.TRS_ARP_ACCOUNT
where primary_id = '4529174652'
;



