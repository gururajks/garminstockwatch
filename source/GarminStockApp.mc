using Toybox.Application as App;
using Toybox.Timer as Timer;
using Toybox.WatchUi as Ui;

class GarminStockApp extends App.AppBase {

	var stockView;
    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {    	
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    	
    }
         
    function startTimer() {
    	var timer = new Timer.Timer();
    	timer.start(method(:refreshUI), 2000, false);
    }
    
    function refreshUI() {
    	stockView.updateView();
    }
    
    // Return the initial view of your application here
    function getInitialView() {
    	stockView = new GarminStockView();
        return [ stockView ];
    }

}