class LD.HungerPage
  constructor: ->
    LD.UnratedRestaurants = new LD.UnratedRestaurantsCollection
    LD.UnratedRestaurants.fetch
      success: ->
        view = new LD.UnratedRestaurantsView
          collection: LD.UnratedRestaurants
          el: $('.unrated-restaurants')
        view.render()
