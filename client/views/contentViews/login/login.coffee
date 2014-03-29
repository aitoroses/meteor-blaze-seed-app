######################
# Template Login     #
######################

Template.LoginView.events({

	'click #login-btn': (e, tmpl) ->
		# Prevent default button submit behaviour
		e.preventDefault()
		console.log("login clicked")
		
		login = tmpl.find("input[name='login']").value
		password = tmpl.find("input[name='password']").value

		NProgress.start()

		# Call meteor authenticate method
		Meteor.call "authenticateUser",[login, password], (err, res) ->
			SessionAmplify.set('workflowContext', res.data)

			# Retrieve the requests
			Meteor.call 'getTasks', [res.data], (err, tasks) ->
				Task = Collections.Task

				# Clean old
				existingTasks = Task.find().fetch()
				for task in existingTasks
					Task.remove({_id: task._id})

				# Fetch new
				for task in tasks.data
					taskObject = {
						userId: res.data.login
						task: task
					}
					Task.insert(taskObject)

			# Go to the workspace
			Router.go("workspace")
			NProgress.done()
			
})

# Placeholder polyfill
Template.LoginView.rendered = ->
	$("input").placeholder()