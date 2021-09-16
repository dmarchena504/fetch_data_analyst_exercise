DROP DATABASE IF EXISTS FetchExerciseDB
CREATE DATABASE FetchExerciseDB

DROP TABLE IF EXISTS FetchExerciseDB.dbo.ReceiptItemList
DROP TABLE IF EXISTS FetchExerciseDB.dbo.Receipt
DROP TABLE IF EXISTS FetchExerciseDB.dbo.Brand
DROP TABLE IF EXISTS FetchExerciseDB.dbo.Users

CREATE TABLE FetchExerciseDB.dbo.Users (
	UserID VARCHAR(255) PRIMARY KEY,
	StateAbbr CHAR(2),
	CreateDate DATETIME,
	LastLogin DATETIME,
	Active BIT)

CREATE TABLE FetchExerciseDB.dbo.Brand (
	BrandID VARCHAR(255) PRIMARY KEY,
	BrandCode VARCHAR(255),
	BarCode VARCHAR(255),
	Category VARCHAR(255),
	CategoryCode VARCHAR(255),
	CpgCode VARCHAR(255),
	TopBrand BIT,
	BrandName VARCHAR(255))


CREATE TABLE FetchExerciseDB.dbo.ReceiptItemList (
	ReceiptID VARCHAR(255),
	Line SMALLINT,
	PriceAfterCoupon SMALLMONEY,
	PointsEarned INT,
	BrandCode VARCHAR(255),
	ItemPrice SMALLMONEY,
	UserFlaggedPrice SMALLMONEY,
	Barcode VARCHAR(255),
	QuantityPurchased SMALLINT,
	UserFlaggedQuantity SMALLINT,
	OriginalFinalPrice SMALLMONEY,
	TargetPrice SMALLMONEY,
	FinalPrice SMALLMONEY,
	PRIMARY KEY (ReceiptID,Line))

CREATE TABLE FetchExerciseDB.dbo.Receipt (
	ReceiptID VARCHAR(255) PRIMARY KEY,
	UserID VARCHAR(255) FOREIGN KEY REFERENCES FetchExerciseDB.dbo.Users(UserID),
	RewardsReceiptStatus VARCHAR(255),
	CreateDate DATETIME NOT NULL,
	DateScanned DATETIME NOT NULL,
	FinishedDate DATETIME NOT NULL,
	ModifyDate DATETIME NOT NULL,
	PointsAwardedDate DATETIME,
	PointsEarned INT,
	PurchaseDate DATETIME,
	PurchasedItemCount SMALLINT,
	TotalSpent SMALLMONEY)







	