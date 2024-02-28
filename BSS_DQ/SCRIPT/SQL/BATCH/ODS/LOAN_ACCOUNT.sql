insert into ods.loan_account
(business_date,source_system_code,account_identifier,account_number,customer_identifier,crn_number,customer_name,branch_code,branch_code_description,account_type_code,account_type_description,account_subproduct_code,account_subproduct_description,account_status_flag,account_status_description,loan_start_date,agreement_date,maturity_date,original_currency_code,drawdown_account,disbursed_amount,total_interest_amount,outstanding_balance_amount,interest_calculation_basis_code,interest_type_code,interest_rate,new_interest_rate,principal_loan_account,interest_loan_account,increase_amount,restructure_date,economic_sector_code,department_code,officer_id,other_officer_id,inputter,authorizer)
select
cast(ld.batch_date as date) as business_date,
cast('BSS' as text) as source_system_code,
cast(ld.id as varchar(50)) as account_identifier,
cast(ld.customer_id||'.000'||ld.limit_reference as varchar(50)) as account_number,
cast(ld.customer_id as varchar(50)) as customer_identifier,
cast('' as varchar(50)) as crn_number,
cast(customer.name_1 as varchar(255)) as customer_name,
cast(ld.co_code as varchar(50)) as branch_code,
cast(company.company_name as varchar(255)) as branch_code_description,
cast(ld.category as varchar(50)) as account_type_code,
cast(category.description as varchar(50)) as account_type_description,
cast(ld.sub_product as varchar(50)) as account_subproduct_code,
cast(ld_sub_product.description as varchar(50)) as account_subproduct_description,
cast(ld.overdue_status as varchar(1)) as account_status_flag,
cast(case when ld.amount = '0' and cast(case when ld.fin_mat_date ='' then null else ld.fin_mat_date end as date) <= cast(ld.batch_date as date) then 'PAIDOFF' else case when UPPER(ld.overdue_status)='FWOF' then 'WRITEOFF' else 'ACTIVE' end end as varchar(50)) as account_status_description,
cast(case when ld.value_date = '' then null else ld.value_date end as date) as loan_start_date,
cast(case when ld.agreement_date = '' then null else ld.agreement_date  end as date) as agreement_date,
cast(case when ld.fin_mat_date = '' then null else ld.fin_mat_date end as date) as maturity_date,
cast(ld.currency as varchar(3)) as original_currency_code,
cast(ld.drawdown_account as varchar(50)) as drawdown_account,
cast(case when ld.drawdown_net_amt ='' then '0' else ld.drawdown_net_amt end as decimal(16,2)) as disbursed_amount,
cast(case when ld.tot_interest_amt ='' then '0' else ld.tot_interest_amt end as decimal(16,2)) as total_interest_amount,
cast(case when ld.amount ='' then '0' else ld.amount end as decimal(16,2)) as outstanding_balance_amount,
cast(ld.interest_basis as varchar(5)) as interest_calculation_basis_code,
cast(ld.int_rate_type as varchar(5)) as interest_type_code,
cast(case when ld.interest_rate ='' then '0' else ld.interest_rate end as decimal(13,7)) as interest_rate,
cast(case when ld.new_int_rate ='' then '0' else ld.new_int_rate end as decimal(13,7)) as new_interest_rate,
cast(case when ld.prin_liq_acct ='' then '0' else ld.prin_liq_acct end as varchar(50)) as principal_loan_account,
cast(case when ld.int_liq_acct = '' then '0' else ld.int_liq_acct end as varchar(50)) as interest_loan_account,
cast(case when ld.amount_increase='' then '0' else ld.amount_increase end as decimal(16,2)) as increase_amount,
cast(case when ld.ld_restruct_dt='' then null else ld.ld_restruct_dt end as date) as restructure_date,
cast(ld.sector as varchar(50)) as economic_sector_code,
cast(ld.dept_code as varchar(50)) as department_code,
cast(ld.mis_acct_officer as varchar(50)) as officer_id,
cast(ld.oth_ac_officer as varchar(50)) as other_officer_id,
cast(ld.inputter as varchar(50)) as inputter,
cast(ld.authoriser as varchar(50)) as authorizer
from landing.bss_ld ld
left join landing.bss_customer customer on ld.customer_id = customer.id
left join landing.bss_company company on ld.co_code = company.id
left join landing.bss_category category on ld.category = category.id
left join landing.bss_ld_sub_product ld_sub_product on ld.sub_product = ld_sub_product.id

union all

select
	cast(temp_loan.batch_date as date) as business_date,
	cast('ARO' as text) as source_system_code,
	cast(temp_loan.refnocustid as varchar(50)) as account_identifier,
	cast(temp_loan.refno as varchar(50)) as account_number,
	cast(customer.nocif_aro as varchar(50)) as customer_identifier,
	cast('' as varchar(50)) as crn_number,
	cast(customer.fullname as varchar(255)) as customer_name,
	cast(temp_loan.branchcode as varchar(50)) as branch_code,
	cast(company.company_name as varchar(255)) as branch_code_description,
	cast(temp_loan.credittypeid as varchar(50)) as account_type_code,
	cast('' as varchar(50)) as account_type_description,
	cast(null as varchar(50)) as account_subproduct_code,
	cast(null as varchar(50)) as account_subproduct_description,
	cast(temp_loan.status as varchar(1)) as account_status_flag,
	cast(null as varchar(50)) as account_status_description,
	cast(case when temp_loan.disbursedate = '' then null else temp_loan.disbursedate end as date) as loan_start_date,
	cast(null as date) as agreement_date,
	cast(null as date) as maturity_date,
	cast(null as varchar(3)) as original_currency_code,
	cast(null as varchar(50)) as drawdown_account,
	cast(case when temp_loan.objectvalue ='' then null else temp_loan.objectvalue end as decimal(16,2)) as disbursed_amount,
	cast(null as decimal(16,2)) as total_interest_amount,
	cast(null as decimal(16,2)) as outstanding_balance_amount,
	cast(null as varchar(5)) as interest_calculation_basis_code,
	cast(null as varchar(5)) as interest_type_code,
	cast(case when temp_loan.effectiverate = '' then null else temp_loan.effectiverate end as decimal(13,7)) as interest_rate,
	cast(null as decimal(13,7)) as new_interest_rate,
	cast(case when temp_loan.principaltotal = '' then null else temp_loan.principaltotal end as varchar(50)) as principal_loan_account,
	cast(null as varchar(50)) as interest_loan_account,
	cast(null as decimal(16,2)) as increase_amount,
	cast(null as date) as restructure_date,
	cast(null as varchar(50)) as economic_sector_code,
	cast(null as varchar(50)) as department_code,
	cast(null as varchar(50)) as officer_id,
	cast(null as varchar(50)) as other_officer_id,
	cast(null as varchar(50)) as inputter,
	cast(null as varchar(50)) as authorizer
from landing.aro_temp_loan temp_loan
left join landing.aro_temp_cif customer on temp_loan.refnocustid = customer.refnocustid
left join landing.bss_company company on temp_loan.branchcode = company.id