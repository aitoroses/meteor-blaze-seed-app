#######################
# Template workspace  #
#######################


Template.WorkspaceView.workflowContext = ->
	return JSON.stringify(SessionAmplify.get("workflowContext") || {}, null, 2)


##########################
# Template workspace     #
##########################

Template.workspaceTopbar.helpers
	loggedUser: ->
		return SessionAmplify.get('workflowContext').login