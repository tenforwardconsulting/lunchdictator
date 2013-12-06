class LD.RatingView extends Backbone.View
  template: 'rating'
  events: 
    "click .rating": 'onRatingClick'

  onRatingClick: ->
    alert('click')

  render: -> 
    $el.html