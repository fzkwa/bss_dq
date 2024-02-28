insert into ods.casa_account 
(business_date,source_system_code,account_number,customer_identifier,crn_number,account_customer_name,account_branch_code,account_branch_code_description,account_type_code,account_type_description,account_status,account_open_date,account_close_date,last_transaction_date,original_currency_code,outstanding_balance_amount,ledger_balance_amount,available_balance_amount,overdraft_limit_amount,overdraft_outstanding_amount,start_overdraft_facility_date,overdraft_expiry_date,renewal_overdraft_facility_date,pastdue_days,interest_type_code,interest_rate,joint_account_flag,last_debit_date,last_credit_date,last_maintenance_date,economic_sector_code,economic_sector_description,card_number,bic_code,principle_pastdue_amount,interest_pastdue_amount,bi_loan_type_code,bi_loan_type_description,bi_loan_orientation_type_code,bi_loan_orientation_type_description,bi_loan_characteristic_type_code,bi_loan_characteristic_type_description,bi_loan_purpose_type_code,bi_loan_purpose_type_description,bi_loan_location_code,bi_loan_location_description,bi_debtor_group_code,bank_relationship_type_code,dhe_sda_flag,old_customer_number,collectibility_code,officer_id,inputter,authorizer,record_last_update_date)
select
	cast(account.batch_date as date) as business_date,
	cast('BSS' as varchar(3)) as source_system_code,
	cast(account.id as varchar(50)) as account_number,
	cast(account.customer_no as varchar(50)) as customer_identifier,
	cast(null as varchar(50)) as crn_number,
	cast(account.account_title_1 as varchar(255)) as account_customer_name,
	cast(account.co_code as varchar(50)) as account_branch_code,
	cast(company.company_name as varchar(255)) as account_branch_code_description,
	cast(account.category as varchar(50)) as account_type_code,
	cast(category.description as varchar(50)) as account_type_description,
	cast(case when account_closure.id is not null then 'C' else 'A' end as varchar(1)) as account_status,
	cast(case when account.opening_date='' then null else account.opening_date end as date) as account_open_date,
	cast(case when account_closure.capital_date ='' then null else account_closure.capital_date end as date) as account_close_date,
	cast(alt.last_transaction_date as date) as last_transaction_date, 
	cast(account.currency as varchar(3)) as original_currency_code,
	cast(case when account.online_actual_bal = '' then null else account.online_actual_bal end as decimal(16,2)) as outstanding_balance_amount,
	cast(null as decimal(16,2)) as ledger_balance_amount,
	cast(case when account.available_bal='' then null else account.available_bal end as decimal(16,2)) as available_balance_amount,
	cast(null as decimal(16,2)) as overdraft_limit_amount,
	cast(null as decimal(16,2)) as overdraft_outstanding_amount,
	cast(null as date) as start_overdraft_facility_date,
	cast(null as date) as overdraft_expiry_date,
	cast(null as date) as renewal_overdraft_facility_date,
	cast(null as varchar(50)) as pastdue_days,
	cast(null as varchar(5)) as interest_type_code,
	cast(null as decimal(16,2)) as interest_rate,
	cast(case when (nullif(account.joint_holder,'') is not null) then 'Y' else 'N' end as varchar(1)) as joint_account_flag,
	cast(ald.last_debit_date as date) as last_debit_date,
	cast(alc.last_credit_date as date) as last_credit_date,
	cast(null as date) as last_maintenance_date,
	cast(null as varchar(50)) as economic_sector_code,
	cast(null as varchar(50)) as economic_sector_description,
	cast(null as varchar(50)) as card_number,
	cast(null as varchar(50)) as bic_code,
	cast(null as decimal(16,2)) as principle_pastdue_amount,
	cast(null as decimal(16,2)) as interest_pastdue_amount,
	cast(null as varchar(50)) as bi_loan_type_code,
	cast(null as varchar(50)) as bi_loan_type_description,
	cast(null as varchar(50)) as bi_loan_orientation_type_code,
	cast(null as varchar(50)) as bi_loan_orientation_type_description,
	cast(null as varchar(50)) as bi_loan_characteristic_type_code,
	cast(null as varchar(50)) as bi_loan_characteristic_type_description,
	cast(null as varchar(50)) as bi_loan_purpose_type_code,
	cast(null as varchar(50)) as bi_loan_purpose_type_description,
	cast(null as varchar(50)) as bi_loan_location_code,
	cast(null as varchar(50)) as bi_loan_location_description,
	cast(null as varchar(50)) as bi_debtor_group_code,
	cast(null as varchar(50)) as bank_relationship_type_code,
	cast(null as varchar(1)) as dhe_sda_flag,
	cast(null as varchar(50)) as old_customer_number,
	cast(null as varchar(1)) as collectibility_code,
	cast(account.account_officer as varchar(50)) as officer_id,
	cast(account.inputter as varchar(50)) as inputter,
	cast(account.authoriser as varchar(50)) as authorizer,
	cast(case when account.date_last_update='' then null else account.date_last_update end as timestamp) as record_last_update_date
