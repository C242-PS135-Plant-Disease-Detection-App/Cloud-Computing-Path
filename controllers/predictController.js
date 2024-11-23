module.exports = {
    detect: async (request, h) => {
      const { image } = request.payload;
  
      try {
        // Simulasi hasil prediksi dari model karena model belum selesai
        const disease = "Blight"; // Contoh penyakit
        const confidence = 0.87; // Kepercayaan prediksi
  
        return h.response({ disease, confidence }).code(200);
      } catch (err) {
        return h.response({ error: "Error detecting disease" }).code(500);
      }
    },
  };
  