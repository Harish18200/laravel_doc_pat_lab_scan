CREATE TABLE lab_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lab_select VARCHAR(255) NOT NULL,
    description TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL DEFAULT NULL
);

CREATE TABLE lab_details ( 
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lab_select_id INT UNSIGNED NOT NULL, 
    lab_details VARCHAR(255) NOT NULL,
    normal_range VARCHAR(255), 
    unit VARCHAR(255), 
    price VARCHAR(255), 
    child VARCHAR(255), 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL DEFAULT NULL
);



INSERT INTO lab_master (lab_select, DESCRIPTION, created_at, updated_at) VALUES
('Haematology', NULL, NOW(), NOW()),
('Bio-Chemistry', NULL, NOW(), NOW()),
('Urine Analysis', NULL, NOW(), NOW()),
('Motion Analysis', NULL, NOW(), NOW()),
('Liver Function Test', NULL, NOW(), NOW()),
('Enzymes Assay', NULL, NOW(), NOW()),
('Electrolytes', NULL, NOW(), NOW()),
('Lipid Profile', NULL, NOW(), NOW()),
('Immuno Serology', NULL, NOW(), NOW()),
('Culture & Drug Sensitivity', NULL, NOW(), NOW()),
('Fluid Analysis', NULL, NOW(), NOW()),
('Coagulation Assay', NULL, NOW(), NOW()),
('Sputum Analysis', NULL, NOW(), NOW()),
('Semen Analysis', NULL, NOW(), NOW()),
('Endocrinology', NULL, NOW(), NOW()),
('1.5T M.R.I Study', NULL, NOW(), NOW()),
('Breast Imaging', NULL, NOW(), NOW()),
('64 Slice C.T. Angiography', NULL, NOW(), NOW()),
('C. T. Study', NULL, NOW(), NOW()),
('Ultrasound Study', NULL, NOW(), NOW()),
('Doppler Studies', NULL, NOW(), NOW()),
('Other Studies', NULL, NOW(), NOW());



INSERT INTO lab_details (lab_select_id, lab_details, normal_range, unit, price, child)
SELECT 
    FLOOR(1 + (RAND() * 22)),  -- Generates a random number between 1 and 22 for lab_select_id
    lab_detail,                -- Insert predefined lab details
    CONCAT(FLOOR(70 + RAND() * 30), '-', FLOOR(100 + RAND() * 200)), -- Random normal range
    CONCAT('Unit ', FLOOR(1 + RAND() * 10)), -- Random unit
    ROUND(RAND() * 1000, 2), -- Random price
    CONCAT('Child ', FLOOR(1 + RAND() * 50)) -- Random child value
FROM (
    SELECT 'Blood Sugar Fasting' AS lab_detail UNION ALL
    SELECT 'Blood Sugar (Random)' UNION ALL
    SELECT 'Urea' UNION ALL
    SELECT 'Serum Creatinine' UNION ALL
    SELECT 'Serum Uric Acid' UNION ALL
    SELECT 'Total Calcium' UNION ALL
    SELECT 'Phosphorous' UNION ALL
    SELECT 'Amylase' UNION ALL
    SELECT 'Lipase' UNION ALL
    SELECT 'GGT' UNION ALL
    SELECT 'Control Test' UNION ALL
    SELECT 'APTT' UNION ALL
    SELECT 'Urine Complete' UNION ALL
    SELECT 'Glucose' UNION ALL
    SELECT 'Bilirubin' UNION ALL
    SELECT 'pH' UNION ALL
    SELECT 'Protein' UNION ALL
    SELECT 'Urobilinogen' UNION ALL
    SELECT 'Nitrite'
) AS tmp;

