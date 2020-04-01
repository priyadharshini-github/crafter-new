 $(document).ready(function() {
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