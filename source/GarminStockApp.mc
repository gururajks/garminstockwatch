using Toybox.Application as App;

class GarminStockApp extends App.AppBase {

	var stockView;
    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    	stockView.updateStocks();
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
    	stockView = new GarminStockView();
        return [ stockView ];
    }

}