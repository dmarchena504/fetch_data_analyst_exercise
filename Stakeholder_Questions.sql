--Query for question 1: What are the top 5 brands by receipts scanned for the most recent month?
Use [FetchExerciseDB]
SELECT TOP 5
	br.BrandCode,
	MAX(br.BrandName) 'BrandName',
	COUNT(DISTINCT ril.ReceiptID) 'ReceiptScannedCount'
	FROM ReceiptItemList ril
		INNER JOIN Brand br ON ril.BrandCode = br.BrandCode
		INNER JOIN Receipt rc ON ril.ReceiptID = rc.ReceiptID
		WHERE rc.DateScanned > DATEADD(month, -1,CURRENT_TIMESTAMP)
			GROUP BY br.BrandCode
				ORDER BY 'ReceiptScannedCount' DESC

--Query for question 3: Is average spend greater among Accepted or Rejected receipts?

---For quick and easy raw data to compare manually:
SELECT
	RewardsReceiptStatus,
	AVG(TotalSpent) 'AvgSpent'
	FROM Receipt
		GROUP BY RewardsReceiptStatus
;
--To  return the status with the highest average spend:
WITH AvgSpentByStatus AS (
	SELECT
		RewardsReceiptStatus,
		AVG(TotalSpent) 'AvgSpent'
			FROM Receipt
				GROUP BY RewardsReceiptStatus)
SELECT RewardsReceiptStatus
	FROM AvgSpentByStatus
		WHERE 'AvgSpent' IN
			(SELECT MAX('AvgSpent') FROM AvgSpentByStatus)
		