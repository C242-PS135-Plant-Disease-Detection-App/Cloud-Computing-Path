const histories = []; // Simpan data history di memori sementara

exports.getHistory = (request, h) => {
  const { userId } = request.params;

  // Ambil data history berdasarkan userId
  const userHistories = histories.filter((history) => history.userId === userId);

  if (userHistories.length === 0) {
    return h.response({ message: 'No history found for this user' }).code(404);
  }

  return h.response(userHistories).code(200);
};

exports.addHistory = (request, h) => {
  const { userId, disease, imageUrl, confidence } = request.payload;

  const newHistory = { userId, disease, imageUrl, confidence, createdAt: new Date() };
  histories.push(newHistory);

  return h.response({ message: 'History added successfully', data: newHistory }).code(201);
};
