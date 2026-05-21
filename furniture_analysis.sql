SELECT * FROM `tokopaedi.furniture`
SELECT status FROM `tokopaedi.furniture`
group by status

-- Region dengan sales tertinggi
SELECT 
  kota,
  category,
  product_name,
  SUM(total_sales) grand_total_sales
FROM `tokopaedi.furniture`
WHERE status = 'completed'
GROUP BY kota, category, product_name
ORDER BY grand_total_sales DESC

-- Tampilkan 10 baris pertama dataset menggunakan SQL (BigQuery)
SELECT *
FROM `tokopaedi.furniture`
LIMIT 10

-- Total unique di kota yang ada di dataset
SELECT 
  COUNT(DISTINCT kota) total_kota
FROM `tokopaedi.furniture`

-- Tampilkan semua order dengan status ‘completed’ dari kota Jakarta Pusat, urutkan dari order yang terbaru
SELECT 
  order_id,
  status,
  kota,
  sales_date
FROM `tokopaedi.furniture`
WHERE status = 'completed'
  AND kota = 'Jakarta Pusat'
ORDER BY sales_date DESC

-- Hitung total revenue (total_sales) per kategori produk. Urutkan dari yang terbesar
SELECT 
  category,
  SUM(total_sales)total_revenue
FROM `tokopaedi.furniture`
GROUP BY category
ORDER BY total_revenue DESC

-- Tampilkan top 5 product dengan quantity terjual terbanyak
SELECT
  product_name,
  SUM(quantity) total_quantity
FROM `tokopaedi.furniture`
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 5