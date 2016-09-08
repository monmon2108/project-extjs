//= require main.ui

Ext.define 'MainPage',
  extend: 'MainUi'
  bind: ->
    console.log 'bind'

# Search
    form_search = @down 'form'
    button_search = @down 'button[name=search]'
    grid_timedata = @down 'grid'

    grid_timedata.getStore().on 'beforeload', (store) ->
      store.getProxy().extraParams = form_search.getValues()



    button_search.on 'click', (btn)->
      console.log form_search.getValues()
      console.log "- click !! -"
      console.log grid_timedata.getStore().load()



# Date
    date = new Date()

# Timestamp
    win = Ext.create 'Ext.window.Window',
      title:'TimeStamp'
      layout:'form'
      width:400
      closeAction:'close'
      plain: true
      items: [

        xtype: 'textfield'
        fieldLabel: 'Name'
        value: USERNAME
        readOnly: true
      ,
        xtype: 'datefield'
        fieldLabel: 'Date'
        value: date
        readOnly: true
      ,
        xtype: 'textfield'
        fieldLabel: 'Time'
        value: date.toLocaleTimeString()
        readOnly: true


      ]
      buttons: [
         text: 'Timein',
         handler: ->
           Ext.Msg.alert('Time-In', 'Complete To Time-In')
      ,
         text: 'Timeout',
         handler: ->
           Ext.Msg.alert('Time-Out', 'Complete To Time-Out')
      ,
         text: 'Cancel',
         handler: ->
           win.close()
      ]
      buttonAlign: 'center'

    button_time = @down 'button[name=timestamp]'
    button_time.on 'click', (btn) ->
      win.show()

# Logout
    button_logout = @down 'button[name=logout]'
    button_logout.on 'click', (btn) ->
      value = document.getElementsByTagName("meta")[1].getAttribute('content')
      key = document.getElementsByTagName("meta")[0].getAttribute('content')

      params =
        username: ''
        password: ''

      params[key] = value
      Ext.Msg.confirm("Confirmation", "Are you sure you want to logout?", (btn) ->
        if btn == 'yes'
          Ext.Ajax.request {
            url: 'logout',
            method: 'POST'
            params: params


            success: (response, opts) ->

              obj = Ext.decode response.responseText

              if obj.success
                document.location.assign '/'
              else
            ,
            failure: (response, opts) ->
              console.log 'server-side failure with status code ' + response.status
          }
        else
          Ext.Msg.alert('Logout','Sorry You cant logout!')
      )

# GridTable information
