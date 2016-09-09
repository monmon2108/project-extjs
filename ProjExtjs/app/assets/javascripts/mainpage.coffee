//= require main.ui

Ext.define 'MainPage',
  extend: 'MainUi'
  bind: ->
    console.log 'bind'

# Search
    form_search = @down 'form'
    button_search = @down 'button[name=search]'
    grid_timedata = @down 'grid'
    start_date = @down 'datefield[name=datefrom_search]'
    end_date = @down 'datefield[name=dateto_search]'
    grid_timedata.getStore().on 'beforeload', (store) ->
      store.getProxy().extraParams = form_search.getValues()



    button_search.on 'click', (btn)->
      console.log form_search.getValues()
      console.log "- click !! -"
      console.log grid_timedata.getStore().load()

      grid_timedata.getStore().load({
        params: {start_date:start_date,end_date:end_date}
      })




# Timestamp

    button_time = @down 'button[name=timestamp]'
    button_time.on 'click', (btn) ->
      win = Ext.create 'Ext.window.Window',
        title:'TimeStamp'
        layout:'form'
        width:400
        closeAction:'close'
        plain: true
        items: [
          xtype: 'form'
          items: [
            xtype: 'textfield'
            fieldLabel: 'Name'
            value: USERNAME
            readOnly: true
            name: 'name'
          ,
            xtype: 'datefield'
            fieldLabel: 'Date'
            value: new Date()
            readOnly: true
            name: 'date'
          ,
            xtype: 'textfield'
            fieldLabel: 'Time'
            value: new Date().toLocaleTimeString()
            readOnly: true
            name: 'time'
          ]

        ]

        buttons: [
           text: 'Timein',
           handler: ->
            #  Ext.Msg.alert('Time-In', 'Complete To Time-In')
            auth_value = document.getElementsByTagName("meta")[1].getAttribute('content')
            auth_key = document.getElementsByTagName("meta")[0].getAttribute('content')
            form = win.down 'form'


            params = {}
            params[auth_key] = auth_value

            Ext.Ajax.request {
              url: 'timein',
              method: 'POST'
              params: (Ext.apply form.getValues(), params)

              success: (response, opts) ->
                obj = Ext.decode response.responseText
                console.log obj
                if obj.success
                  Ext.Msg.alert('Timein','Success!!')

                  grid_timedata.getStore().load()

                else
                  Ext.Msg.alert('Timein','Incorrect!')
                win.close()
              ,

              failure: (response, opts) ->
                console.log 'server-side failure with status code ' + response.status
            }
        ,
           text: 'Timeout',
           handler: ->
             auth_value = document.getElementsByTagName("meta")[1].getAttribute('content')
             auth_key = document.getElementsByTagName("meta")[0].getAttribute('content')
             form = win.down 'form'
             selectedRecord = grid.getSelectionModel().getSelection()[0]
             row = grid.store.indexOf(selectedRecord)

             params = {}
             params[auth_key] = auth_value

             Ext.Ajax.request {
               url: 'timeout',
               method: 'POST'
               params: (Ext.apply form.getValues(), params)

               success: (response, opts) ->
                 obj = Ext.decode response.responseText
                 console.log obj
                 if obj.success
                   Ext.Msg.alert('Timeout','Success!!')

                   grid_timedata.getStore().load()

                 else
                   Ext.Msg.alert('Timeout','Incorrect!')
                 win.close()
               ,

               failure: (response, opts) ->
                 console.log 'server-side failure with status code ' + response.status
             }
        ,
           text: 'Cancel',
           handler: ->
             win.close()

        ]
        buttonAlign: 'center'
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
