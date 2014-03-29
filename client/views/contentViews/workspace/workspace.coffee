#######################
# Template workspace  #
#######################


Template.WorkspaceView.workflowContext = ->
	return JSON.stringify(SessionAmplify.get("workflowContext") || {}, null, 2)


##############################
# Template workspaceTopbar   #
##############################

Template.workspaceTopbar.helpers
	loggedUser: ->
		return SessionAmplify.get('workflowContext').login

##############################
# Template WorkspaceMain     #
##############################

Template.workspaceMain.tasks = ->
  tasks = Collections.Task.find().fetch()
  taskObjects = []
  for task in tasks
    taskObjects.push {
      title: task.task.children[0].val
      assignedDate: new Date task.task.children[5].children[0].val
      taskNumber: parseInt(task.task.children[5].children[9].val)
    }

  return taskObjects