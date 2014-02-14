class LD.LunchView extends Backbone.View
 
  initialize: ->
    collection = new LD.FriendsCollection
    collection.fetch
      reset: true
    @friendsView = new LD.FriendsView
      collection: collection

  render: -> 
    @$el.html JST['lunch']()
    @friendsView.setElement(@$('.friends'))
    @friendsView.render()
