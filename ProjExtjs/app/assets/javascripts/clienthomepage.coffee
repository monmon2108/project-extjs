//= require clienthome.ui
//= require client_form/clientmain

Ext.define 'ClienthomePage',
  extend: 'ClienthomeUi'
  bind: ->


    btn_update = @down 'button[name=updatebtn]'

    btn_update.on 'click', (btn) ->
      win = Ext.create 'Ext.window.Window',
        title:'Update Client'
        layout:'form'
        width: 800
        modal: true
        closeAction:'close'
        plain: true
        items: [
          xtype: 'client_form.clientmain'
        ]

      win.show()
