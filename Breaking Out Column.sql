SELECT 
    PARSENAME(REPLACE(address, '- ', '.'), 4) AS street,
    PARSENAME(REPLACE(address, '- ', '.'), 3) AS city,
    PARSENAME(REPLACE(address, '- ', '.'), 2) AS state,
    PARSENAME(REPLACE(address, '- ', '.'), 1) AS zip_code
FROM addresses;
