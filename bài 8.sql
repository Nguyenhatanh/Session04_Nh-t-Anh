
CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;


CREATE TABLE PhongBan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phong_ban VARCHAR(100) NOT NULL
);


CREATE TABLE NhanVien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    ngay_vao_lam DATE,
    phong_ban_id INT
);


ALTER TABLE NhanVien
ADD CONSTRAINT fk_phongban
FOREIGN KEY (phong_ban_id) REFERENCES PhongBan(id);


INSERT INTO PhongBan (ten_phong_ban)
VALUES 
('Nhân sự'),
('Kế toán'),
('IT');


INSERT INTO NhanVien (ho_ten, email, ngay_vao_lam, phong_ban_id)
VALUES 
('Nguyễn Văn Minh', 'minh.nv@email.com', '2023-01-15', 1),
('Phạm Thị Hoa', 'hoa.pt@email.com', '2022-07-20', 2);


SELECT n.id, n.ho_ten, n.email, n.ngay_vao_lam, p.ten_phong_ban
FROM NhanVien n
JOIN PhongBan p ON n.phong_ban_id = p.id
WHERE p.ten_phong_ban = 'IT';


UPDATE NhanVien
SET phong_ban_id = (
    SELECT id FROM PhongBan WHERE ten_phong_ban = 'Nhân sự'
)
WHERE ho_ten = 'Trần Văn An';


DELETE FROM NhanVien
WHERE ho_ten = 'Lê Thị Bích';

SELECT * FROM PhongBan
