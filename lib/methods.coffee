
# Meteor server methods

if Meteor.isServer

	Meteor.methods {
		foo: () ->
			return "Bar"
	}