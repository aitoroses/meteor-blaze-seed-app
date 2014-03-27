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
        template: "LoginView"


    ########################################
    # Routes                               #
    ########################################

    Router.map ->

        @route "index",
            path : "/"
            controller: IndexController

        @route "login",
            path : "/login"
            controller: SectionController

