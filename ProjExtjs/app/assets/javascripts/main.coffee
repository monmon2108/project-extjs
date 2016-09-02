# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log 'login pass'
Ext.onReady ->
  console.log 'Main: Ready'
  Ext.create 'Ext.Panel',
    renderTo: Ext.getBody(),
    title: 'Main'
    items: [
      xtype: 'button'
      text: 'Logout'
      handler: (btn) ->
        panel = btn.up 'panel'
        Ext.Msg.confirm("Confirmation", "Are you sure you want to logout?", (btn) ->
            if btn == 'yes'
              document.location.assign '/'
            else
        )

        
        # document.location.assign '/'




        # value = document.getElementsByTagName("meta")[1].getAttribute('content')
        # key = document.getElementsByTagName("meta")[0].getAttribute('content')
        #
        # params =
        #   username: ''
        #   password: ''
        #
        # params[key] = value
        #
        # Ext.Ajax.request {
        #   url: 'logout',
        #   method: 'POST'
        #   params: params
        #
        #   success: (response, opts) ->
        #     obj = Ext.decode response.responseText
        #
        #     if obj.success
        #       alert 'Logout Success!!'
        #
        #       document.location.assign '/'
        #
        #     else
        #       alert 'Incorrect!'
        #   ,
        #
        #   failure: (response, opts) ->
        #     console.log 'server-side failure with status code ' + response.status
        # }
    ]
