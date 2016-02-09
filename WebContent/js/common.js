function CoreLibrary(){}

var coreLibs = new CoreLibrary();

CoreLibrary.prototype.init = function() {
};

CoreLibrary.prototype.clearForm = function() {
	$('.form_table')[0].reset();
};
