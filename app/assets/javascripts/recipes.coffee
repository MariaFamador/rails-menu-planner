# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
  ingredientField = $('.ingredient-field')
  addItemField = $('button.add-item')
  fieldCount = ->
    document.querySelectorAll('.ingredient-field').length

  hideFirstX = ->
    if fieldCount() == 1
      $('a.remove-ingredient').hide()

  addIngredientField = ->
    ingredientDiv = "<div class='ingredient-field form-inline'>
          <input class='form-control' id='ingredient-input' name='recipe[ingredients_attributes][#{fieldCount()}[label]' placeholder='item' type='text'>
          <a class='remove-ingredient glyphicon glyphicon-remove'></a>
        </div>"
    $(ingredientField).append(ingredientDiv)

  removeIngredientField = (button)->
    if fieldCount() == 1 
      $(button).prev('input').val("")
    else 
      $(button).closest('div').remove()

  $(addItemField).click (e) ->
    e.preventDefault()
    addIngredientField()

  $(ingredientField).on "click", ".remove-ingredient", (e) ->
    e.preventDefault()
    removeIngredientField(this)


  hideFirstX()




    



      