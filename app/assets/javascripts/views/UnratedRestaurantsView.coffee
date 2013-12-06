class LD.UnratedRestaurantsView extends Backbone.View
  template: 'unrated_restaurants'
  events: 
    'click .new-restaurant': 'onNewRestaurantClick'

  initialize: ->
    @listenTo(@collection, 'reset', @render)

  render: =>
    @$el.html JST[@template](count: @collection.length)
    @collection.each (item) =>
      view = new LD.RatingView
        model: item
      @$el.append(view.el)
      view.render()

  onNewRestaurantClick: ->
    name = prompt("Restaurant Name?")
    if (name)
      restaurant = new LD.Restaurant
        name: name
      restaurant.save null, 
        success: ->
            LD.UnratedRestaurants.fetch
              reset: true



    