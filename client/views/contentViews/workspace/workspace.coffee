#######################
# Template workspace  #
#######################


Template.WorkspaceView.workflowContext = ->
	return JSON.stringify(Session.get("workflowContext") || {}, null, 2)

Template.WorkspaceView.events({

})