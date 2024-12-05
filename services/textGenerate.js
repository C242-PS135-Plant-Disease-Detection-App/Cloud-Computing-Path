const { GoogleGenerativeAI } = require("@google/generative-ai");

const dotenv = require("dotenv");
dotenv.config();

const genAI = new GoogleGenerativeAI(process.env.API_KEY);
const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

const generatePlantDiseaseDescription = async (name, plant, accuracy) => {
    const prompt = `Berikan deskripsi penjelasan mengenai penyakit ${name} untuk tumbuhan ${plant} dengan akurasi ${accuracy}, jika dideteksi tidak ada penyakit maka informasikan jika tanaman tersebut sehat tanpa menjelaskan secara rinci`;
    
    try {
      const result = await model.generateContent(prompt);
      return result.response.text();
    } catch (error) {
      console.error("Error generating AI content:", error);
      throw error;
    }
  };

  module.exports = { generatePlantDiseaseDescription };