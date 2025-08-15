CREATE TABLE Users (
    userID INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL UNIQUE,
    password NVARCHAR(255) NOT NULL,
    email NVARCHAR(100),
    role NVARCHAR(20) DEFAULT 'User',
    CreatedAt DATETIME DEFAULT GETDATE()
);
INSERT INTO Users (username, password, email, role)
VALUES 
('an', '123', 'hqan2205@gmail.com', 'Admin'),
('admin', '1', NULL, 'Admin');
select * from Users;
use dangkykhambenh
DELETE FROM Users WHERE userID IN (3, 4);
DBCC CHECKIDENT ('Users', RESEED, 2);
use dangkykhambenh;
CREATE TABLE ChuyenKhoa (
    id_chuyen_khoa INT PRIMARY KEY IDENTITY(1,1),
    ten_chuyen_khoa NVARCHAR(100) NOT NULL
);
CREATE TABLE BacSi (
    id_bac_si INT PRIMARY KEY IDENTITY(1,1),
    ten_bac_si NVARCHAR(100) NOT NULL,
    id_chuyen_khoa INT NOT NULL,
    FOREIGN KEY (id_chuyen_khoa) REFERENCES ChuyenKhoa(id_chuyen_khoa)
);
CREATE TABLE LichKham (
    id INT PRIMARY KEY IDENTITY(1,1),
    userID INT NOT NULL,
    dichvu_kham NVARCHAR(50),
    loai_hinh_kham NVARCHAR(50),
    id_chuyen_khoa INT,
    id_bac_si INT,
    ngay_kham DATE,
    noi_dung NVARCHAR(MAX),
    FOREIGN KEY (id_chuyen_khoa) REFERENCES ChuyenKhoa(id_chuyen_khoa),
    FOREIGN KEY (id_bac_si) REFERENCES BacSi(id_bac_si)
);
CREATE TABLE LienHe (
    id INT PRIMARY KEY IDENTITY(1,1),
    userID INT NOT NULL,
    so_dien_thoai NVARCHAR(20),
    ho_ten nvarchar(50),
    email nvarchar(100),
    loi_nhan NVARCHAR(MAX),
);
INSERT INTO ChuyenKhoa (ten_chuyen_khoa) VALUES (N'Tim mạch');
INSERT INTO ChuyenKhoa (ten_chuyen_khoa) VALUES (N'Nhi');
INSERT INTO ChuyenKhoa (ten_chuyen_khoa) VALUES (N'Viêm gan nhiễm mỡ');

INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Phạm Nguyễn Vinh','1');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Nguyễn Thị Bạch Yến','1');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Nguyễn Minh Trí Viên','1');

INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Vũ Trường Khanh','3');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Lê Thanh Quỳnh Ngân','3');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Huỳnh Văn Trung','3');

INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Vũ Huy Trụ','2');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Nguyễn Thị Hạnh Lê','2');
INSERT INTO BacSi(ten_bac_si,id_chuyen_khoa) VALUES (N'Trần Đức Hậu','2');

Select * from Bacsi
join ChuyenKhoa on ChuyenKhoa.id_chuyen_khoa = BacSi.id_chuyen_khoa;
select * from LichKham;
delete from LichKham where userID = '0';
drop table LienHe;  
select * from LienHe;
select * from Users;
use dangkykhambenh;

SELECT name FROM sys.databases WHERE name = 'dangkylichkham';