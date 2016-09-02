# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

console.log 123

Ext.onReady ->
  console.log 'Ready'
  Ext.create 'Ext.Panel',
    renderTo: Ext.getBody(),
    title: 'Log in',
    layout: 'anchor'
    items:[
      id: 'user'
      xtype: 'textfield',
      name: 'username',
      fieldLabel: 'Username',
      allowBlank: false
    ,
      id: 'pass'
      xtype: 'textfield',
      name: 'password',
      fieldLabel: 'Password',
      inputType: 'password',
      allowBlank: false
    # ,
    #   xtype: 'checkbox'
    #   boxLabel: 'Click'
    #   listeners:
    #     change: (checkbox, new_value, old_value)->
    #       panel = checkbox.up 'panel'
    #       btn = panel.down 'button'
    #       btn.setDisabled new_value
    ,
      xtype: 'button',
      text: 'Submit'
      handler: (btn) ->
        panel = btn.up 'panel'
        usertxt = panel.down '#user'
        passtxt = panel.down '#pass'
        user = usertxt.getValue()
        pass = passtxt.getValue()


        value = document.getElementsByTagName("meta")[1].getAttribute('content')
        key = document.getElementsByTagName("meta")[0].getAttribute('content')

        params =
          username: user
          password: pass

        params[key] = value

        Ext.Ajax.request {
          url: 'login',
          method: 'POST'
          params: params

          success: (response, opts) ->
            obj = Ext.decode response.responseText
            console.log obj
            if obj.success
              alert 'Success!!'
              document.location.assign 'main'
            else
              alert 'Incorrect!'
          
          ,

          failure: (response, opts) ->
            console.log 'server-side failure with status code ' + response.status
        }
    ]
