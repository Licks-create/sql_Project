---Basic

-- Q1: WHO IS THE SENIOR MOST EMPLOYEE BASED ONB JOB TITLE?
SELECT * FROM EMPLOYEE ORDER BY LEVELS DESC LIMIT 1;



-- Q2: WHICH COUNTRY HAVE THE MOST INVOICES?
SELECT count(total) as s, billing_Country
FROM INVOICE
group by billing_country order by s desc;

-- q3: what are the top 3 values of total invoices?
SELECT TOTAL FROM INVOICE
ORDER BY TOTAL DESC
LIMIT 3;

-- Q4: WHICH CITY HAS THE BEST CUSTOMERS? WE WOULD LIEK TO THROW A PROMOTIONAL MUSIC FESTIVAL 
-- IN THE CITY WE MADE THE MOST MONEY?. WRITE A QUERY THAT RETURNS ONE CITY THAT HAS THE HIGHEST
-- SUM OF INVOICE TOTALS.
-- RETURN BOTH THE CITY NAME AND SUM OF ALL INVOICE TABLES.

SELECT SUM(TOTAL) AS INVOICE_TOTAL,BILLING_CITY
FROM INVOICE
GROUP BY BILLING_CITY
ORDER BY INVOICE_TOTAL DESC;

-- Q5: WHO IS THE BEST CUSTOMER? THE CUSTOMER WHO HAS SPENT THE MOST MONEY WILL BE DECLARED 
-- AS THE BEST CUSTOMER. WRITE A QUERY THAT RETURNS THE PERSON WHO HAS SPENT THE MOST MONEY.

SELECT CUSTOMER.CUSTOMER_ID,CUSTOMER.FIRST_NAME,CUSTOMER.LAST_NAME,SUM(INVOICE.TOTAL) AS TOTAL
FROM CUSTOMER
JOIN INVOICE
ON CUSTOMER.CUSTOMER_ID=INVOICE.CUSTOMER_ID
GROUP BY CUSTOMER.CUSTOMER_ID
ORDER BY TOTAL DESC
LIMIT 1;