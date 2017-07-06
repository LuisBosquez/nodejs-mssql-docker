var express = require('express');
var bodyParser = require('body-parser');

var app = express();
app.use(express.static('wwwroot'));
app.use(bodyParser.urlencoded());
app.use('/api/comments', require('./routes/comments'));

// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});
app.set('port', process.env.PORT || 3000);

var server = app.listen(app.get('port'), function() {
    console.log('Express server listening on port ' + server.address().port);
});

module.exports = app;
