const jwt = require('jsonwebtoken');

const auth = async (req, res, next) => {
    try {
        const token = req.header('X-auth-token');
        if (!token)
            return res.status(401).json({ msg: "No auth token, access denied" })

        const varified = jwt.verify(token, 'passwordKey');
        if (!varified) return res.status(401).json({ msg: 'Token varification failed, authorization denied.' });

        req.user = varified.id;
        req.token = token;
        next();
    }
    catch (e) {
        res.status(500).json({ error: e.message });
    }
};

module.exports = auth;