 $( document ).ready(function() {
        $('.item.odd .js-lazyYT').lazyYT();
            
            // Pass some parameters
        $('.item.even .js-lazyYT').lazyYT({
            loading_text: 'It is loading!...',
            default_ratio: '16:9'
    });
});
        
        
        