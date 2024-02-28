alter table delivery.fms_stg_transaction REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_customer_individual REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_customer_corporate REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_customer_address REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_customer_phone REPLICA IDENTITY FULL;
alter table delivery.fms_stg_transaction_batch REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_card REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_card_history REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_loan_account REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_loan_account_transaction REPLICA IDENTITY FULL;
alter table delivery.fms_onefcc_saving_account REPLICA IDENTITY FULL;
alter table delivery.fms_stg_transaction_batch_status REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_card REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_card_history REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_customer_address REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_customer_corporate REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_customer_individual REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_customer_phone REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_loan_account REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_loan_account_transaction REPLICA IDENTITY FULL;
alter table delivery_hist.fms_onefcc_saving_account REPLICA IDENTITY FULL;
alter table delivery_hist.fms_stg_transaction_batch REPLICA IDENTITY FULL;
alter table delivery_hist.fms_stg_transaction_batch_status REPLICA IDENTITY FULL;
alter table delivery_hist.fms_stg_transaction REPLICA IDENTITY FULL;
alter table landing.aro_disburse REPLICA IDENTITY FULL;
alter table landing.aro_temp_cif REPLICA IDENTITY FULL;
alter table landing.aro_temp_loan REPLICA IDENTITY FULL;
alter table landing.bss_account REPLICA IDENTITY FULL;
alter table landing.bss_account_closed REPLICA IDENTITY FULL;
alter table landing.bss_account_closure REPLICA IDENTITY FULL;
alter table landing.bss_account_credit_int REPLICA IDENTITY FULL;
alter table landing.bss_account_prk REPLICA IDENTITY FULL;
alter table landing.bss_categ_entry REPLICA IDENTITY FULL;
alter table landing.bss_category REPLICA IDENTITY FULL;
alter table landing.bss_collateral REPLICA IDENTITY FULL;
alter table landing.bss_collateral_right REPLICA IDENTITY FULL;
alter table landing.bss_company REPLICA IDENTITY FULL;
alter table landing.bss_currency REPLICA IDENTITY FULL;
alter table landing.bss_customer REPLICA IDENTITY FULL;
alter table landing.bss_de_address REPLICA IDENTITY FULL;
alter table landing.bss_eb_contract_balances REPLICA IDENTITY FULL;
alter table landing.bss_funds_transfer REPLICA IDENTITY FULL;
alter table landing.bss_kyc_sumber_dana REPLICA IDENTITY FULL;
alter table landing.bss_lbu_sektor_economy REPLICA IDENTITY FULL;
alter table landing.bss_ld REPLICA IDENTITY FULL;
alter table landing.bss_ld_sub_product REPLICA IDENTITY FULL;
alter table landing.bss_limit REPLICA IDENTITY FULL;
alter table landing.bss_md_deal REPLICA IDENTITY FULL;
alter table landing.bss_pd REPLICA IDENTITY FULL;
alter table landing.bss_pd_payment_due REPLICA IDENTITY FULL;
alter table landing.bss_re_consol_spec_entry REPLICA IDENTITY FULL;
alter table landing.bss_re_stat_line_bal REPLICA IDENTITY FULL;
alter table landing.bss_re_stat_rep_line REPLICA IDENTITY FULL;
alter table landing.bss_repo REPLICA IDENTITY FULL;
alter table landing.bss_sc_trading_position REPLICA IDENTITY FULL;
alter table landing.bss_sec_acc_master REPLICA IDENTITY FULL;
alter table landing.bss_sec_trade REPLICA IDENTITY FULL;
alter table landing.bss_sector REPLICA IDENTITY FULL;
alter table landing.bss_security_master REPLICA IDENTITY FULL;
alter table landing.bss_security_position REPLICA IDENTITY FULL;
alter table landing.bss_stmt_entry REPLICA IDENTITY FULL;
alter table landing.bss_stmt_entry_detail REPLICA IDENTITY FULL;
alter table landing.bss_teller_transaction REPLICA IDENTITY FULL;
alter table landing.bss_transaction REPLICA IDENTITY FULL;
alter table landing.bss_transaction_teller REPLICA IDENTITY FULL;
alter table landing.csc_dhn_data REPLICA IDENTITY FULL;
alter table landing.csc_dppsm_data REPLICA IDENTITY FULL;
alter table landing.csc_dttot_data REPLICA IDENTITY FULL;
alter table landing.itm_zcmsst0p REPLICA IDENTITY FULL;
alter table landing.ms_pepdata_pepstatus REPLICA IDENTITY FULL;
alter table landing.ms_pepdata_pepstatusservices REPLICA IDENTITY FULL;
alter table landing.ms_pepdata_pepstatusweb REPLICA IDENTITY FULL;
alter table landing.itm_amchtb0p REPLICA IDENTITY FULL;
alter table landing.itm_adcmed0p REPLICA IDENTITY FULL;
alter table landing.itm_zcmscexp REPLICA IDENTITY FULL;
alter table landing.itm_zcdbac0p REPLICA IDENTITY FULL;
alter table landing.itm_zcmschxp REPLICA IDENTITY FULL;
alter table landing.itm_zttypr0p REPLICA IDENTITY FULL;
alter table landing.itm_zrspcd0p REPLICA IDENTITY FULL;
alter table landing_hist.aro_disburse REPLICA IDENTITY FULL;
alter table landing_hist.aro_temp_cif REPLICA IDENTITY FULL;
alter table landing_hist.aro_temp_loan REPLICA IDENTITY FULL;
alter table landing_hist.bss_account REPLICA IDENTITY FULL;
alter table landing_hist.bss_account_closed REPLICA IDENTITY FULL;
alter table landing_hist.bss_account_closure REPLICA IDENTITY FULL;
alter table landing_hist.bss_account_credit_int REPLICA IDENTITY FULL;
alter table landing_hist.bss_account_prk REPLICA IDENTITY FULL;
alter table landing_hist.bss_categ_entry REPLICA IDENTITY FULL;
alter table landing_hist.bss_category REPLICA IDENTITY FULL;
alter table landing_hist.bss_collateral REPLICA IDENTITY FULL;
alter table landing_hist.bss_collateral_right REPLICA IDENTITY FULL;
alter table landing_hist.bss_company REPLICA IDENTITY FULL;
alter table landing_hist.bss_currency REPLICA IDENTITY FULL;
alter table landing_hist.bss_customer REPLICA IDENTITY FULL;
alter table landing_hist.bss_de_address REPLICA IDENTITY FULL;
alter table landing_hist.bss_eb_contract_balances REPLICA IDENTITY FULL;
alter table landing_hist.bss_funds_transfer REPLICA IDENTITY FULL;
alter table landing_hist.bss_kyc_sumber_dana REPLICA IDENTITY FULL;
alter table landing_hist.bss_lbu_sektor_economy REPLICA IDENTITY FULL;
alter table landing_hist.bss_ld REPLICA IDENTITY FULL;
alter table landing_hist.bss_ld_sub_product REPLICA IDENTITY FULL;
alter table landing_hist.bss_limit REPLICA IDENTITY FULL;
alter table landing_hist.bss_md_deal REPLICA IDENTITY FULL;
alter table landing_hist.bss_pd REPLICA IDENTITY FULL;
alter table landing_hist.bss_pd_payment_due REPLICA IDENTITY FULL;
alter table landing_hist.bss_re_consol_spec_entry REPLICA IDENTITY FULL;
alter table landing_hist.bss_re_stat_line_bal REPLICA IDENTITY FULL;
alter table landing_hist.bss_re_stat_rep_line REPLICA IDENTITY FULL;
alter table landing_hist.bss_repo REPLICA IDENTITY FULL;
alter table landing_hist.bss_sc_trading_position REPLICA IDENTITY FULL;
alter table landing_hist.bss_sec_acc_master REPLICA IDENTITY FULL;
alter table landing_hist.bss_sec_trade REPLICA IDENTITY FULL;
alter table landing_hist.bss_sector REPLICA IDENTITY FULL;
alter table landing_hist.bss_security_master REPLICA IDENTITY FULL;
alter table landing_hist.bss_security_position REPLICA IDENTITY FULL;
alter table landing_hist.bss_stmt_entry REPLICA IDENTITY FULL;
alter table landing_hist.bss_stmt_entry_detail REPLICA IDENTITY FULL;
alter table landing_hist.bss_teller_transaction REPLICA IDENTITY FULL;
alter table landing_hist.bss_transaction REPLICA IDENTITY FULL;
alter table landing_hist.bss_transaction_teller REPLICA IDENTITY FULL;
alter table landing_hist.csc_dhn_data REPLICA IDENTITY FULL;
alter table landing_hist.csc_dppsm_data REPLICA IDENTITY FULL;
alter table landing_hist.csc_dttot_data REPLICA IDENTITY FULL;
alter table landing_hist.itm_adcmed0p REPLICA IDENTITY FULL;
alter table landing_hist.itm_amchtb0p REPLICA IDENTITY FULL;
alter table landing_hist.itm_zcdbac0p REPLICA IDENTITY FULL;
alter table landing_hist.itm_zcmscexp REPLICA IDENTITY FULL;
alter table landing_hist.itm_zcmschxp REPLICA IDENTITY FULL;
alter table landing_hist.itm_zcmsst0p REPLICA IDENTITY FULL;
alter table landing_hist.itm_zrspcd0p REPLICA IDENTITY FULL;
alter table landing_hist.itm_zttypr0p REPLICA IDENTITY FULL;
alter table landing_hist.ms_pepdata_pepstatus REPLICA IDENTITY FULL;
alter table landing_hist.ms_pepdata_pepstatusservices REPLICA IDENTITY FULL;
alter table landing_hist.ms_pepdata_pepstatusweb REPLICA IDENTITY FULL;
alter table landing_hist.t_log_nrt_hist REPLICA IDENTITY FULL;
alter table ods.table_parameter REPLICA IDENTITY FULL;
alter table ods.transaction_log REPLICA IDENTITY FULL;
alter table ods.card_log REPLICA IDENTITY FULL;
alter table ods.card_profile REPLICA IDENTITY FULL;
alter table ods.casa_account REPLICA IDENTITY FULL;
alter table ods.customer REPLICA IDENTITY FULL;
alter table ods.deposit_account REPLICA IDENTITY FULL;
alter table ods.loan_account REPLICA IDENTITY FULL;
alter table ods.transaction REPLICA IDENTITY FULL;
alter table ods_hist.table_parameter REPLICA IDENTITY FULL;
alter table ods_hist.card_log REPLICA IDENTITY FULL;
alter table ods_hist.card_profile REPLICA IDENTITY FULL;
alter table ods_hist.casa_account REPLICA IDENTITY FULL;
alter table ods_hist.customer REPLICA IDENTITY FULL;
alter table ods_hist.deposit_account REPLICA IDENTITY FULL;
alter table ods_hist.loan_account REPLICA IDENTITY FULL;
alter table ods_hist.transaction REPLICA IDENTITY FULL;
alter table ods_hist.transaction_log REPLICA IDENTITY FULL;