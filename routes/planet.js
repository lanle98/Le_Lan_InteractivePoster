var express = require("express");
var router = express.Router();
var sql = require("../utils/sql");

router.get("/planet/:id", function(req, res) {
  console.log("at user route");

  let query = `SELECT
          p.*,
          f.*
  
          FROM
          tbl_planets p
          LEFT JOIN tbl_figure f ON
          p.planets_id = f.planets_id
          WHERE  p.planets_id = ${req.params.id}`;

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);
    res.json(result[0]);
  });
});

module.exports = router;