from landing.bss_account account
left join landing.bss_company company on account.co_code = company.id
left join landing.bss_category category on account.category = category.id
left join landing.bss_account_closure account_closure on account.id = account_closure.id
left join (
	select 
		id, 
		max(last_debit_date) last_debit_date from 
	(
	select id, cast(case when date_last_dr_cust='' or date_last_dr_cust='NULL' then null else date_last_dr_cust end as date) last_debit_date from landing.bss_account where date_last_dr_cust <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_dr_auto='' or date_last_dr_auto='NULL' then null else date_last_dr_auto end as date) last_debit_date from landing.bss_account where date_last_dr_auto <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_dr_bank='' or date_last_dr_auto='NULL' then null else date_last_dr_bank end as date) last_debit_date from landing.bss_account where date_last_dr_bank <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	) y
	group by id
) as ald on account.id = ald.id
left join (
	select 
		id, 
		max(last_credit_date) last_credit_date from (
	select id, cast(case when date_last_cr_cust='' or date_last_cr_cust='NULL' then null else date_last_cr_cust end as date) last_credit_date from landing.bss_account where date_last_cr_cust <>'' and length(category)=4 and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_cr_auto='' or date_last_cr_auto='NULL' then null else date_last_cr_auto end as date) last_credit_date from landing.bss_account where date_last_cr_auto <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_cr_bank='' or date_last_cr_bank='NULL' then null else date_last_cr_bank end as date) last_credit_date from landing.bss_account where date_last_cr_bank <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	) x
	group by id
) as alc on account.id = alc.id
left join (
	select 
		id, 
		max(last_transaction_date) last_transaction_date from 
	(
	select id, cast(case when date_last_cr_cust='' or date_last_cr_cust='NULL' then null else date_last_cr_cust end as date) last_transaction_date from landing.bss_account where date_last_cr_cust <>'' and length(category)=4 and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_cr_auto='' or date_last_cr_auto='NULL' then null else date_last_cr_auto end as date) last_transaction_date from landing.bss_account where date_last_cr_auto <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_cr_bank='' or date_last_cr_bank='NULL' then null else date_last_cr_bank end as date) last_transaction_date from landing.bss_account where date_last_cr_bank <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_dr_cust='' or date_last_dr_cust='NULL' then null else date_last_dr_cust end as date) last_transaction_date from landing.bss_account where date_last_dr_cust <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_dr_auto='' or date_last_dr_auto='NULL' then null else date_last_dr_auto end as date) last_transaction_date from landing.bss_account where date_last_dr_auto <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	union all
	select id, cast(case when date_last_dr_bank='' or date_last_dr_bank ='NULL' then null else date_last_dr_bank end as date) last_transaction_date from landing.bss_account where date_last_dr_bank <>'' and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))
	) z
	group by id
) as alt on account.id = alt.id
where length(account.category)=4 and (left(category,2) in ('60','61','62') or left(category,2) in ('10','11','12'))