$(document).ready(function () {
  
    $('.tab').hide();
    $('.tab:first').show();

    $('.tabs li').click(function(){

        $('.tabs li').removeClass('active');
        $(this).addClass('active');

        $('.tab').hide();
        var tab_activo = $(this).find('a').attr('href');
        console.log(tab_activo);
        $(tab_activo).fadeIn();
  })
});
