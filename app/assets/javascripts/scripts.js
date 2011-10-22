$(function(){
  
  reposicionar();
  $(window).resize(reposicionar);
  $('.esquerda, .direita, .container').show();

  function reposicionar(){
    var ladrilho = $('.ladrilho');
    var posicao = ladrilho.offset();
    var posicaoEsquerda = posicao.left -81;
    var posicaoDireita = posicao.left + ladrilho.outerWidth();
    
    $('.esquerda').css('left', posicaoEsquerda + 'px');
    $('.direita').css('left', posicaoDireita + 'px');
    
    var tamanhoJanela = $(window).height(); 
    $('.container').css('height', tamanhoJanela);
    
  }
  

  
});



