const jwt = require('jsonwebtoken');

const auth = async (req, res, next) => {
    try {
        const token = req.header('X-auth-token');
        if (!token)
            return res.status(401).json({ msg: "No auth token, access denied" })
    }
    catch (e) {
        res.status(500).json({ error: e.message });
    }
};