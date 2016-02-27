#= require action_cable
#= require_self
#= require_tree .

@App = {}
App.cable = ActionCable.createConsumer 'ws://0.0.0.0:3000/cable'
