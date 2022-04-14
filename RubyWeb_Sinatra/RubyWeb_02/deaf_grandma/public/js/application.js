$(document).ready(function() {
  // Este código corre después de que `document` fue cargado(loaded)
  // completamente.
  // Esto garantiza que si amarramos(bind) una función a un elemento
  // de HTML, éste ya exista en la página.
$("h1").bind("click", function(){
    alert("The paragraph was clicked.");
});

$("#boton").click(function(event){
  var name = $('#text_id').val();
  alert(name);
});

  $('#forma').on("submit", function(event){
    event.preventDefault();

    var url = '/abuelita';
    var data_to_compare = $( this ).serialize();
    $.post(url,data_to_compare, function( callback ) {
    console.log(callback);
    $( "body" ).html( callback );

    });
  });
});