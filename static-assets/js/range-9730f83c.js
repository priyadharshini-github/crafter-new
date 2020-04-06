$(document).ready(function() {
    $('.noUi-handle').on('click', function() {
        $(this).width(50);
    });
    var rangeSlider = document.getElementById('slider-range');
    var moneyFormat = wNumb({
        decimals: 1,
        mark: '.'
    });
    noUiSlider.create(rangeSlider, {
        start: [0.0, 100],
        step: 0.5,
        range: {
          'min': [0.0],
          'max': [100]
        },
        format: moneyFormat,
        connect: true
    });
  
    rangeSlider.noUiSlider.on('update', function(values, handle) {
        document.getElementById('slider-range-value1').innerHTML = values[0];
        document.getElementById('slider-range-value2').innerHTML = values[1];
        document.getElementsByName('min-value').value = moneyFormat.from(values[0]);
        document.getElementsByName('max-value').value = moneyFormat.from(values[1]);

        var minValue = values[0];
        var maxValue = values[1];

   
    });
});
