
$(function () { 
    $("#test-runs").tablesorter()
        .bind("sortEnd",function() {
	    $("tr:odd").addClass("odd").removeClass("even");
            $("tr:even").addClass("even").removeClass("odd");
	});;
});