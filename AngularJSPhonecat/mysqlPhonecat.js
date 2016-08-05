var mysql = require('mysql');
var express = require('express');
var app = express();


var connection = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "",
	database: "phonecat"
});

app.use(express.static('public'));
app.use(express.static(__dirname + '/js'));
app.use(express.static(__dirname + '/app'));


app.get('/phonelist', function(req, res){
	//res.send("Hello HTML!");
	connection.query("SELECT *"+ 
		"FROM phone", function(error,rows,fields){
		res.end(JSON.stringify(rows));
	});
});
/*app.get('/phonedetail/:ids ', function(req, res){*/
	//res.send("Hello HTML!");
app.get('/phonedetail', function(req, res){
	console.log(req.params.ids);
	connection.query("SELECT "+
		"id, "+
		"description, "+ 
		"name,"+ 
		"additionalFeatures, "+
		"b.standbyTime, "+
		"b.talkTime,b.type, "+
		"a.os,a.ui, "+
		"av.list, "+
		"c.camera_id,c.features, c.primary, "+
		"ct.connectivity_id,ct.bluetooth,ct.cell,ct.gps,ct.infrared,ct.wifi, "+
		"d.display_id,d.screenResolution,d.screenSize,d.touchScreen, "+
		"h.hardware_id, h.accelerometer, h.audioJack, h.cpu,h.fmRadio,h.physicalKeyboard,h.usb,"+
		"i.images_id, i.list, "+
		"sw.size_weight_id,sw.dimensions,sw.weight, "+
		"s.storage_id, s.flash, s.ram "+
		"FROM phonedetail AS pd "+
	"INNER JOIN battery AS b ON b.phone_id=pd.phone_id "+
	"INNER JOIN android AS a ON a.phone_id=pd.phone_id "+
	"INNER JOIN availability AS av ON av.phone_id=pd.phone_id "+
	"INNER JOIN camera AS c ON c.phone_id=pd.phone_id "+
	"INNER JOIN connectivity AS ct ON ct.phone_id=pd.phone_id "+
	"INNER JOIN display AS d ON d.phone_id=pd.phone_id "+
	"INNER JOIN hardware AS h ON h.phone_id=pd.phone_id "+
	"INNER JOIN images AS i ON i.phone_id=pd.phone_id "+
	"INNER JOIN size_weight AS sw ON sw.phone_id=pd.phone_id "+
	"INNER JOIN storage AS s ON s.phone_id=pd.phone_id "+
	 "WHERE id= 'motorola-xoom-with-wi-fi'", function(error,rows,fields){
	 	/*"WHERE id= '"+req.params.ids+"'", function(error,rows,fields){*/
	 	//console.log(JSON.stringify(rows))
		res.end(JSON.stringify(rows));
	});

	/*connection.query("SELECT phone_id, id, description, name, additionalFeatures"+ 
	"FROM phonedetail WHERE id= 'motorola-xoom-with-wi-fi'", function(error,rows,fields){
	res.end(JSON.stringify(rows));
 	});*/
});


var port = 3000;
app.listen(port);
console.log("Server running on "+port);
