const db = require('../config/db-config');
const { generatePlantDiseaseDescription } = require('../services/textGenerate');

const predict = async (request, h) => {
  const { name, plant, accuracy, image } = request.payload;

  try {
    const description = await generatePlantDiseaseDescription(
      name,
      plant,
      accuracy
    );
    const sql = 'INSERT INTO diagnoses SET ?'; // Query SQL untuk menyimpan data diagnosis ke database
    const data = {
      user_id: request.user.uid, // ID pengguna yang melakukan prediksi
      name, // Nama penyakit
      plant, // Nama tanaman
      accuracy, // Tingkat akurasi
      description, // Deskripsi hasil prediksi
      image, // URL Gambar
    };
    const [result] = await db.promise().query(sql, data);
    return h.response({
      status: 'success',
      message: 'Data berhasil diambil',
      result: data,
    });
  } catch (error) {
    console.error(error);
    return h
      .response({
        status: 'fail',
        message: 'Internal Server Error',
      })
      .code(500);
  }
};

module.exports = predict;
