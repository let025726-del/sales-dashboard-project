/USE [BAT DONG SAN VINHOME]
GO 

UPDATE SANPHAM
SET MAKHU = MAKHU - 100;

SELECT MASP, MAKHU
FROM SANPHAM;

DROP TABLE NHAN_VIEN
GO 

----THONG TIN PHONG BAN
DROP TABLE PHONG_BAN
GO

CREATE TABLE PHONG_BAN(
 MAPB INT PRIMARY KEY,
 TENPB NVARCHAR(100)
 );
 GO 
 
 INSERT INTO PHONG_BAN(MAPB,TENPB) VALUES
(10, N'PHÒNG KINH DOANH DỰ ÁN'),
(20, N'PHÒNG KẾ TOÁN TỔNG HỢP'),
(30, N'BAN GIÁM ĐỐC ĐIỀU HÀNH'),
(40, N'PHÒNG PHÁP LÝ & HỢP ĐỒNG'),
(50, N'PHÒNG MARKETING & THỊ TRƯỜNG'),
(60, N'PHÒNG NHÂN SỰ & HÀNH CHÍNH'),
(70, N'PHÒNG QUẢN LÝ DỰ ÁN BĐS'),
(80, N'PHÒNG CHĂM SÓC KHÁCH HÀNG'),
(90, N'PHÒNG THẨM ĐỊNH GIÁ'),
(100, N'PHÒNG CÔNG NGHỆ THÔNG TIN'),
(110, N'PHÒNG KỸ THUẬT & CÔNG TRÌNH'),
(120, N'PHÒNG ĐẦU TƯ & CHIẾN LƯỢC'),
(130, N'PHÒNG QUAN HỆ ĐỐI TÁC'),
(140, N'PHÒNG THANH TRA & KIỂM SOÁT'),
(150, N'CHI NHÁNH KINH DOANH MIỀN BẮC'),
(160, N'CHI NHÁNH KINH DOANH MIỀN NAM'),
(170, N'PHÒNG THIẾT KẾ & QUY HOẠCH'),
(180, N'BAN CỐ VẤN CHIẾN LƯỢC'),
(190, N'PHÒNG QUẢN LÝ TÀI SẢN'),
(200, N'PHÒNG PHÁT TRIỂN QUỸ ĐẤT');
GO

select * from PHONG_BAN 

---THONG TIN NHAN VIEN
DROP TABLE NHAN_VIEN
GO


 CREATE TABLE NHAN_VIEN(
  MANV INT PRIMARY KEY,
  HOTEN NVARCHAR(100),
  EMAIL VARCHAR(100),
  MATKHAU VARCHAR(100),
  MAPB INT,
  );
  GO 

