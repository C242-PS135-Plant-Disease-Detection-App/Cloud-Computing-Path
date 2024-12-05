const { GoogleGenerativeAI } = require("@google/generative-ai");

const genAI = new GoogleGenerativeAI(process.env.API_KEY);
const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

const generatePlantDiseaseDescription = async (name, plant, accuracy) => {
    const prompt = `Berikan deskripsi penjelasan mengenai penyakit ${name} untuk tumbuhan ${plant} dengan akurasi ${accuracy}`;
    
    try {
      const result = await model.generateContent(prompt);
      return result.response.text();  // Pastikan format sesuai dengan versi SDK yang digunakan
    } catch (error) {
      console.error("Error generating AI content:", error);
      throw error;
    }
  };

  module.exports = { generatePlantDiseaseDescription };