class LD.UnratedRestaurantsView extends Backbone.View
  template: 'unrated_restaurants'

  render: ->
    @$el.html JST[@template]()
    @collection.each (item) =>
      view = new LD.RatingView
        model: item
      @$el.append(view.el)
      view.render()
    