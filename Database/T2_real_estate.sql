-- Creating tables for T2_real_estate
CREATE TABLE core (
	month_date_yyyymm INT,
	postal_code INT,
	zip_name VARCHAR,
	active_listing_count_yy DECIMAL,
	median_days_on_market_yy DECIMAL,
	new_listing_count_yy DECIMAL,
	pending_ratio_yy DECIMAL,
	Year INT
);

-- Creating tables for T2_real_estate
CREATE TABLE Value_Incr_Combined (
	regionname INT,
	city VARCHAR,
	Incr_Per DECIMAL,
	date INT,
	Incr_type VARCHAR,
	Year INT
);

SELECT *
FROM Value_Incr_Combined
FULL OUTER JOIN core
ON Value_Incr_Combined.Year = core.Year AND Value_Incr_Combined.regionname = core.postal_code;