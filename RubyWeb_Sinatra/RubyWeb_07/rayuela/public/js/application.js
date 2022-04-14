$(document).ready(function() {
  $('#start').on("click", function (){
    count= 5;
    key1 = false;
    key2 = false;
    countDown();
  });

});

function countDown() {

  var interval = setInterval(function(){
    if (count > 0) {
      $("#counter").html("<h1>"+count+"</h1>");
      count--;
    }else if (count == 0) {
      $("#counter").html("<h1>"+"Go!!!"+"</h1>");
      //método que inicia juego
      //metodo que reinicia el juego1
 
      moveCoin1("Player1");
      $(document).bind('keydown', pressKey);
      moveCoin2("Player2");
      $(document).bind('keydown', pressKey);
      clearInterval(interval);
    }
  }, 200);

}


  function moveCoin1(player){
    td = $("#" + player).find('td.active');
    $(td).next().addClass('active');
    $(td).removeClass('active');
    var index = $(td).attr("id");
    console.log(index);
    if (player == "Player1" && key1 == true || index == 59) {
      console.log("termino jugador 1");
      //llamar a función resultado
    }
    else
    {
      setTimeout(function(){
        moveCoin1(player);
      }, 100);
    }
  }


  function moveCoin2(player){
    td = $("#" + player).find('td.active');
    $(td).next().addClass('active');
    $(td).removeClass('active');
    var index = $(td).attr("id");
    console.log(index);
    if (player == "Player2" && key2 == true || index == 59) {
      console.log("termino jugador 2");
      //llamar a función resultado
    }
    else
    {
      setTimeout(function(){
        moveCoin2(player);
      }, 100);
    }
  }
  // function play2(){
  //   td = $('#Player2').find('td.active')
  //   if (td.is('#60')) {

  //   }
  //   else
  //   {
  //     $(td).removeClass('active');
  //     setTimeout(function(){
  //       $(td).next().addClass('active'); }, 5);

  //   }
  // }


  //método para obtener tecla presionada por user
  //keydown - keyup
  //Keypress

function pressKey(e){
    console.log("entrando a presskey");
    if(e.keyCode == 90){
      console.log("Hello");
      key1 = true;
    }else if(e.keyCode == 77){
      key2 = true;
    }
}

//función resultado
//recibir juagador e índice
//para calcular jugador ganador
//hay que considerar dos escenarios
//escenario valido:
//los dos se encuentran abajo o igual que la meta
//escenario inválido:
//cuando uno u otro jugaro está arriba de la meta
//calcular quien es más alto










