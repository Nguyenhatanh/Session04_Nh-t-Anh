-- Task 1: Tạo CSDL
CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;

-- Task 2: Tạo bảng PhongBan
CREATE TABLE PhongBan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phong_ban VARCHAR(100) NOT NULL
);

-- Task 3: Tạo bảng NhanVien
CREATE TABLE NhanVien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    ngay_vao_lam DATE,
    phong_ban_id INT
);

-- Task 4: Thêm khóa ngoại giữa NhanVien và PhongBan
ALTER TABLE NhanVien
ADD CONSTRAINT fk_phongban
FOREIGN KEY (phong_ban_id) REFERENCES PhongBan(id);

-- Task 5: Chèn dữ liệu vào bảng PhongBan
INSERT INTO PhongBan (ten_phong_ban)
VALUES 
('Nhân sự'),
('Kế toán'),
('IT');

-- Task 6: Chèn dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (ho_ten, email, ngay_vao_lam, phong_ban_id)
VALUES 
('Nguyễn Văn Minh', 'minh.nv@email.com', '2023-01-15', 1),
('Phạm Thị Hoa', 'hoa.pt@email.com', '2022-07-20', 2);

-- Task 7: (Nạp dữ liệu hàng loạt bằng mysqlimport)
-- (Thực hiện ngoài file SQL, nhưng dữ liệu sẽ nạp thêm vào bảng NhanVien)

-- Dữ liệu trong file NhanVien.csv:
-- "Trần Văn An","an.tv@email.com","2023-10-25",3
-- "Lê Thị Bích","bich.lt@email.com","2023-11-15",2

-- Task 8: Truy vấn tất cả nhân viên thuộc phòng ban 'IT'
SELECT n.id, n.ho_ten, n.email, n.ngay_vao_lam, p.ten_phong_ban
FROM NhanVien n
JOIN PhongBan p ON n.phong_ban_id = p.id
WHERE p.ten_phong_ban = 'IT';

-- Task 9: Cập nhật phòng ban của nhân viên "Trần Văn An" sang 'Nhân sự'
UPDATE NhanVien
SET phong_ban_id = (
    SELECT id FROM PhongBan WHERE ten_phong_ban = 'Nhân sự'
)
WHERE ho_ten = 'Trần Văn An';

-- Task 10: Xóa nhân viên "Lê Thị Bích" khỏi hệ thống
DELETE FROM NhanVien
WHERE ho_ten = 'Lê Thị Bích';

SELECT * FROM PhongBan
