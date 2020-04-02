 $(document).ready(function() {
       var date = $(this).data('date');
       console.log(date);
       
             function sortDates(a, b)
                {
                    return new Date(b).getTime() - new Date(a).getTime();
                }
            
            var dates = [];
            var _old;
            
            $('p').each(function(){
                _old = $(this).parent();
                dates.push($(this).data('date'));
            });
            
            var sorted = dates.sort(sortDates);
            var _new = $('<div/>').insertBefore(_old);
            
            $.each(sorted,function(i,val){
                $('p[data-date="' + val + '"]').appendTo(_new);
            });
            
            _old.remove();
    	});
    	
    		$(document).ready(function() {
				$('th').click(function(){
					console.log('th clicked');
					var table = $(this).parents('table').eq(0)
					var rows = table.find('tr:gt(0)').toArray().sort(comparer($(this).index()))
					this.asc = !this.asc
					
					for (var i = 0; i < rows.length; i++){table.append(rows[i])}
				})
				function comparer(index) {
					return function(a, b) {
						var valA = getCellValue(a, index), valB = getCellValue(b, index)
						return $.isNumeric(valA) && $.isNumeric(valB) ? valA - valB : valA.toString().localeCompare(valB)
					}
				}
				function getCellValue(row, index){ return $(row).children('td').eq(index).text() }
			});