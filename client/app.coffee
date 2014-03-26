
###
#
# METEOR SEED APP Project
#
# COPYRIGHT: Aitor Osés <aitor.oses@gmail.com>
#
###


# ------------------------- #
#  Application Bootstrap    #
# ------------------------- #

# Remove the delay in mobile browsers with FastClick
$ ->
  FastClick.attach document.body    

# ------------------------- #
#  Application Variables    #
# ------------------------- #

Session.set('menuopen', false)


##################################
# Application Template Helpers   #
##################################


# ------------------------- #
#  Application Main         #
# ------------------------- #

Template.App.menuopen = ->
  menuopen = Session.get('menuopen')
  if menuopen then "menu-open" else ""

Template.applicationHeader.events

  'click .menu-button': ->
    # Take the actual state
    menuopen = Session.get('menuopen')
    # Toggle it
    Session.set('menuopen', !menuopen)


# ------------------------- #
#  Application Content      #
# ------------------------- #

# White content background helper
Template.applicationContent.white = ->
  if Session.get('whiteContentBackground') is true then "white" else ""


# ------------------------- #
#  Application Menu         #
# ------------------------- #
Template.applicationMenu.events 
  "click a": ->
    Session.set("menuopen", false)