INSERT INTO NHAN_VIEN (MANV, HOTEN, EMAIL, MATKHAU, MAPB) VALUES
(7001, N'NGUYỄN VĂN AN', 'an.nv@batdongsan.com', 'Pass123', 20), -- Giám đốc
(7002, N'TRẦN THỊ BÌNH', 'binh.tt@batdongsan.com', 'Pass123', 50), -- Kế toán trưởng
(7003, N'LÊ VĂN CƯỜNG', 'cuong.lv@batdongsan.com', 'Pass123', 30), -- Trưởng phòng KD
(7004, N'PHẠM THỊ DUNG', 'dung.pt@batdongsan.com', 'Pass123', 50), -- Kế toán viên
(7005, N'HOÀNG VĂN EM', 'em.hv@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7006, N'VŨ THIÊN PHÚC', 'phuc.vt@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7007, N'ĐẶNG VĂN GIANG', 'giang.dv@batdongsan.com', 'Pass123', 70), -- Chuyên viên Pháp lý
(7008, N'BÙI THỊ HÀ', 'ha.bt@batdongsan.com', 'Pass123', 50), -- Kế toán thu chi
(7009, N'ĐỖ VĂN HÙNG', 'hung.dv@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7010, N'NGÔ THỊ KIM', 'kim.nt@batdongsan.com', 'Pass123', 40), -- Chuyên viên Marketing
(7011, N'LÝ VĂN LONG', 'long.lv@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7012, N'CHU THỊ MAI', 'mai.ct@batdongsan.com', 'Pass123', 50), -- Kế toán thuế
(7013, N'PHAN VĂN NAM', 'nam.pv@batdongsan.com', 'Pass123', 110), -- CSKH
(7014, N'TẠ THỊ NGỌC', 'ngoc.tt@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7015, N'QUÁCH VĂN PHONG', 'phong.qv@batdongsan.com', 'Pass123', 80), -- Quản lý dự án
(7016, N'LƯƠNG THỊ QUYÊN', 'quyen.lt@batdongsan.com', 'Pass123', 50), -- Kế toán tổng hợp
(7017, N'DIỆP VĂN SƠN', 'son.dv@batdongsan.com', 'Pass123', 30), -- NV Kinh doanh
(7018, N'CAO THỊ THẢO', 'thao.ct@batdongsan.com', 'Pass123', 120), -- Hành chính nhân sự
(7019, N'HÀ VĂN TUẤN', 'tuan.hv@batdongsan.com', 'Pass123', 20), -- Phó giám đốc
(7020, N'TRỊNH THỊ UYÊN', 'uyen.tt@batdongsan.com', 'Pass123', 30); -- NV Kinh doanh
GO

SELECT * FROM NHAN_VIEN


---THONG TIN CHU DAU TU
DROP TABLE CHUDAUTU
GO 

CREATE TABLE CHUDAUTU(
 MACDT INT PRIMARY KEY,
 TENCDT NVARCHAR(200),
 DIACHI NVARCHAR(200),
 SODIENTHOAI VARCHAR(20),
 EMAIL VARCHAR(100)
);
GO 

INSERT INTO CHUDAUTU(MACDT, TENCDT, DIAChI, SODIENThOAI, EMAIL) VALUES
(101, N'Tập đoàn Vingroup', N'Số 7 Đường Bằng Lăng, Long Biên, Hà Nội', '02439749999', 'info@vingroup.net'),
(102, N'Tập đoàn Novaland', N'65 Nguyễn Du, Phường Bến Nghé, Quận 1, TP.HCM', '0906353838', 'contact@novaland.com.vn'),
(103, N'Công ty CP Vinhomes', N'Tòa Tower 1, Times City, Hai Bà Trưng, Hà Nội', '02439749350', 'vinhomes@gmail.com'),
(104, N'Tập đoàn Sun Group', N'Tầng 9, Tòa nhà Sun City, Hoàn Kiếm, Hà Nội', '02439386666', 'sales@sungroup.com.vn'),
(105, N'Tập đoàn Đất Xanh', N'2W Ung Văn Khiêm, Bình Thạnh, TP.HCM', '02862525252', 'datxanh@dxg.com.vn'),
(106, N'Tập đoàn Nam Long', N'Số 6 Nguyễn Khắc Viện, Quận 7, TP.HCM', '02854161718', 'info@namlongvn.com'),
(107, N'Công ty CP Hưng Thịnh', N'110-112 Trần Quốc Toản, Quận 3, TP.HCM', '19006958', 'hungthinh@htc.com'),
(108, N'Tập đoàn Khang Điền', N'Tầng 11, Tòa nhà Saigon Centre, Quận 1, TP.HCM', '02838208858', 'khangdien@kdh.com.vn'),
(109, N'Công ty CP Phát Đạt', N'422 Đào Trí, Quận 7, TP.HCM', '02837732222', 'phatdat@pdc.vn'),
(110, N'Tập đoàn CEO Group', N'Tháp CEO, Phạm Hùng, Nam Từ Liêm, Hà Nội', '02437873636', 'ceogroup@ceo.vn'),
(111, N'Tập đoàn Bitexco', N'Tòa tháp Bitexco Financial, Quận 1, TP.HCM', '02839156868', 'bitexco@bitexco.com.vn'),
(112, N'Tập đoàn Him Lam', N'234 Ngô Tất Tố, Bình Thạnh, TP.HCM', '02835144345', 'himlam@himlam.vn'),
(113, N'Tập đoàn BIM Group', N'Tòa nhà BIM Group, Hạ Long, Quảng Ninh', '02033847888', 'bimgroup@bim.vn'),
(114, N'Tổng Công ty HUD', N'Tòa nhà HUDTower, Thanh Xuân, Hà Nội', '02437738600', 'hud@hud.com.vn'),
(115, N'Tập đoàn BRG', N'18 Lý Thường Kiệt, Hoàn Kiếm, Hà Nội', '02439393691', 'brg@brg.com.vn'),
(116, N'Công ty CP An Gia', N'Số 30 Nguyễn Thị Diệu, Quận 3, TP.HCM', '02839303366', 'angia@agg.vn'),
(117, N'Tập đoàn Sunshine', N'Tòa nhà Sunshine Center, Cầu Giấy, Hà Nội', '19006071', 'sunshine@ssg.vn'),
(118, N'Tập đoàn FLC', N'Tòa tháp FLC Landmark Tower, Nam Từ Liêm, Hà Nội', '02437711111', 'flc@flc.vn'),
(119, N'Công ty CP Hà Đô', N'Số 8 Láng Hạ, Ba Đình, Hà Nội', '02438356139', 'hado@hado.com.vn'),
(120, N'Tập đoàn Masterise', N'Tòa nhà Masterise, Quận 2, TP.HCM', '02839159159', 'masterise@msh.vn');
GO

SELECT * FROM CHUDAUTU

---THONG TIN DON VI THI CONG
DROP TABLE DONVITHICONG
GO 

CREATE TABLE DONVITHICONG(
 MADVTC INT PRIMARY KEY,
 TENDVTC NVARCHAR(200),
 DIACHI NVARCHAR(200),
 SODIENTHOAI VARCHAR(20)
 );
 GO

INSERT INTO DONVITHICONG (MADVTC, TENDVTC, DIACHI, SODIENTHOAI) VALUES
(201, N'Công ty Xây dựng Coteccons', N'236/6 Điện Biên Phủ, Bình Thạnh, TP.HCM', '02835142255'),
(202, N'Tập đoàn Xây dựng Hòa Bình', N'235 Võ Thị Sáu, Quận 3, TP.HCM', '02839325030'),
(203, N'Tổng công ty Vinaconex', N'Tòa nhà Vinaconex, Láng Hạ, Đống Đa, Hà Nội', '02462849234'),
(204, N'Công ty CP Unicons', N'Tầng 7, Tòa nhà Coteccons, Bình Thạnh, TP.HCM', '02835143366'),
(205, N'Công ty CP Ricons', N'53-55 Bà Huyện Thanh Quan, Quận 3, TP.HCM', '02835140349'),
(206, N'Tổng công ty xây dựng Delta', N'81 Lạc Trung, Hai Bà Trưng, Hà Nội', '02438213136'),
(207, N'Công ty CP Fecon', N'Tầng 15, Tháp CEO, Phạm Hùng, Hà Nội', '02462690481'),
(208, N'Công ty CP Newtecons', N'60 Nguyễn Đình Chiểu, Quận 1, TP.HCM', '02838258666'),
(209, N'Tổng công ty xây dựng CC1', N'111A Pasteur, Quận 1, TP.HCM', '02838220263'),
(210, N'Công ty Xây dựng An Phong', N'81 Cao Thắng, Quận 3, TP.HCM', '02838342416'),
(211, N'Công ty Xây dựng Central', N'204 Nguyễn Đình Chiểu, Quận 3, TP.HCM', '02839302688'),
(212, N'Công ty CP Phục Hưng Holdings', N'Tòa nhà The Light, Tố Hữu, Hà Nội', '02466646518'),
(213, N'Công ty Xây dựng Cofico', N'108 Cao Thắng, Quận 3, TP.HCM', '02838397539'),
(214, N'Tổng công ty COMA', N'125 Minh Khai, Hai Bà Trưng, Hà Nội', '02438631153'),
(215, N'Công ty Xây dựng SCI', N'Tòa nhà SCI, Cầu Giấy, Hà Nội', '02437683701'),
(216, N'Công ty Xây dựng Kiến Á', N'Tầng 3, Tòa nhà Sài Gòn Prime, Quận 3, TP.HCM', '02839302700'),
(217, N'Công ty CP Ecoba Việt Nam', N'Tầng 5, Tòa nhà Udic Complex, Cầu Giấy, Hà Nội', '02462754124'),
(218, N'Công ty Xây dựng Phước Thành', N'21 Đường số 24, Quận 7, TP.HCM', '02854117117'),
(219, N'Công ty CP DINCO', N'76 Trần Phú, Hải Châu, Đà Nẵng', '02363888338'),
(220, N'Công ty CP Đầu tư Xây dựng SOL E&C', N'96 Phan Đăng Lưu, Phú Nhuận, TP.HCM', '02838445566');
GO

SELECT * FROM DONVITHICONG

----DU AN SAN PHAM
DROP TABLE DUAN
GO

CREATE TABLE DUAN(
 MADUAN INT PRIMARY KEY,
 TENDUAN NVARCHAR(200),
 VITRI NVARCHAR(200),
 MACDT INT,
 MADVTC INT,
 TRANGTHAI NVARCHAR(50),
 );
 GO

INSERT INTO DUAN(MADUAN, TENDUAN, VITRI, MACDT, MADVTC, TRANGTHAI) VALUES
(301, N'Vinhomes Ocean Park', N'Gia Lâm, Hà Nội', 101, 201, N'Đã bàn giao'),
(302, N'Aqua City', N'Biên Hòa, Đồng Nai', 102, 202, N'Đang mở bán'),
(303, N'Vinhomes Grand Park', N'Quận 9, TP.HCM', 103, 201, N'Đã bàn giao'),
(304, N'Sun Grand City', N'Tây Hồ, Hà Nội', 104, 206, N'Đã bàn giao'),
(305, N'Gem Sky World', N'Long Thành, Đồng Nai', 105, 204, N'Đang mở bán'),
(306, N'Mizuki Park', N'Bình Chánh, TP.HCM', 106, 205, N'Đang mở bán'),
(307, N'Grand Center', N'Quy Nhơn, Bình Định', 107, 210, N'Sắp mở bán'),
(308, N'Verosa Park', N'Quận 9, TP.HCM', 108, 208, N'Đã bàn giao'),
(309, N'Astral City', N'Thuận An, Bình Dương', 109, 211, N'Đang mở bán'),
(310, N'CEO Homes Hana Garden', N'Mê Linh, Hà Nội', 110, 203, N'Sắp mở bán'),
(311, N'The Manor Central Park', N'Hoàng Mai, Hà Nội', 111, 209, N'Đang mở bán'),
(312, N'Him Lam Vạn Phúc', N'Hà Đông, Hà Nội', 112, 212, N'Đã bàn giao'),
(313, N'Halong Marina', N'Bãi Cháy, Quảng Ninh', 113, 207, N'Đang mở bán'),
(314, N'HUD Me Linh Central', N'Mê Linh, Hà Nội', 114, 214, N'Sắp mở bán'),
(315, N'BRG Diamond Residence', N'Thanh Xuân, Hà Nội', 115, 213, N'Đang mở bán'),
(316, N'The Standard', N'Tân Uyên, Bình Dương', 116, 218, N'Đã bàn giao'),
(317, N'Sunshine City', N'Bắc Từ Liêm, Hà Nội', 117, 217, N'Đã bàn giao'),
(318, N'FLC Premier Parc', N'Nam Từ Liêm, Hà Nội', 118, 206, N'Sắp mở bán'),
(319, N'Hà Đô Centrosa Garden', N'Quận 10, TP.HCM', 119, 211, N'Đã bàn giao'),
(320, N'Masteri Centre Point', N'Quận 9, TP.HCM', 120, 211, N'Đang mở bán');
GO

SELECT * FROM DUAN

---- THONG TIN KHUDAT
DROP TABLE KHUDAT
GO 

CREATE TABLE KHUDAT(
 MAKHU INT PRIMARY KEY,
 TENKHU NVARCHAR(100),
 MADUAN INT
 );
 GO

INSERT INTO KhuDat (MaKhu, TenKhu, MaDuAn) VALUES
(401, N'Phân khu Hải Âu', 301),
(402, N'Phân khu Sao Biển', 301),
(403, N'Phân khu San Hô', 301),
(404, N'Khu River Park 1', 302),
(405, N'Khu The Phoenix', 302),
(406, N'Phân khu The Rainbow', 303),
(407, N'Phân khu The Origami', 303),
(408, N'Khu biệt thự ven hồ', 304),
(409, N'Khu Sky Park', 305),
(410, N'Khu Pearl Town', 305),
(411, N'Phân khu Canal Park', 306),
(412, N'Khu Diamond Riverside', 307),
(413, N'Khu Central Park', 308),
(414, N'Phân khu Lyra', 309),
(415, N'Khu Hana Garden 1', 310),
(416, N'Khu biệt thự The Manor', 311),
(417, N'Khu Shophouse Vạn Phúc', 312),
(418, N'Phân khu Marina Bay', 313),
(419, N'Khu Sky City', 317),
(420, N'Phân khu Gardenia', 320);
GO

SELECT * FROM KHUDAT

---THONG TIN SAN PHAM
DROP TABLE SANPHAM
GO 

CREATE TABLE SANPHAM(
 MASP INT PRIMARY KEY,
 TENSP NVARCHAR(100),
 LOAISP NVARCHAR(50), ---LO DAT OR CAN HO
 DIENTICH DECIMAL(10,2),
 GIABAN DECIMAL(18,2),
 TRANGTHAI NVARCHAR(50), ---CHU BAN OR DA BAN 
 MAKHU INT
 );
 GO



INSERT INTO SANPHAM (MASP, TENSP, LOAISP, DIENTICH, GIABAN, TRANGTHAI, MAKHU) VALUES
(501, N'Căn hộ HA-01', N'Căn hộ', 75.5, 3500000000, N'Đã bán', 401),
(502, N'Căn hộ HA-02', N'Căn hộ', 90.0, 4200000000, N'Chưa bán', 401),
(503, N'Biệt thự SB-05', N'Lô đất', 250.0, 15000000000, N'Đã bán', 402),
(504, N'Căn hộ SH-10', N'Căn hộ', 55.0, 2100000000, N'Chưa bán', 403),
(505, N'Nhà phố RP-01', N'Lô đất', 110.0, 8500000000, N'Đã bán', 404),
(506, N'Biệt thự PX-09', N'Lô đất', 300.0, 22000000000, N'Chưa bán', 405),
(507, N'Căn hộ RB-1201', N'Căn hộ', 68.5, 2800000000, N'Đã bán', 406),
(508, N'Căn hộ RB-1202', N'Căn hộ', 68.5, 2850000000, N'Chưa bán', 406),
(509, N'Căn hộ OR-05', N'Căn hộ', 82.0, 3900000000, N'Đã bán', 407),
(510, N'Biệt thự ven hồ L-01', N'Lô đất', 500.0, 45000000000, N'Chưa bán', 408),
(511, N'Căn hộ SP-20', N'Căn hộ', 45.0, 1800000000, N'Đã bán', 409),
(512, N'Nhà phố PT-03', N'Lô đất', 100.0, 7200000000, N'Chưa bán', 410),
(513, N'Căn hộ CP-08', N'Căn hộ', 95.0, 4800000000, N'Đã bán', 411),
(514, N'Nhà phố DR-15', N'Lô đất', 120.0, 9600000000, N'Chưa bán', 412),
(515, N'Biệt thự CP-02', N'Lô đất', 200.0, 18000000000, N'Đã bán', 413),
(516, N'Căn hộ LY-01', N'Căn hộ', 72.0, 3100000000, N'Chưa bán', 414),
(517, N'Liền kề HG-05', N'Lô đất', 85.0, 5500000000, N'Đã bán', 415),
(518, N'Shophouse VP-10', N'Lô đất', 105.0, 12000000000, N'Chưa bán', 417),
(519, N'Căn hộ SC-09', N'Căn hộ', 110.0, 6500000000, N'Đã bán', 419),
(520, N'Căn hộ GD-15', N'Căn hộ', 60.0, 2400000000, N'Chưa bán', 420);
GO

SELECT * FROM SANPHAM 

----THONG TIN KHACH HANG/HOP DONG
DROP TABLE KHACHHANG
GO 


 CREATE TABLE KHACHHANG(
  MAKH INT PRIMARY KEY,
  HOTEN NVARCHAR(100),
  SODIENTHOAI VARCHAR(20),
  LOAIKH NVARCHAR(50) ----TIEM NANG,HIEN HUU
  );
  GO 

INSERT INTO KHACHHANG (MAKH, HOTEN, SODIENTHOAI, LOAIKH) VALUES
(6001, N'Nguyễn Trần Anh Tuấn', '0901234567', N'Hiện hữu'),
(6002, N'Lê Thị Mỹ Hạnh', '0912345678', N'Tiềm năng'),
(6003, N'Phạm Minh Hoàng', '0983456789', N'Hiện hữu'),
(6004, N'Trần Thanh Thảo', '0974567890', N'Tiềm năng'),
(6005, N'Hoàng Ngọc Bảo', '0965678901', N'Hiện hữu'),
(6006, N'Vũ Đình Khôi', '0956789012', N'Tiềm năng'),
(6007, N'Đặng Phương Nam', '0947890123', N'Hiện hữu'),
(6008, N'Bùi Tuyết Mai', '0938901234', N'Tiềm năng'),
(6009, N'Đỗ Hữu Phước', '0929012345', N'Hiện hữu'),
(6010, N'Ngô Gia Bảo', '0910123456', N'Tiềm năng'),
(6011, N'Lý Khánh Huyền', '0902234567', N'Hiện hữu'),
(6012, N'Chu Minh Đức', '0983345678', N'Tiềm năng'),
(6013, N'Phan Thu Trang', '0974456789', N'Hiện hữu'),
(6014, N'Tạ Quang Thắng', '0965567890', N'Tiềm năng'),
(6015, N'Quách Thu Hà', '0956678901', N'Hiện hữu'),
(6016, N'Lương Gia Huy', '0947789012', N'Tiềm năng'),
(6017, N'Diệp Bảo Ngọc', '0938890123', N'Hiện hữu'),
(6018, N'Cao Văn Sơn', '0929901234', N'Tiềm năng'),
(6019, N'Hà Thị Yến', '0910012345', N'Hiện hữu'),
(6020, N'Trịnh Xuân Trường', '0901123456', N'Tiềm năng');
GO

SELECT * FROM KHACHHANG

----THONG TIN HOP DONG
DROP TABLE HOPDONG
GO 

----THONG TIN HOP DONG
DROP TABLE HOPDONG
GO 

CREATE TABLE HOPDONG(
 MAHD INT PRIMARY KEY,
 LOAIHD NVARCHAR(50), ---ĐẶT CỌC,MUA BAN,CHYỂN NHƯỢNG,THANH LÝ
 NGAYLAP DATE,
 MASP INT,
 MAKH INT,
 MANV_LAP INT,
 MANV_DUYET INT,
 TONGGIATRI DECIMAL(18,2),
 SOTIENDACOC DECIMAL(18,2),
 TRANGTHAITHANHTOAN NVARCHAR(50)
 );
 GO

INSERT INTO HOPDONG (MAHD, LOAIHD, NGAYLAP, MASP, MAKH, MANV_LAP, MANV_DUYET, TONGGIATRI, SOTIENDACOC, TRANGTHAITHANHTOAN) VALUES
(8001, N'ĐẶT CỌC', '2025-01-10', 501, 6001, 7001, 7003, 3500000000, 100000000, N'Đã thanh toán cọc'),
(8002, N'MUA BÁN', '2025-01-15', 501, 6001, 7001, 7003, 3500000000, 100000000, N'Đang thanh toán'),
(8003, N'ĐẶT CỌC', '2025-01-12', 503, 6003, 7005, 7003, 15000000000, 500000000, N'Đã thanh toán cọc'),
(8004, N'MUA BÁN', '2025-01-20', 503, 6003, 7005, 7003, 15000000000, 500000000, N'Hoàn tất'),
(8005, N'ĐẶT CỌC', '2025-02-01', 505, 6005, 7009, 7003, 8500000000, 200000000, N'Đã thanh toán cọc'),
(8006, N'MUA BÁN', '2025-02-10', 505, 6005, 7009, 7003, 8500000000, 200000000, N'Đang thanh toán'),
(8007, N'ĐẶT CỌC', '2025-02-15', 507, 6007, 7011, 7003, 2800000000, 50000000, N'Đã thanh toán cọc'),
(8008, N'MUA BÁN', '2025-02-25', 507, 6007, 7011, 7003, 2800000000, 50000000, N'Hoàn tất'),
(8009, N'THANH LÝ', '2025-03-01', 509, 6009, 7013, 7003, 3900000000, 100000000, N'Đã thanh lý'),
(8010, N'ĐẶT CỌC', '2025-03-05', 511, 6011, 7015, 7003, 1800000000, 50000000, N'Đã thanh toán cọc'),
(8011, N'MUA BÁN', '2025-03-15', 511, 6011, 7015, 7003, 1800000000, 50000000, N'Đang thanh toán'),
(8012, N'ĐẶT CỌC', '2025-03-20', 513, 6013, 7017, 7003, 4800000000, 150000000, N'Đã thanh toán cọc'),
(8013, N'MUA BÁN', '2025-03-30', 513, 6013, 7017, 7003, 4800000000, 150000000, N'Hoàn tất'),
(8014, N'ĐẶT CỌC', '2025-04-05', 515, 6015, 7001, 7003, 18000000000, 1000000000, N'Đã thanh toán cọc'),
(8015, N'MUA BÁN', '2025-04-15', 515, 6015, 7001, 7003, 18000000000, 1000000000, N'Đang thanh toán'),
(8016, N'CHUYỂN NHƯỢNG', '2025-04-20', 517, 6017, 7005, 7003, 5500000000, 0, N'Hoàn tất'),
(8017, N'ĐẶT CỌC', '2025-05-01', 519, 6019, 7009, 7003, 6500000000, 200000000, N'Đã thanh toán cọc'),
(8018, N'MUA BÁN', '2025-05-10', 519, 6019, 7009, 7003, 6500000000, 200000000, N'Đang thanh toán'),
(8019, N'ĐẶT CỌC', '2025-05-15', 501, 6002, 7001, 7003, 3500000000, 100000000, N'Chờ duyệt'),
(8020, N'THANH LÝ', '2025-05-20', 505, 6004, 7005, 7003, 8500000000, 200000000, N'Đã thanh lý');
GO

SELECT * FROM HOPDONG
----THONG TIN PHIEU THU
DROP TABLE PHIEUTHU
GO 

CREATE TABLE PHIEUTHU(
 SOPHIEU INT PRIMARY KEY,
 NGAYTHU DATE,
 SOTIENTHU DECIMAL(18,2),
 NOIDUNGTHU VARCHAR(255),
 HINHTHUCTHU NVARCHAR(50), ---TIEN MAT/CHUYEN KHOAN
 MAHD INT,
 MANV_THU INT,---NHAN VIEN KE TOAN LAP PHIEU
 );
 GO 

INSERT INTO PHIEUTHU (SOPHIEU, NGAYTHU, SOTIENTHU, NOIDUNGTHU, HINHTHUCTHU, MAHD, MANV_THU) VALUES
(9001, '2025-01-10', 100000000, N'Thu tiền đặt cọc căn hộ HA-01', N'Chuyển khoản', 8001, 7004),
(9002, '2025-01-15', 500000000, N'Thu tiền đợt 1 hợp đồng mua bán HA-01', N'Chuyển khoản', 8002, 7004),
(9003, '2025-01-12', 500000000, N'Thu tiền đặt cọc biệt thự SB-05', N'Chuyển khoản', 8003, 7008),
(9004, '2025-01-20', 2000000000, N'Thu tiền đợt 1 biệt thự SB-05', N'Chuyển khoản', 8004, 7008),
(9005, '2025-02-01', 200000000, N'Thu tiền đặt cọc nhà phố RP-01', N'Tiền mặt', 8005, 7012),
(9006, '2025-02-10', 1500000000, N'Thu tiền đợt 1 nhà phố RP-01', N'Chuyển khoản', 8006, 7012),
(9007, '2025-02-15', 50000000, N'Thu tiền đặt cọc căn hộ RB-1201', N'Chuyển khoản', 8007, 7016),
(9008, '2025-02-25', 1000000000, N'Thu tiền đợt 1 căn hộ RB-1201', N'Chuyển khoản', 8008, 7004),
(9009, '2025-03-01', 390000000, N'Thu phí thanh lý hợp đồng căn hộ OR-05', N'Tiền mặt', 8009, 7008),
(9010, '2025-03-05', 50000000, N'Thu tiền đặt cọc căn hộ SP-20', N'Chuyển khoản', 8010, 7012),
(9011, '2025-03-15', 500000000, N'Thu tiền đợt 1 căn hộ SP-20', N'Chuyển khoản', 8011, 7016),
(9012, '2025-03-20', 150000000, N'Thu tiền đặt cọc căn hộ CP-08', N'Chuyển khoản', 8012, 7004),
(9013, '2025-03-30', 2000000000, N'Thu tiền đợt 1 căn hộ CP-08', N'Chuyển khoản', 8013, 7008),
(9014, '2025-04-05', 1000000000, N'Thu tiền đặt cọc biệt thự CP-02', N'Chuyển khoản', 8014, 7012),
(9015, '2025-04-15', 5000000000, N'Thu tiền đợt 1 biệt thự CP-02', N'Chuyển khoản', 8015, 7016),
(9016, '2025-04-20', 5500000000, N'Thu tiền thanh toán chuyển nhượng HG-05', N'Chuyển khoản', 8016, 7004),
(9017, '2025-05-01', 200000000, N'Thu tiền đặt cọc căn hộ SC-09', N'Chuyển khoản', 8017, 7008),
(9018, '2025-05-10', 1000000000, N'Thu tiền đợt 1 căn hộ SC-09', N'Chuyển khoản', 8018, 7012),
(9019, '2025-01-20', 400000000, N'Thu tiền đợt 2 căn hộ HA-01', N'Chuyển khoản', 8002, 7016),
(9020, '2025-05-25', 850000000, N'Thu phí thanh lý nhà phố RP-01', N'Tiền mặt', 8020, 7004);
GO

SELECT * FROM PHIEUTHU

---CAU 1:LIỆT KÊ TẤT CẢ NHÂN VIÊN TRONG CÔNG TY
SELECT
NHAN_VIEN.HOTEN,
NHAN_VIEN.MANV,
FROM NHAN_VIEN
---CAU 2:LIỆT KÊ DANH SÁCH CÁC DỰ ÁN ĐANG MỞ BÁN
SELECT
DUAN.TENDUAN,
DUAN.TRANGTHAI
FROM DUAN
WHERE DUAN.TRANGTHAI = N'Đang mở bán';
---CAU 3:HIỂN THỊ THÔNG TIN CÁC CHỦ ĐẦU TƯ CÓ ĐỊA CHỈ TẠI HÀ NỘI
SELECT
DONVITHICONG.TENDVTC,
DONVITHICONG.DIACHI
FROM DONVITHICONG
WHERE DONVITHICONG.DIACHI LIKE N'%Nội%';
---CAU 4:Tìm tất cả sản phẩm có giá bán trên 2 tỷ đồng.
SELECT
SANPHAM.TENSP,
SANPHAM.GIABAN
FROM SANPHAM
WHERE SANPHAM.GIABAN > 2000000000;
---CAU 5:Liệt kê danh sách các đơn vị thi công và số điện thoại của họ.
SELECT
DONVITHICONG.TENDVTC,
DONVITHICONG.SODIENTHOAI
FROM DONVITHICONG
---CAU 6:Tìm các khách hàng thuộc loại "Khách hàng tiềm năng".
SELECT
KHACHHANG.HOTEN,
KHACHHANG.LOAIKH,
KHACHHANG.MAKH
FROM KHACHHANG
WHERE KHACHHANG.LOAIKH = N'Tiềm Năng';
---CAU 7:Hiển thị mã số và tên các phòng ban trong công ty.
SELECT
PHONG_BAN.MAPB,
PHONG_BAN.TENPB
FROM PHONG_BAN
---CAU 8:Lấy danh sách các sản phẩm là "Căn hộ".
SELECT
SANPHAM.TENSP,
SANPHAM.LOAISP
FROM SANPHAM
WHERE SANPHAM.LOAISP = N'Căn hộ';
---CAU 9:Tìm các dự án do chủ đầu tư có mã 101 thực hiện.
SELECT
CHUDAUTU.TENCDT,
CHUDAUTU.MACDT,
DUAN.TENDUAN
FROM DUAN
JOIN CHUDAUTU ON DUAN.MACDT = CHUDAUTU.MACDT
WHERE CHUDAUTU.MACDT = '101';
---CAU 10:Liệt kê các hợp đồng được lập trong tháng 12/2025
SELECT
HOPDONG.MAKH,
HOPDONG.MAHD,
HOPDONG.NGAYLAP
FROM HOPDONG
WHERE MONTH(HOPDONG.NGAYLAP)=05 AND YEAR(HOPDONG.NGAYLAP)=2025;
---CAU 11:HIỂN THỊ TÊN NHAN VIEN KEM THEO PHONG BAN CUA HO 
SELECT
NHAN_VIEN.HOTEN,
NHAN_VIEN.MAPB,
PHONG_BAN.TENPB
FROM NHAN_VIEN
JOIN PHONG_BAN ON NHAN_VIEN.MAPB = PHONG_BAN.MAPB;
---CAU 12:Liệt kê các dự án cùng với tên của chủ đầu tư tương ứng.
SELECT
DUAN.TENDUAN,
DUAN.MACDT,
CHUDAUTU.TENCDT
FROM DUAN
JOIN CHUDAUTU ON CHUDAUTU.MACDT = DUAN.MACDT;
---CAU 13:HIỂN THỊ THÔNG TIN SẢN PHẨM KÈM THEO TÊN KHU ĐẤT VÀ TÊN DỰ ÁN
SELECT
SANPHAM.TENSP,
KHUDAT.TENKHU,
DUAN.TENDUAN
FROM SANPHAM
JOIN KHUDAT ON SANPHAM.MAKHU = KHUDAT.MAKHU
JOIN DUAN ON KHUDAT.MADUAN = DUAN.MADUAN;
----CAU 14:Lấy danh sách các hợp đồng kèm theo tên khách hàng và tên sản phẩm.
SELECT
HOPDONG.MAHD,
HOPDONG.LOAIHD,
KHACHHANG.HOTEN,
SANPHAM.TENSP
FROM HOPDONG
JOIN KHACHHANG ON HOPDONG.MAKH = KHACHHANG.MAKH
JOIN SANPHAM ON HOPDONG.MASP = SANPHAM.MASP;
----CAU 15:Hiển thị tất cả phiếu thu kèm theo mã hợp đồng và số tiền thu.
SELECT
PHIEUTHU.SOPHIEU,
PHIEUTHU.MAHD,
PHIEUTHU.SOTIENTHU
FROM PHIEUTHU
----CAU 16:Tìm tên các nhân viên đã lập hợp đồng đặt cọc cho khách hàng.(DISTINCT)
SELECT DISTINCT
NHAN_VIEN.HOTEN,
HOPDONG.MANV_LAP
FROM NHAN_VIEN
JOIN HOPDONG ON NHAN_VIEN.MANV = HOPDONG.MANV_LAP
WHERE HOPDONG.LOAIHD = N'Đặt cọc';
----CAU 17:Liệt kê các dự án và tên đơn vị thi công của dự án đó.
SELECT
DUAN.TENDUAN,
DONVITHICONG.TENDVTC
FROM DUAN
JOIN DONVITHICONG ON DUAN.MADVTC = DONVITHICONG.MADVTC;
----CAU 18:Hiển thị thông tin khách hàng đã ký hợp đồng mua bán
SELECT 
KHACHHANG.HOTEN,
KHACHHANG.MAKH,
HOPDONG.LOAIHD
FROM KHACHHANG
JOIN HOPDONG ON KHACHHANG.MAKH = HOPDONG.MAKH
WHERE HOPDONG.LOAIHD = N'MUA BÁN';
----CAU 19:Hiển thị lịch sử thu tiền (phiếu thu) của một khách hàng cụ thể.
SELECT
PHIEUTHU.SOTIENTHU,
PHIEUTHU.SOPHIEU,
PHIEUTHU.NOIDUNGTHU,
PHIEUTHU.NGAYTHU,
KHACHHANG.HOTEN
FROM KHACHHANG
JOIN HOPDONG ON KHACHHANG.MAKH = HOPDONG.MAKH
JOIN PHIEUTHU ON HOPDONG.MAHD = PHIEUTHU.MAHD
WHERE KHACHHANG.MAKH = '6001';
----CAU 20:Tính tổng số lượng sản phẩm của từng dự án.
SELECT
DUAN.TENDUAN,
DUAN.MADUAN,
COUNT(SANPHAM.MASP) AS SOLUONGSANPHAM
FROM DUAN
LEFT JOIN SANPHAM ON DUAN.MADUAN = SANPHAM.MAKHU
GROUP BY
DUAN.TENDUAN,
DUAN.MADUAN;
---21:Tính tổng doanh thu từ tất cả các phiếu thu.
SELECT
SUM(PHIEUTHU.SOTIENTHU) AS TONGDOANHTHU
FROM PHIEUTHU
---22:Đếm số lượng nhân viên của mỗi phòng ban.
SELECT
PHONG_BAN.TENPB,
PHONG_BAN.MAPB,
COUNT(NHAN_VIEN.MANV) AS SOLUONGNHANVIEN
FROM PHONG_BAN
JOIN NHAN_VIEN ON PHONG_BAN.MAPB = NHAN_VIEN.MAPB
GROUP BY
PHONG_BAN.TENPB,
PHONG_BAN.MAPB;
---23:Liệt kê các phòng ban có trên 5 nhân viên.
SELECT
PHONG_BAN.TENPB,
PHONG_BAN.MAPB,
COUNT(NHAN_VIEN.MANV) 
FROM PHONG_BAN
JOIN NHAN_VIEN ON PHONG_BAN.MAPB = NHAN_VIEN.MAPB
GROUP BY
PHONG_BAN.TENPB,
PHONG_BAN.MAPB
HAVING COUNT(NHAN_VIEN.MANV) > 5;
---24:Tính tổng tiền đã thu của từng hợp đồng mua bán.
SELECT
HOPDONG.MAHD,
SUM(PHIEUTHU.SOTIENTHU) AS TONGTIENDATHU
FROM HOPDONG
JOIN PHIEUTHU ON HOPDONG.MAHD = PHIEUTHU.MAHD
GROUP BY 
HOPDONG.MAHD;
---25:Thống kê số lượng hợp đồng được lập theo từng tháng.
SELECT
MONTH(HOPDONG.NGAYLAP) AS THANG,
YEAR(HOPDONG.NGAYLAP) AS NAM,
COUNT(HOPDONG.NGAYLAP) AS SOLUONGHOPDONG
FROM HOPDONG
GROUP BY
MONTH(HOPDONG.NGAYLAP),
YEAR(HOPDONG.NGAYLAP)
ORDER BY
THANG,
NAM;
---26:Hiển thị danh sách sản phẩm kèm theo cột "Phân khúc": Nếu giá > 5 tỷ là 'Cao cấp', ngược lại là 'Bình dân'.
SELECT
SANPHAM.TENSP,
SANPHAM.MASP,
SANPHAM.GIABAN,
CASE  
    WHEN SANPHAM.GIABAN > 5000000000
    THEN N'Cao cấp'
    ELSE N'Bình dân'
END AS Phankhuc
FROM SANPHAM;
---27:Phân loại nhân viên: Nếu thuộc phòng 20 là 'Lãnh đạo', còn lại là 'Nhân viên'.
----28:Kiểm tra tiến độ thanh toán hợp đồng: Nếu số tiền thu = tổng giá trị thì ghi 'Hoàn tất', ngược lại 'Còn nợ'.
