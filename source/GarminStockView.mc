using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.System as Sys;
using Toybox.Timer as Timer;
using Toybox.Lang;

class GarminStockView extends Ui.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

	 
    function startTimer() {
    	var timer = new Timer.Timer();
    	timer.start(method(:updateView), 2000, false);
    }
    
    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        Sys.println("Time:" + Sys.getClockTime().sec.toString());
        startTimer();
        View.onUpdate(dc);
    }
   

	function updateView() {
		WatchUi.requestUpdate();
	}

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
