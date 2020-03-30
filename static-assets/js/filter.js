function showProducts(minPrice, maxPrice) {
  function showProducts(minPer, maxPer) {
       $("#products tr").hide().filter(function() {
         var percentage = $(this).data('percentage');
         return percentage >= minPer && percentage <= maxPer;
       }).show();
    }

$(function() {
	var percentages = $('#products').map(function() {
        return $(this).data('percentage');
      }).get();
      var options = {
          range: true,
          min: 1,
          max: 11,
          values: [1, 11],
          slide: function(event, ui) {
            var min = ui.values[0],
              max = ui.values[1];
    
            $("#amount").val(min + "% - " + max + "%");
            showProducts(min, max);
          }
        },
        min, max;
    
      $("#slider-range").slider(options);
    
      min = $("#slider-range").slider("values", 0);
      max = $("#slider-range").slider("values", 1);
    
      $("#amount").val(min + "% -" + max + "%");
      showProducts(min, max);
});