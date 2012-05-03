#
# > “Never grow a wishbone, daughter, where your backbone ought to be.”
# > > -- Clementine Paddleford
#
#
# ## Contrived Example: Ordering Lunch
#
# `~/.js/docs.google.com.js`
#
# Wrote a sort of greasemonkey style userscript for
# [dotjs](http://defunkt.io/dotjs/) to use
# [chosen.js](http://harvesthq.github.com/chosen/) for the google docs
# lunch order form
#
# ![awesome lunch order](/chosen-google-docs.jpg)
#
$(document).ready(function () {
  var chosenUrl = "http://harvesthq.github.com/chosen/chosen/chosen.jquery.js";
  var jQueryUrl = "http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js";

  var old$ = $.noConflict(true);

  // Set name for lunch order form
  old$("input[name=\"entry.0.single\"]").val('Greg');

  // Load chosen.js CSS
  old$('head').append('<link rel="stylesheet" href="http://harvesthq.github.com/chosen/chosen/chosen.css" type="text/css" />');

  // Load jquery in window (not extension sandbox?)
  old$.ajax({
    url: jQueryUrl,
    dataType: 'text',
    success: function (script) {
      eval.call(window, script); // $.getScript would not work
      console.log('loaded new jQuery', $.fn.jquery); // 1.7.1

      // Load chosen
      $.ajax({
        url: chosenUrl,
        dataType: 'text',
        success: function (script) {
          eval.call(window, script);
          console.log('loaded chosen');

          // Prettify inputs
          $("select").chosen();
        }
      });
    }
  });
});


# ## Two nested callbacks isn't bad. How bad can three or four be?
#  I'll leave `;`'s to remember my way. Just `(function() { that =
#  this`, `({ functie̸n`, `;` && `self = _this?` and hmm, i̧nde͢nt off
#  the͢ e͢cond, 3d mΘnitor, on, e̸n, e̸on what?‽ fm ̡n͘o my​ eye͢s̸ ̛l̕ik͏ liq​ͮ̂҉̯͈͕̹̘̱uid
#  pain, can you see ̲͚̖͔̙î̩́t̲͎̩̱͔́̋̀ it is Man ALL IS LOŚ͖̩͇̗̪̏̈́T ALL I​S LOST FACE MY FACE …
#  ᵒh god no NO NOO̼O​O NΘ stop the an​*̶͑̾̾​̅ͫ͏̙̤g͇̫͛͆̾ͫ̑͆l͖͉̗̩̳̟̍ͫͥͨe̠̅s ͎a̧͈͖r̽̾̈́͒͑e n​ot rè̑ͧ̌aͨl̘̝̙̃ͤ͂̾̆ ZA̡͊͠͝LGΌ IS TO͇̹̺ͅƝ̴ȳ̳
#  TH̘Ë͖́̉ ͠P̯͍̭O̚​N̐Y̡ H̸̡̪̯ͨ͊̽̅̾̎Ȩ̬̩̾͛ͪ̈́̀́͘ ̶̧̨̱̹̭̯ͧ̾ͬC̷̙̲̝͖ͭ̏ͥͮ͟Oͮ͏̮̪̝͍M̲̖͊̒ͪͩͬ̚̚͜Ȇ̴̟̟͙̞ͩ͌͝S̨̥̫͎̭ͯ̿̔̀ͅ [so so
#  sorry](http://stackoverflow.com/questions/1732348/regex-match-open-tags-except-xhtml-self-contained-tags/1732454#1732454)
#
# # ...
#

# ![backbone.js logo](/backbone.png)
# # Can it save us?
# ## `v0.9.2 -- 5.6kb, Packed and gzipped`
# # What is this? A project for ants?
# # (╯°□°）╯︵ ┻━┻

# > "A micro-framework does one thing and one thing only — and does it well."
# > > -- [microjs.com](http://microjs.com/)
#
# ### Why use a microframework?
#
# 1. Simpler and smaller codebase
# 1. Load what we need (polyfills, shims, etc.)
# 1. Use what we want
# 1. Understand what we're using (security)


