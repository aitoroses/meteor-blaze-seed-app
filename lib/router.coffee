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

    # Login Controller
    LoginController = FastRender.RouteController.extend
        template: "LoginView"

    # Login Controller
    WorkspaceController = FastRender.RouteController.extend
        template: "WorkspaceView"


    ########################################
    # Routes                               #
    ########################################

    Router.map ->

        @route "index",
            path : "/"
            controller: IndexController

        @route "login",
            path : "/login"
            controller: LoginController

        @route "workspace",
            path : "/workspace"
            controller: WorkspaceController

