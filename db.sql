-- Create Database
CREATE DATABASE Marketing_Campaign_DB;

-- Use Database
USE Marketing_Campaign_DB;

-- Create Table
CREATE TABLE campaign_performance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    campaign VARCHAR(50),
    channel VARCHAR(50),
    spend DECIMAL(12,2),
    impressions INT,
    clicks INT,
    conversions INT,
    revenue DECIMAL(12,2),
    campaign_date DATE
);

-- Insert Summer25 Data
INSERT INTO campaign_performance
(campaign, channel, spend, impressions, clicks, conversions, revenue, campaign_date)
VALUES
('Summer25', 'Google', 5000.00, 100000, 5000, 250, 25000.00, '2025-06-01'),
('Summer25', 'Facebook', 3500.00, 80000, 3200, 160, 16000.00, '2025-06-01'),
('Summer25', 'Email', 1000.00, 20000, 2000, 120, 12000.00, '2025-06-01');

-- Insert Fall25 Data
INSERT INTO campaign_performance
(campaign, channel, spend, impressions, clicks, conversions, revenue, campaign_date)
VALUES
('Fall25', 'Google', 6000.00, 120000, 6000, 300, 30000.00, '2025-09-01'),
('Fall25', 'Facebook', 4000.00, 90000, 3600, 180, 18000.00, '2025-09-01'),
('Fall25', 'Email', 1500.00, 25000, 2500, 150, 15000.00, '2025-09-01');

-- Insert Winter25 Data
INSERT INTO campaign_performance
(campaign, channel, spend, impressions, clicks, conversions, revenue, campaign_date)
VALUES
('Winter25', 'Google', 5500.00, 110000, 5500, 280, 28000.00, '2025-12-01'),
('Winter25', 'Facebook', 3800.00, 85000, 3400, 170, 17000.00, '2025-12-01'),
('Winter25', 'Email', 1200.00, 22000, 2200, 130, 13000.00, '2025-12-01');

-- View All Data
SELECT * FROM campaign_performance;

-- Total Revenue by Campaign
SELECT
    campaign,
    SUM(revenue) AS total_revenue
FROM campaign_performance
GROUP BY campaign;

-- Total Spend by Channel
SELECT
    channel,
    SUM(spend) AS total_spend
FROM campaign_performance
GROUP BY channel;

-- ROI Analysis
SELECT
    campaign,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    ROUND(((SUM(revenue) - SUM(spend)) / SUM(spend)) * 100, 2) AS ROI_Percentage
FROM campaign_performance
GROUP BY campaign;

-- Conversion Rate Analysis
SELECT
    channel,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    ROUND((SUM(conversions) / SUM(clicks)) * 100, 2) AS conversion_rate
FROM campaign_performance
GROUP BY channel;

-- Best Performing Channel by Revenue
SELECT
    channel,
    SUM(revenue) AS total_revenue
FROM campaign_performance
GROUP BY channel
ORDER BY total_revenue DESC;

-- Campaign Performance Summary
SELECT
    campaign,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    SUM(revenue) AS total_revenue
FROM campaign_performance
GROUP BY campaign;