# # What does Backbone.js do?
#
# > "Backbone.js gives structure to web applications by providing
# > **models** with key-value binding and custom events,
# > **collections** with a rich API of enumerable functions, **views**
# > with declarative event handling, and connects it all to your
# > existing API over a RESTful JSON interface."
# > > -- [Backbone.js docs](http://documentcloud.github.com/backbone/)


# ## Lets try this
# Error: `Uncaught TypeError: Cannot call method 'extend' of undefined`
ourHtml = '<script src="http://documentcloud.github.com/backbone/backbone.js"></script>'
# ## with dependencies
# not so micro now, but still small ~45 k (gzipped and minified)
ourHtmlWithDependencies = '''
<script src="http://cdnjs.cloudflare.com/ajax/libs/json2/20110223/json2.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.3.3/underscore-min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.2/backbone-min.js"></script>
'''

# Making a new view:
#
#     e.View
#       el: HTMLDivElement
#       options: Object
#
# makes an object with a div element and an options object.
new Backbone.View()

# Making a new model:
#
#     e.Model
#       _escapedAttributes: Object
#       _previousAttributes: Object
#       attributes: Object
#       cid: "c0"
#
# makes an object with an attributes object and a client id `cid`.
new Backbone.Model()

# Making a new collection:
#
#     e.Collection
#       _boundOnModelEvent: function () { [native code] }
#       _byCid: Object
#       _byId: Object
#       length: 0
#       models: Array[0]
#
# makes an object iwth a models array and a length.
new Backbone.Collection()

# #### exciting. How could this possibly be useful?

# # We have to go deeper.
#
# # ![underscore.js logo](/underscore.png)
#
# ## What can I do with it?

