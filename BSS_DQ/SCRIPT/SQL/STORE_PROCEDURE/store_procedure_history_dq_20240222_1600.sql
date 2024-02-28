CREATE OR REPLACE PROCEDURE ods.sp_ods_history_batch(interval_data integer)
 LANGUAGE plpgsql
AS $procedure$
begin
    -- RAISE NOTICE 'sp_ods_history start';
    -- --delete before insert
    -- RAISE NOTICE 'delete before insert - start';
    delete from landing_hist.bss_account where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_closed where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_closure where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_credit_int where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_prk where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_categ_entry where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_category where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_collateral where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_collateral_right where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_company where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_currency where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_customer where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_de_address where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_eb_contract_balances where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_funds_transfer where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_kyc_sumber_dana where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_lbu_sektor_economy where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_ld where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_ld_sub_product where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_limit where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_md_deal where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_pd where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_pd_payment_due where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_consol_spec_entry where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_stat_line_bal where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_stat_rep_line where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_repo where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sc_trading_position where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sec_acc_master where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sec_trade where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sector where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_security_master where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_security_position where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_stmt_entry where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_stmt_entry_detail where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_teller_transaction where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_transaction where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_transaction_teller where cast(batch_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.casa_account where cast(business_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.customer where cast(business_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.deposit_account where cast(business_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.loan_account where cast(business_date as date) = (select cast(parameter_value as date) as parameter_value from ods.table_parameter where parameter_key='batch_date');
    -- RAISE NOTICE 'delete before insert - finish';
    -- RAISE NOTICE 'please wait 10 seconds..';
    PERFORM pg_sleep(10);
    --insert to history
    -- RAISE NOTICE 'insert to history - start';
    insert into landing_hist.bss_account select * from landing.bss_account;
    insert into landing_hist.bss_account_closed select * from landing.bss_account_closed;
    insert into landing_hist.bss_account_closure select * from landing.bss_account_closure;
    insert into landing_hist.bss_account_credit_int select * from landing.bss_account_credit_int;
    insert into landing_hist.bss_account_prk select * from landing.bss_account_prk;
    insert into landing_hist.bss_categ_entry select * from landing.bss_categ_entry;
    insert into landing_hist.bss_category select * from landing.bss_category;
    insert into landing_hist.bss_collateral select * from landing.bss_collateral;
    insert into landing_hist.bss_collateral_right select * from landing.bss_collateral_right;
    insert into landing_hist.bss_company select * from landing.bss_company;
    insert into landing_hist.bss_currency select * from landing.bss_currency;
    insert into landing_hist.bss_customer select * from landing.bss_customer;
    insert into landing_hist.bss_de_address select * from landing.bss_de_address;
    insert into landing_hist.bss_eb_contract_balances select * from landing.bss_eb_contract_balances;
    insert into landing_hist.bss_funds_transfer select * from landing.bss_funds_transfer;
    insert into landing_hist.bss_kyc_sumber_dana select * from landing.bss_kyc_sumber_dana;
    insert into landing_hist.bss_lbu_sektor_economy select * from landing.bss_lbu_sektor_economy;
    insert into landing_hist.bss_ld select * from landing.bss_ld;
    insert into landing_hist.bss_ld_sub_product select * from landing.bss_ld_sub_product;
    insert into landing_hist.bss_limit select * from landing.bss_limit;
    insert into landing_hist.bss_md_deal select * from landing.bss_md_deal;
    insert into landing_hist.bss_pd select * from landing.bss_pd;
    insert into landing_hist.bss_pd_payment_due select * from landing.bss_pd_payment_due;
    insert into landing_hist.bss_re_consol_spec_entry select * from landing.bss_re_consol_spec_entry;
    insert into landing_hist.bss_re_stat_line_bal select * from landing.bss_re_stat_line_bal;
    insert into landing_hist.bss_re_stat_rep_line select * from landing.bss_re_stat_rep_line;
    insert into landing_hist.bss_repo select * from landing.bss_repo;
    insert into landing_hist.bss_sc_trading_position select * from landing.bss_sc_trading_position;
    insert into landing_hist.bss_sec_acc_master select * from landing.bss_sec_acc_master;
    insert into landing_hist.bss_sec_trade select * from landing.bss_sec_trade;
    insert into landing_hist.bss_sector select * from landing.bss_sector;
    insert into landing_hist.bss_security_master select * from landing.bss_security_master;
    insert into landing_hist.bss_security_position select * from landing.bss_security_position;
    insert into landing_hist.bss_stmt_entry select * from landing.bss_stmt_entry;
    insert into landing_hist.bss_stmt_entry_detail select * from landing.bss_stmt_entry_detail;
    insert into landing_hist.bss_teller_transaction select * from landing.bss_teller_transaction;
    insert into landing_hist.bss_transaction select * from landing.bss_transaction;
    insert into landing_hist.bss_transaction_teller select * from landing.bss_transaction_teller;
    insert into ods_hist.casa_account select * from ods.casa_account;
    insert into ods_hist.customer select * from ods.customer;
    insert into ods_hist.deposit_account select * from ods.deposit_account;
    insert into ods_hist.loan_account select * from ods.loan_account;
    -- RAISE NOTICE 'insert to history - finish';
    -- RAISE NOTICE 'please wait 10 seconds..';
    PERFORM pg_sleep(10);
    -- --delete < 30 days data in history
    -- RAISE NOTICE 'delete < 30 days data in history - start';
    delete from landing_hist.bss_account where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_closed where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_closure where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_credit_int where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_account_prk where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_categ_entry where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_category where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_collateral where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_collateral_right where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_company where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_currency where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_customer where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_de_address where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_eb_contract_balances where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_funds_transfer where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_kyc_sumber_dana where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_lbu_sektor_economy where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_ld where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_ld_sub_product where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_limit where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_md_deal where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_pd where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_pd_payment_due where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_consol_spec_entry where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_stat_line_bal where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_re_stat_rep_line where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_repo where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sc_trading_position where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sec_acc_master where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sec_trade where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_sector where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_security_master where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_security_position where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_stmt_entry where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_stmt_entry_detail where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_teller_transaction where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_transaction where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from landing_hist.bss_transaction_teller where cast(batch_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.casa_account where cast(business_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.customer where cast(business_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.deposit_account where cast(business_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    delete from ods_hist.loan_account where cast(business_date as date) < (select cast(parameter_value as date) - interval_data as parameter_value from ods.table_parameter where parameter_key='batch_date');
    -- RAISE NOTICE 'delete < 30 days data in history - finish';
    -- RAISE NOTICE 'sp_ods_history finish | %';
end;$procedure$
;