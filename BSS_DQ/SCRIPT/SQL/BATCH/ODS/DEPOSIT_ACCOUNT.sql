insert into ods.deposit_account
(business_date,source_system_code,account_number,customer_identifier,crn_number,account_customer_name,account_branch_code,account_branch_code_description,account_type_code,account_type_description,account_status,contract_number,account_open_date,contract_date,account_closed_date,maturity_date,account_start_date,deposit_period_code,deposit_period_description,tenor_period,aro_indicator,aro_indicator_description,original_currency_code,original_deposit_amount,current_deposit_amount,interest_day_basis_code,interest_rate_code,interest_rate,total_interest_amount,last_rollover_date,next_rollover_date,next_interest_payment_amount,tax_rate,principal_credit_account_number_text,interest_credit_account_number_text,joint_account_flag,schedule_date,officer_id,inputter,authorizer,record_last_update_date)
select
cast(account.batch_date as date) as business_date,
cast('BSS' as text) as source_system_code,
cast(account.id as varchar(50)) as account_number,
cast(account.customer_no as varchar(50)) as customer_identifier,
cast(null as varchar(50)) as crn_number,
cast(account.account_title_1 as varchar(255)) as account_customer_name,
cast(account.co_code as varchar(50)) as account_branch_code,
cast(company.company_name as varchar(255)) as account_branch_code_description,
cast(account.category as varchar(50)) as account_type_code,
cast(category.description as varchar(50)) as account_type_description,
cast(case when account_closure.id is not null then 'C' else 'A' end as varchar(10)) as account_status,
cast(account.arrangement_id as varchar(50)) as contract_number,
cast(nullif(account.opening_date,'') as date) as account_open_date,
cast(null as date) as contract_date, 
cast(nullif(account_closure.capital_date,'') as date) as account_closed_date,
cast(null as date) as maturity_date,
cast(null as date) as account_start_date,
cast(null as varchar(2)) as deposit_period_code,
cast(null as varchar(50)) as deposit_period_description,
cast(null as varchar(5)) as tenor_period,
cast(null as varchar(1)) as aro_indicator,
cast(null as varchar(50)) as aro_indicator_description,
cast(account.currency as varchar(3)) as original_currency_code,
cast(null as decimal(162)) as original_deposit_amount,
cast(nullif(account.online_actual_bal,'') as decimal(16,2)) as current_deposit_amount,
cast(null as varchar(10)) as interest_day_basis_code,
cast(null as varchar(10)) as interest_rate_code,
cast(null as decimal(13,7)) as interest_rate,
cast(null as decimal(16,2)) as total_interest_amount,
cast(null as date) as last_rollover_date,
cast(null as date) as next_rollover_date,
cast(null as decimal(16,2)) as next_interest_payment_amount,
cast(null as decimal(13,7)) as tax_rate,
cast(null as varchar(50)) as principal_credit_account_number_text,
cast(null as varchar(50)) as interest_credit_account_number_text,
cast(case when (nullif(account.joint_holder,'') is not null) then 'Y' else 'N' end as varchar(1)) as joint_account_flag,
cast(null as date) as schedule_date,
cast(account.account_officer as varchar(50)) as officer_id,
cast(account.inputter as varchar(50)) as inputter,
cast(account.authoriser as varchar(50)) as authorizer,
cast(nullif(account.date_last_update,'') as timestamp) as record_last_update_date
from landing.bss_account account
left join landing.bss_company company on account.co_code = company.id
left join landing.bss_category category on account.category = category.id
left join landing.bss_account_closure account_closure on account.id = account_closure.id
where length(account.category)=4 and (left(account.category,2) between '66' and '69')