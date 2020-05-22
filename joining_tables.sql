-- join prescriber table and exclusion table together on NPI using inner join
--select all columns as we need all the data and do an inner join on NPI
CREATE TABLE drug_and_exclusion AS
SELECT pd.npi, e.is_fraud, pd.total_claims, pd.total_drug_cost, 
	pd.provider_last_name, pd.provider_first_name, pd.provider_city, pd.provider_state
FROM prescriber_drugs AS pd 
LEFT JOIN exclusion_list AS e
ON pd.npi = e.npi;

-- test there are null values so that it shows we pulled all providers
SELECT npi
FROM drug_and_exclusion 
WHERE is_fraud IS NULL;

--join drug and exclusion table with provider table to get final table needed to do some ML - need to work on
CREATE TABLE final_table AS
SELECT de.is_fraud, de.total_claims, de.total_drug_cost, de.provider_last_name, de.provider_first_name, de.provider_city, de.provider_state,
	ppi.physician_first_name, ppi.physician_last_name, ppi.recipient_city, ppi.recipient_state, ppi.total_payment
FROM drug_and_exclusion AS de
LEFT JOIN provider_payment_info AS ppi
ON de.provider_last_name = ppi.physician_first_name;

SELECT COUNT(*) FROM final_table;

