contacts
--------
contact_id INT PK FK - campaign.contact_id
first_name VARCHAR(50)
last_name VARCHAR(50)
email VARCHAR(100)

campaign
--------
cf_id INT PK
contact_id INT FK
company_name VARCHAR(100)
description VARCHAR(100)
goal INT
pledged INT
outcome VARCHAR(50)
backers_count VARCHAR(50)
country VARCHAR(50)
currency VARCHAR(50)
launch_date DATE
end_date DATE
category_id VARCHAR(50) FK
subcategory_id VARCHAR(50) FK

category
--------
category_id VARCHAR(50) PK FK -< campaign.category_id
category VARCHAR(50)

subcategory
--------
subcategory_id VARCHAR(50) PK FK -< campaign.subcategory_id
subcategory VARCHAR(50)