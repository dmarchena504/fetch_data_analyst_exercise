SELECT *
	FROM OPENROWSET (BULK 'D:\David\Documents\Job Application Materials\Job search 2021\Fetch\fetch_data_analyst_exercise\data\brands.json', SINGLE_CLOB) as j
		CROSS APPLY OPENJSON(BulkColumn)