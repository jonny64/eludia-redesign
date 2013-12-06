#= require app/views/menu_views/menu_view_level2
#= require app/views/menu_items/menu_item_level2
#= require_self

class Eludia.Views.MenuViewLevel1 extends Eludia.Views.MenuViewBase
  className: 'nav navbar-nav navbar-menu-level1'
  itemView: Eludia.Views.MenuItemLevel2
  submenuView: Eludia.Views.MenuViewLevel2
  submenuRegion: 'menu_region_level2'