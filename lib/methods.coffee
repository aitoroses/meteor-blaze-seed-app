
# Meteor server methods

if Meteor.isServer

	Meteor.methods {
		foo: function() {
			return "Bar";
		}
	}