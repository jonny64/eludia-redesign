#= require app/views/menu_items/menu_item_level3
#= require_self

class Eludia.Views.MenuViewLevel3 extends Eludia.Views.MenuViewBase
  className: 'navbar-menu-level3'
  itemView: Eludia.Views.MenuItemLevel3

  initialize: ->
    _.extend @, Eludia.Helpers.ApplicationHelpers
    # using helper @windowWidth
    super

  onRender: ->
    @setPositionLeft(@$el, @parentPosLeft())

  onShow: ->
    @gridSort()
    duration = @transitionDuration()
    @setPositionLeft(@$el, 0, duration)
    @$el.on 'tap.transition', (e) ->
      e.preventDefault()
      e.stopPropagation()
    setTimeout((=>
        @$el.off 'tap.transition'
      ), @transitionDuration())

  parentPosLeft: ->
    level2Menu = @options.parent_collection_view
    level2Menu.initPosition

  #_itemview_click: (item) ->
    #@selected_item = item
    #if !@selected_item.model.get('items')
      #@_resetMenus()
      ## route
  hideSubmenu: ->
    # do nothing

  gridSort: ->
    @level3items = @.children._views
    lastChildBottom = @.children.last().$el.offset().top + (@.children.last().$el.height() * 2)
    childrenHeight = lastChildBottom - @.children.first().$el.offset().top
    if childrenHeight > @windowHeight() - @$el.offset().top 
      childrenOverflow = true
    for item of @level3items
      item = @level3items[item]
      if item.model.get('items') && childrenOverflow == true
        allowGridSort = true
    if allowGridSort == true
      @$el.isotope()
      @$el.addClass 'menu-level3-large'
      @$el.css('height', 'auto').css('position', 'absolute').css('overflow', 'auto').css('bottom', '0')
    else
      if childrenOverflow == true
        #TODO check for height, not quantity
        @$el.addClass 'content-columns'
      else
        @$el.addClass 'single-column'
        @.trigger 'level3menu:single_column'


