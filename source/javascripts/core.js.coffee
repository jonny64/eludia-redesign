@App = @Eludia.App = new Marionette.Application()

App.addRegions
  navbars: '@navbars'
  menu_level2: '@navbar-menu-level2'
  menu_level3: '@navbar-menu-level3'

App.addInitializer (settings) ->
  App.models =
    menu: new Eludia.Models.MenuModel()

  App.collections =
    navbar: new Eludia.Collections.NavCollection([], level: 1)

  new Eludia.Controllers.NavController region: App.navbars
  new Eludia.Observers.NavObserver model: App.models.menu

  Backbone.history.start()

App.start()