var express = require('express');
var router = express.Router();

const sql = require('../utils/sql');

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Infographic' });
});

router.get('/svgData/:target', (req, res) => {
  let query = `SELECT * FROM tbl_facts WHERE id="${req.params.target}"`

  sql.query(query, (err, result) => {
    if (err){console.log(err);}

    console.log(result);

    res.json(result[0]);
  })
})

module.exports = router;
