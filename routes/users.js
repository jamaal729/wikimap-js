/*
 * All routes for Users are defined here
 * Since this file is loaded in server.js into api/users,
 *   these routes are mounted onto /users
 * See: https://expressjs.com/en/guide/using-middleware.html#middleware.router
 */

const express = require("express");
const router = express.Router();

module.exports = db => {
  router.get("/", (req, res) => {
    db.query(`SELECT * FROM users;`)
      .then(data => {
        const users = data.rows;
        res.json({ users });
      })
      .catch(err => {
        res.status(500).json({ error: err.message });
      });
  });

  router.post("/", (req, res) => {
    db.query(
      `INSERT INTO users (username, password)
       VALUES ($1, $2)`,
      [`${req.body.username}`, `${req.body.password}`]
    )
      .then(data => {
        const users = data.rows;
        res.json({ users });
      })
      .catch(err => {
        res.status(500).json({ error: err.message });
      });
  });

  router.put("/", (req, res) => {
    console.log(req.body.username);
    db.query(
      `UPDATE users
       SET (username, password) = ($1, $2)
       WHERE username = $1`,
      [`${req.body.username}`, `${req.body.password}`]
    )
      .then(data => {
        const users = data.rows;
        res.json({ users });
      })
      .catch(err => {
        res.status(500).json({ error: err.message });
      });
  });

  router.delete("/", (req, res) => {
    console.log(req.body.username);
    db.query(
      `DELETE FROM users
       WHERE username = $1`,
      [`${req.body.username}`]
    )
      .then(data => {
        const users = data.rows;
        res.json({ users });
      })
      .catch(err => {
        res.status(500).json({ error: err.message });
      });
  });

  return router;
};
