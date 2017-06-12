
var page = require('webpage').create(), system = require('system');
var url = system.args[1], savapath = system.args[2];

page.open(url, function () {
	window.setTimeout(function() {
		page.render(savapath);
		
		phantom.exit();
	},5000);
	
});