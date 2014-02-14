class LD.FriendsView extends Backbone.View
 
  initialize: ->
    @listenTo(@collection, 'reset', @render)

  render: => 
    console.log('this bitch is going!')
    for friend in @collection.models
      @$el.append(JST['friend_row'](friend.toJSON()))
