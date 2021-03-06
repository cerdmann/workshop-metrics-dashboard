class Dashing.MetricAlert extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered
    @set('actual', 0)
    @set('expected', 0)

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  @accessor 'hasPassed' , ->
    @get('actual') >= @get('expected')

  @accessor 'expected', Dashing.AnimatedValue
  @accessor 'actual', Dashing.AnimatedValue
