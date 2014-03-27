
# Meteor server methods

if Meteor.isServer

  Meteor.methods 
    authenticateUser: (login, password) ->
      console.log('Calling authenticate user with: ' + [login, password])
      return HTTP.get "http://localhost:3100/authenticate?login=#{login}&#{password}"
  