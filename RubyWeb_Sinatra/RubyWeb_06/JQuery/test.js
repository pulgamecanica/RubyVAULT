$(document).ready(function() {
  // Este código corre después de que `document` fue cargado(loaded) 
  // completamente. 
  // Esto garantiza que si amarramos(bind) una función a un elemento 
  // de HTML este exista ya en la página. 
  console.log("Hola");
  $( "p" ).find( "span" ).css( "color", "red" );
  $("img").click(function(){
        var div = $("img.a");
        div.animate({height: '300px', opacity: '0.4'}, "slow");
        div.animate({width: '300px', opacity: '0.8'}, "slow");
        div.animate({height: '100px', opacity: '0.4'}, "slow");
        div.animate({width: '100px', opacity: '0.8'}, "slow");
        div.animate({height: '250px',width: '400px'}, "slow");
    });
 
});