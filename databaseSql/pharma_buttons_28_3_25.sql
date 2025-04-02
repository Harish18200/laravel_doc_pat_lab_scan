CREATE TABLE modality_master (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    modality_details VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO modality_master (modality_details, price) VALUES
('Interferential Therapy (IFT)', 500.00),
('Intermittent Pelvic Traction (IPT)', 600.00),
('Continuos Pelvic Traction', 550.00),
('Intermittent Cervical Traction (ICT)', 700.00),
('Ultrasound Therapy', 800.00),
('Wax Therapy', 400.00),
('Electrical Muscle Stimulation', 750.00),
('Infrared Therapy (IRR)', 650.00),
('TENS', 550.00),
('Laser Therapy', 900.00),
('Continuos Cervical Traction', 720.00),
('Leg Traction', 580.00);


CREATE TABLE therapy_masters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    therapy_details VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO therapy_masters (therapy_details, price) VALUES
('Ceps Exercises', 500.00),
('Neck Exercises', 400.00),
('Shoulder Exercises', 450.00),
('Spinal Flexion Exercises', 550.00),
('Spinal Extension Exercises', 600.00),
('Abdomen Exercises', 650.00),
('Ankle Exercises', 300.00),
('Facial Exercises', 350.00),
('Moilisation Exercises', 700.00),
('Exercises', 500.00),
('Exercises 2', 520.00),
('Physio-I', 750.00),
('Physio-II', 800.00),
('Physio-III', 850.00),
('Physio-IV', 900.00),
('Physio-V', 950.00),
('Massage-1', 1000.00),
('Massage-2', 1100.00),
('Massage-3', 1200.00);

CREATE TABLE bill_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    TYPE  VARCHAR(255) NOT NULL,
    DESCRIPTION VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO bill_type (TYPE, DESCRIPTION) VALUES
('IP', 'Inpatient billing'),
('OP', 'Outpatient billing'),
('IP/OP', 'Both inpatient and outpatient billing');



CREATE TABLE bill_masters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    DESCRIPTION VARCHAR(255) NOT NULL,
    bill_type_id INT CHECK (bill_type_id IN (1, 2, 3)), 
    Price INT, 
    STATUS TINYINT(1) DEFAULT 0,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO bill_masters (DESCRIPTION, bill_type_id, Price, STATUS) VALUES
('Consulting fee', 1, 500, 0),
('Nursing fee', 2, 300, 0),
('X-Ray(small)', 3, 700, 0),
('ECG', 1, 450, 0),
('Laser', 2, 1500, 0),
('SPIRO', 3, 1000, 0),
('X-Ray(large)', 1, 900, 0),
('SOCPY', 2, 1200, 0),
('TMT', 3, 800, 0),
('USG', 1, 600, 0),
('BED 1/2 DAY', 2, 2500, 0),
('BED FULL DAY', 3, 4000, 0),
('MAINTANANCE', 1, 200, 0),
('TRIP CHARGES', 2, 350, 0),
('IP MEDICINES', 3, 750, 0),
('DRESSING', 1, 450, 0),
('BLOOD SUGAR', 2, 200, 0),
('PHYSIOTHERAPY', 3, 1000, 0),
('SYRINGE', 1, 100, 0),
('EXERCISE 1', 2, 500, 0),
('EXERCISE 2', 3, 550, 0),
('DUTY DOCTOR CONSULTING', 1, 600, 0),
('SV SET', 2, 250, 0),
('IV SET', 3, 300, 0),
('CORIER', 1, 150, 0),
('CATHETER CHARGE', 2, 500, 0),
('NUBULISER', 3, 700, 0),
('SPO2', 1, 350, 0),
('I @ D', 2, 450, 0),
('VISITING DR CONSULTING', 3, 550, 0),
('THEATRE CHARGE', 1, 5000, 0),
('DUTY DR', 2, 800, 0);




INSERT INTO medicine_stocks (medicine, batch_no, potency, price, quantity, record_level, mfg_date, exp_date) VALUES
('CINERARIA MARITIMA EYE DROPS', 'JE230238', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 10, FLOOR(RAND() * 5 + 1), '2023-01-15', '2025-01-15'),
('DYSKOLL SYRUP', 'C17K026', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 15, FLOOR(RAND() * 5 + 1), '2023-02-10', '2025-02-10'),
('ECHINACEA OINTMENT', 'MHO53', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 12, FLOOR(RAND() * 5 + 1), '2023-03-20', '2025-03-20'),
('GUM FORTE GEL', 'B1251', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 20, FLOOR(RAND() * 5 + 1), '2023-04-25', '2025-04-25'),
('HAIR COLOR BLACK', 'SL230034', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 18, FLOOR(RAND() * 5 + 1), '2023-05-18', '2025-05-18'),
('MULLEIN OIL EAR DROPS', 'JO231039', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 25, FLOOR(RAND() * 5 + 1), '2023-06-12', '2025-06-12'),
('TOPI AESCULUS OINTMENT', 'SP65', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 30, FLOOR(RAND() * 5 + 1), '2023-07-22', '2025-07-22'),
('TOPI SULPHUR OINTMENT', 'CRO54', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 28, FLOOR(RAND() * 5 + 1), '2023-08-14', '2025-08-14'),
('TOPI CANTHARIS', 'CRO91', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 22, FLOOR(RAND() * 5 + 1), '2023-09-05', '2025-09-05'),
('TOPI THUJA', '7164D77', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 16, FLOOR(RAND() * 5 + 1), '2023-10-10', '2025-10-10'),
('ACIDUM ACETICUM', 'MY1917', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 14, FLOOR(RAND() * 5 + 1), '2023-11-01', '2025-11-01'),
('ACID BENZOICUM', 'C17K026', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 18, FLOOR(RAND() * 5 + 1), '2023-12-08', '2025-12-08'),
('ACID CARBOLICUM', '7215D201', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 20, FLOOR(RAND() * 5 + 1), '2023-01-30', '2025-01-30'),
('ACID FLUORICUM', '0127636', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 12, FLOOR(RAND() * 5 + 1), '2023-02-22', '2025-02-22'),
('ACID NITRICUM', '0127636', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 14, FLOOR(RAND() * 5 + 1), '2023-03-18', '2025-03-18'),
('ACID SULPHURICUM', '351TRB2', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 26, FLOOR(RAND() * 5 + 1), '2023-04-25', '2025-04-25'),
('ACONITUM NAPELLUS', 'C17K026', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 30, FLOOR(RAND() * 5 + 1), '2023-05-10', '2025-05-10'),
('ACONITUM NAPELLUS', '7215D201', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 22, FLOOR(RAND() * 5 + 1), '2023-06-15', '2025-06-15'),
('ADRENALINUM', 'O116091', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 16, FLOOR(RAND() * 5 + 1), '2023-07-10', '2025-07-10'),
('AESCULUS HIPPOCASTANUM', '351TRB2', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 25, FLOOR(RAND() * 5 + 1), '2023-08-18', '2025-08-18'),
('AESCULUS HIPPOCASTANUM', '7215D201', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 18, FLOOR(RAND() * 5 + 1), '2023-09-20', '2025-09-20'),
('AESCULUS HIPPOCASTANUM', '5DC284B20', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 14, FLOOR(RAND() * 5 + 1), '2023-10-22', '2025-10-22'),
('AETHUSA CYNAPIUM', 'MY1917', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 12, FLOOR(RAND() * 5 + 1), '2023-11-10', '2025-11-10'),
('AETHUSA CYNAPIUM', '0127636', FLOOR(RAND() * 21 + 30), FLOOR(RAND() * 100 + 50), 15, FLOOR(RAND() * 5 + 1), '2023-12-18', '2025-12-18');
