class LD.RatingView extends Backbone.View
  events: 
    "click .rating": 'onRatingClick'

  onRatingClick: (e) ->
    $target = $(e.target)
    rating = $target.data('rating')
    $target.closest('.restaurant').find('.rating').removeClass('selected')
    $target.addClass('selected')

    @model.set('rating', rating)
    @model.save()
    

  render: -> 
    @$el.html JST['rating'](@model.toJSON())

