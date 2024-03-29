CREATE TABLE entreprise (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    domaine_activite VARCHAR(100),
    ville VARCHAR(100),
    pays VARCHAR(100),
    chiffre_affaires DECIMAL(15, 2),
    date_fondation DATE
);

-- Insertion de données fictives dans la table entreprise
INSERT INTO entreprise (nom, domaine_activite, ville, pays, chiffre_affaires, date_fondation) VALUES
('Acme Corporation', 'Technologie', 'New York', 'USA', 5000000.00, '1990-05-15'),
('Globex Corporation', 'Fabrication', 'Springfield', 'USA', 3500000.00, '1985-10-20'),
('Wayne Enterprises', 'Finance', 'Gotham City', 'USA', 8000000.00, '1920-07-10'),
('Umbrella Corporation', 'Pharmaceutique', 'Raccoon City', 'USA', 10000000.00, '1967-03-23'),
('Stark Industries', 'Technologie', 'Los Angeles', 'USA', 12000000.00, '1940-09-07'),
('Tyrell Corporation', 'Biotechnologie', 'Los Angeles', 'USA', 6500000.00, '1982-06-12'),
('Weyland-Yutani Corporation', 'Technologie', 'Tokyo', 'Japon', 9000000.00, '2071-01-03'),
('Virtucon', 'Commerce', 'Las Vegas', 'USA', 3000000.00, '1997-04-28'),
('Soylent Corporation', 'Alimentaire', 'New York', 'USA', 4000000.00, '1973-11-05'),
('Gringotts Wizarding Bank', 'Finance', 'Londres', 'Royaume-Uni', 6000000.00, '1474-08-21');