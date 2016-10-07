$ ->
  $('a#new-recipe-nav').click (e) ->
    e.preventDefault()
    $(".nav-link").removeClass('active')
    $(this).parent().addClass('active')

  $ ->
    $('a#index-recipe-nav').click (e) ->
      e.preventDefault()
      $(".nav-link").removeClass('active')
      $(this).parent().addClass('active')
  


  