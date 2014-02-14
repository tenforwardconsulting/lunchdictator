class LD.HungerPage
  constructor: ->
    LD.Restaurants = new LD.RestaurantsCollection
    LD.Restaurants.fetch
      success: ->
        view = new LD.RestaurantsView
          collection: LD.Restaurants
          el: $('.restaurants')
        view.render()
