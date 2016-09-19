using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.System as Sys;
using Toybox.Lang;
using Toybox.Graphics as Gfx;

class GarminStockView extends Ui.View {

    function initialize() {
        
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

	
    
    // Update the view
    function onUpdate(dc) {
    	dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_WHITE);
    	dc.clear();
    	
    	var x = dc.getWidth() / 2;
        var y = (dc.getHeight() / 2) - (3 * dc.getFontHeight(Gfx.FONT_SMALL) / 2);
        
        // Call the parent onUpdate function to redraw the layout
        dc.drawText(x, y, Gfx.FONT_MEDIUM, Sys.getClockTime().sec.toString(), Gfx.TEXT_JUSTIFY_CENTER);
        
        Application.getApp().startTimer();        
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
