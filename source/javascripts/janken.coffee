choice = ['g', 'c', 'p']
setWidth = 180
  
$ ->
  $('.enemyhand').frameAnimation(
    setWidth: setWidth,
    frameSpeed: 70,
    maxFrame: 3
  )

$ ->
  $("#g").click ->
    $("#title").text(judge(choice[0]))

  $("#c").click ->
    $("#title").text(judge(choice[1]))

  $("#p").click ->
    $("#title").text(judge(choice[2]))

judge = (my) ->
  enemy = choice[Math.floor(Math.random() * choice.length)]

  $('.enemyhand').frameAnimation(loop:false)
  hoge = setInterval( ->
    left = -(choice.indexOf(enemy)) * setWidth
    $('.enemyhand').css({'background-position': left + 'px ' + '0px'})
    clearInterval(hoge)
  , 300)

  table = {g:'c', c:'p', p:'g'}
  switch enemy
    when table[my] then return 'Win'
    when my then return 'Draw'
    else
      return 'Lose'

