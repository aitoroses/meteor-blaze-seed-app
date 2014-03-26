if Meteor.isClient


    ########################################
    # Controllers                          #
    ########################################

    # Configure Router to use the Main template
    Router.configure
        layoutTemplate: "App"

    # Index Controller
    IndexController = FastRender.RouteController.extend
        template: "logo"

    # Install Controller
    SectionController = FastRender.RouteController.extend
        template: "SectionContent"
        load: ->
            Session.set('whiteContentBackground', true);
        unload: ->
            Session.set('whiteContentBackground', undefined);


    ########################################
    # Routes                               #
    ########################################

    Router.map ->

        @route "index",
            path : "/"
            controller: IndexController

        @route "section",
            path : "/section"
            controller: SectionController

