class LD.HungerPage
  constructor: ->
    collection = new LD.UnratedRestaurantsCollection
    collection.fetch
      success: ->
        view = new LD.UnratedRestaurantsView
          collection: collection
          el: $('.unrated-restaurants')
        view.render()
