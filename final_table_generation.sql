create table sample_table(
	npi integer,
	is_fraud integer,
	total_claims integer,
	total_drug_cost numeric,
	provider_last_name varchar,
	provider_first_name varchar,
	provider_city varchar,
	provider_state varchar
);
drop table sample_table;



INSERT INTO sample_table
SELECT 
     *
FROM 
     drug_and_exclusion
	 
where is_fraud =1;

drop view sample_table2
create view sample_table2 as
SELECT npi,COALESCE(is_fraud, 0) as is_fraud,
total_claims,
total_drug_cost,
provider_last_name,
provider_first_name,
provider_city,
provider_state
from sample_table;

drop table final_table;

create table final_table as
select a.*, b.total_payment

from sample_table2 as a
inner join provider_payment_info as b
on a.provider_last_name = b.physician_last_name
and a.provider_first_name = b.physician_first_name
and a.provider_city = b.recipient_city
and a.provider_state = b.recipient_state;

select * from final_table;