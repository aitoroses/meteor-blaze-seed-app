#######################
# Template workspace  #
#######################


Template.WorkspaceView.workflowContext = ->
	return JSON.stringify(SessionAmplify.get("workflowContext") || {}, null, 2)

Template.WorkspaceView.events({

})