# Make premeditated example data
digits = _.map _.range(10), String
["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

# ### Write Object Oriented Style code
_(digits).shuffle()
["0", "4", "8", "6", "1", "5", "7", "3", "2", "9"]`

# Use the chain wrapper to chain
_.chain(digits)
    .shuffle()
    .map( (n) -> n * 2 )
    .first()
    .value()
14

# ### Write Functional Style code
_.shuffle digits
["9", "1", "2", "7", "0", "6", "3", "8", "5", "4"]

double = (n) -> n * 2
firstDoubledShuffled = _.compose double, _.first, _.shuffle
firstDoubledShuffled digits
12

# Bind a function's context and arguments
# (partial application/currying not event binding)
add = (left_number, right_number) -> left_number + right_number
# bind add to new `this` object and set left_number to always be 2
add2 = _.bind add, {}, 2
add2 2
4

# ### Understand how Backbone works

# John Resig's micro templating
# compile and bind variables
_.template('Food for <%= noun =>.')({ noun: 'pants' })
"Food for pants."

# Use mustache templates
_.templateSettings = interpolate : /\{\{(.+?)\}\}/g
_.template('Food for {{noun}}.')({ noun: 'awhile' })
"Food for awhile."

# Return a value or call a function of the same name
#
# > example from the [docs](http://documentcloud.github.com/underscore/#result)
object = {cheese: 'crumpets', stuff: function(){ return 'nonsense'; }};
_.result(object, 'cheese');
"crumpets"
_.result(object, 'stuff');
"nonsense"

# Copy attributes from right object into left object.
# Overwrites keys in left object.
_.extend {foo: 1}, {foo: 2, baz: 3}
{foo: 2, baz: 3}

# ### And much, much more in [docs](http://documentcloud.github.com/underscore/) and [source](http://documentcloud.github.com/underscore/docs/underscore.html)

# # Anyway
# ## Let's make an evil webform

# ### Just a button
#
# [Live Example](http://jsfiddle.net/z6SAB/1/)
#
# html in `body`:
#  `'<form id="mwahahaha"></form>'`
#
$(document).ready ->

    # Add some attributes to the Backbone.View object. In Backbone
    # `extend` also sets the prototype and constructor.
    EvilForm = Backbone.View.extend
      # We can set attributes for our new element
      id: 'mwhahaha'
      tagName: 'form'
      className: 'neutral evil'
      attributes:
        style: 'color:grey'

      render: () ->
        # Update our html using `this.$el` the cached jQuery selector
        # for our view. Do this in one place to only trigger one
        # browser reflow or repaint
        @$el.html '<input type="button" value="Finish Form?"/>'
        # Return `this` from the function to allow method chaining
        @

    # Use an element already in the DOM when constructing our
    # view instead of of creating a new element:
    form = new EvilForm
      el: $ '#mwhahaha'
    form.render()

    # Or we can make a new EvilForm HTMLElement and attach it to the
    # DOM
    form = new EvilForm
    $('body').append form.render().el


# ### Making Something Bad Happen
#
# html in `body`:
#  `'<form id="mwahahaha"></form>'`
#
# [Live Example](http://jsfiddle.net/z6SAB/2/)
#
$(document).ready ->

    EvilForm = Backbone.View.extend
      id: 'mwhahaha'
      tagName: 'form'
      className: 'neutral evil'
      attributes:
        style: 'color:grey'

      # Call `this.finishForm` when any input element in this form is
      # clicked.
      events:
        "click input": "finishForm"

      # Events are bound to the view and delegate on their selector
      # when the view is constructed. This is also valid:
      events: ->
        "click input": (event) ->
            alert "You're almost done. We'll be with you shortly."
            @

      finishForm: (event) ->
        alert "You're almost done. We'll be with you shortly."
        @

      render: () ->
        @$el.html '<input type="button" value="Finish Form?"/>'
        @

    form = new EvilForm
      el: $ '#mwhahaha'
    form.render()


# ### Evil Models
#
# html in body:
#  `'<form id="mwahahaha"></form>'`
#
# [Live Example](http://jsfiddle.net/z6SAB/3/)
#
_.templateSettings = interpolate : /\{\{(.+?)\}\}/g

EvilMessage = Backbone.Model.extend
  defaults:
    content: ''

EvilMessageBox = Backbone.Collection.extend
    model: EvilMessage

# Add a model to hold some data. The view will update
# this data and it will fire events when it changes.
EvilData = Backbone.Model.extend
  defaults:
    retries: 0
    messages: null

  initialize: (options) ->
    if options and options.messages
      @messages = new EvilMessageBox
      @messages.add _.map options.messages, (str) -> new Backbone.Model content: str
      # Backbone uses it's own getter and setter function instead of
      # updating attributes directly so it can publish `change`
      # events. This could change with `__defineGetter__` and
      # `__defineSetter__` in future Javascript versions [(see also)](http://ejohn.org/blog/javascript-getters-and-setters/).
      @set messages: @messages

  getDeceptivelyEncouragingMessage: ->
    # Backbone.Collection proxies underscore collection methods
    _.first _.shuffle @messages.pluck 'content'

  incrementRetries: () ->
    # Count a successful frustrated click
    @set retries: @get('retries')+1
    @

$(document).ready ->

   EvilForm = Backbone.View.extend
      id: 'mwhahaha'
      tagName: 'form'
      className: 'neutral evil'
      attributes:
        style: 'color:grey'

      events:
        "click input": "finishForm"

      initialize: (options) ->
        # `model` and `collection` also get automatically attached to
        # the view get set on the view if they're given.
        console.log '@model in initialize', @model

        # If our templates depend on data from the model we can
        # rerender ourselves on model changes events to keep the
        # view and the model in sync
        @model.on 'change', @render, @


      finishForm: (event) ->
        # Show different messages so they think something is happening
        alert @model.getDeceptivelyEncouragingMessage()
        @model.incrementRetries()
        @

      render: () ->
        @$el.html '<input type="button" value="Finish Form?"/>'
        @

    form = new EvilForm
      model: new EvilData
        messages: [
          "Thank you for your patience.",
          "We value your time on hold.",
          "Rock out with some lofi Muzak!",
          "(╯°□°）╯︵ ┻━┻",
          "... soon",
          "Patience is a virtue and a person."]
      el: $ '#mwhahaha'
    form.render()


# ### Valid Evil Messages
#
# [Live Example](http://jsfiddle.net/54jRN/)
#

EvilMessage = Backbone.Model.extend
  defaults:
    content: ''

  # Add a validate function to check for
  validate: (newAttributes) ->
    # Check updated attributes
    if not attributes.content
      # Don't use throw
      # return something to trigger an error event
      return new Error "Empty EvilMessage"

msg = new EvilMessage
# Listen for error events
msg.on 'error', -> console.log 'errors!'

# set and save also take error callbacks
msg.set content: null
"log: errors!"


# ### Saving state to the server

EvilMessage = Backbone.Model.extend
  defaults:
    content: ''

  # A url to save the object to (can be a function).  To provide a
  # more responsive interface the client assumes the request will
  # succeed.  The model has a client id until it is saved and gets a
  # database `id`.
  #
  # The default sync handler maps CRUD to REST like so:
  #
  #      create → POST   /collection
  #      read → GET   /collection[/id]
  #      update → PUT   /collection/id
  #      delete → DELETE   /collection/id
  #
  # From the [Backbone.js docs](http://documentcloud.github.com/backbone/)

  url: '/evil/messages/'

msg = new EvilMessage
msg.save()
"POST http://maybejustborednotevil.example.com/evil/messages/ 404 (NOT FOUND)"
# Can set attributes and pass `$.ajax` options like success and error callbacks
msg.save(
  id: '1234',
  success: () -> # Do victory lap
  error: () -> console.log "could not save"
)
"PUT http://maybejustborednotevil.example.com/evil/messages/ 404 (NOT FOUND)"
"log: could not save"


# ### Routes
#
# [Live Example](http://jsfiddle.net/5KmZZ/)
# (Note: hash fragment not updating)
#
$(document).ready ->

  BadRedirectRouter = Backbone.Router.extend
    # Listens for hashchange events
    routes:
      "pong": "pong"
      "ping": "ping"

    pong: ->
      console.log 'pong'
      @navigate 'ping', trigger: true

    ping: ->
      console.log 'ping'
      @navigate 'pong', trigger: true

  router = new BadRedirectRouter

  # Use HTML5 pushState to update the url directly if available
  # and make the back button work correctly
  if history and history.pushState
    Backbone.history.start pushState: true
  else
    Backbone.history.start()

  # Update the url to the ping route
  # and trigger a hashchange event to hit the route on the router
  router.navigate 'ping', trigger: true

# Logs: ping pong ...
# and cycles between `#ping` and `#pong`

# ### Backbone and other client side frameworks let us

# * Use events instead of callbacks
# * Organize our code as [web components](http://dvcs.w3.org/hg/webcomponents/raw-file/tip/explainer/index.html) of (model, view, template)
# * Only transmit data to from the server
# * With HTML5, construct and publish a desktop application experience

# # Let's make something:
#
# * Flashcards
# * Tic Tac Toe
# * Not To Do list
# * Chat server
#
# My chat server:
#
#      ...
#      ...
#      (crickets)
#      ...
#

# ## Documentaton
#
# * [Docs](http://documentcloud.github.com/underscore/)
# * [Annotated Source](http://documentcloud.github.com/underscore/docs/underscore.html)
# * [Tutorials](https://github.com/documentcloud/backbone/wiki/Tutorials%2C-blog-posts-and-example-sites)
# * [Examples](http://documentcloud.github.com/backbone/#examples)

# # Addenda
#
# ### Why I couldn't make you a SVG based game with Backbone
#  1. Got the laziness
#  1. SVG is not HTML
#
MyView = Backbone.View.extend

  '... snip ...'

  template: _.template '<svg:rect x="{{x}}" y="{{y}}" height="{{height}}" width="{{width}}"></svg:rect>'

  render: () ->
    @$el.html @template @model.toJSON()
    @

console.log Backbone.View.prototype.make
function(tagName, attributes, content) {
  var el = document.createElement(tagName);
  if (attributes) $(el).attr(attributes);
  if (content) $(el).html(content);
  return el;
}

# create element with namespace URI
document.createElementNS !== document.createElment
true

# ### Why not use `class MyView extends Backbone.View`?
#
# It compiles to:
// Generated by CoffeeScript 1.3.1
(function() {
  var MyView,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  MyView = (function(_super) {

    __extends(MyView, _super);

    MyView.name = 'MyView';

    function MyView() {
      return MyView.__super__.constructor.apply(this, arguments);
    }

    return MyView;

  })({});

}).call(this);

MyView = Backbone.extend {}
# Compiles to:
// Generated by CoffeeScript 1.3.1
(function() {
  var MyView;

  MyView = Backbone.extend({});

}).call(this);
