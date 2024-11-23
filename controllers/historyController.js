const diagnosisHistory = [];

module.exports = {
  saveHistory: async (request, h) => {
    const { userId, disease, imageUrl, confidence } = request.payload;

    try {
      const historyEntry = {
        id: diagnosisHistory.length + 1, 
        userId,
        disease,
        imageUrl,
        confidence,
        timestamp: new Date(),
      };

      diagnosisHistory.push(historyEntry);

      return h.response({ message: "History saved", data: historyEntry }).code(201);
    } catch (err) {
      return h.response({ message: "Error saving History", error: err.message }).code(500);
    }
  },

  getHistory: async (request, h) => {
    const { userId } = request.params;

    try {
      // Filter riwayat berdasarkan userId
      const userHistory = diagnosisHistory.filter((entry) => entry.userId === userId);

      if (userHistory.length === 0) {
        return h.response({ message: "No history found" }).code(404);
      }

      return h.response(userHistory).code(200);
    } catch (err) {
      return h.response({ error: err.message }).code(500);
    }
  },
};
