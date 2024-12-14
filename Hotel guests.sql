SELECT COUNT(*) AS num_guests_late_checkout
FROM hotel_guests
WHERE DATEPART(HOUR, check_out) * 60 + DATEPART(MINUTE, check_out) > 10 * 60;
