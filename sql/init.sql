CREATE DATABASE IF NOT EXISTS lab_system
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE lab_system;

CREATE TABLE IF NOT EXISTS lab_member (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '成员ID',
    name VARCHAR(50) NOT NULL COMMENT '姓名',
    student_no VARCHAR(30) NOT NULL COMMENT '学号',
    gender TINYINT NOT NULL COMMENT '性别：0未知，1男，2女',
    grade VARCHAR(20) NOT NULL COMMENT '年级',
    major VARCHAR(100) NOT NULL COMMENT '专业',
    phone VARCHAR(20) NULL COMMENT '手机号',
    email VARCHAR(100) NULL COMMENT '邮箱',
    status TINYINT NOT NULL DEFAULT 1 COMMENT '状态：0离开实验室，1正常',
    create_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    UNIQUE KEY uk_student_no (student_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实验室成员表';

INSERT INTO lab_member
(name, student_no, gender, grade, major, phone, email, status)
VALUES
('张三', '20230001', 1, '2023', '软件工程', '13800138001', 'zhangsan@example.com', 1),
('李四', '20230002', 2, '2023', '计算机科学与技术', '13800138002', 'lisi@example.com', 1),
('王五', '20240001', 1, '2024', '人工智能', '13800138003', 'wangwu@example.com', 1),
('赵六', '20240002', 2, '2024', '软件工程', '13800138004', 'zhaoliu@example.com', 1),
('孙七', '20250001', 1, '2025', '计算机科学与技术', '13800138005', 'sunqi@example.com', 1),
('周八', '20250002', 2, '2025', '人工智能', '13800138006', 'zhouba@example.com', 1),
('吴九', '20230003', 1, '2023', '数据科学与大数据技术', NULL, NULL, 1),
('郑十', '20240003', 2, '2024', '软件工程', NULL, NULL, 1),
('钱十一', '20250003', 1, '2025', '网络工程', '13800138009', 'qian11@example.com', 0),
('冯十二', '20230004', 2, '2023', '人工智能', '13800138010', 'feng12@example.com', 1);
