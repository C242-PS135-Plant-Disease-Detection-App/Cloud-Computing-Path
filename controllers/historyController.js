const db = require("../config/db-config");

exports.getAllDiagnoses = async (request, h) => {
    const sql = 'SELECT * FROM diagnoses WHERE user_id = ?';  // Query SQL untuk mengambil data berdasarkan user_id
    try {
        const [result] = await db.promise().query(sql, request.user.uid);
        return h.response({
            status: 'success',
            message: 'Data berhasil diambil',
            result
        });
    } catch (error) {
        console.error(error);
        return h.response({
            status: 'fail',
            message: 'Internal Server Error'
        }).code(500);
    }
}