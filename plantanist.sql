-- Database: `Plantanist`


-- Table structure for table `users`

CREATE TABLE users (
    user_id INT UNSIGNED PRIMARY KEY,  -- ID unik pengguna
    google_id VARCHAR(255) UNIQUE NOT NULL,  -- ID unik dari Google
    username VARCHAR(255) UNIQUE NOT NULL,  -- Nama pengguna
    email VARCHAR(255) UNIQUE NOT NULL,  -- Email pengguna
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Waktu pembuatan akun
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE plant_disease (
    disease_id INT UNSIGNED PRIMARY KEY,  -- ID penyakit
    disease_name VARCHAR(255) NOT NULL,  -- Nama penyakit
    description_disease TEXT,  -- Deskripsi penyakit
    image_url VARCHAR(255),  -- URL gambar terkait penyakit
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Waktu deteksi penyakit
);

CREATE TABLE user_histories (
    history_id SERIAL PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL, -- Sesuaikan tipe data agar sama dengan tabel users
    disease_id INT UNSIGNED,
    plant_image_url VARCHAR(255),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (disease_id) REFERENCES plant_diseases(disease_id) ON DELETE SET NULL
);


