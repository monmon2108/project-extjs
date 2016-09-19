//= require client_form/client_tab_ref_person.ui

Ext.define 'ClientForm.ClientTabRefPerson',
  alias: 'widget.client_form.client_tab_ref_person'
  extend: 'ClientForm.ClientTabRefPerson.Ui'








  bind: ->
    console.log 345
    button_addref = @down 'button[name=addrefbtngrid]'
    console.log button_addref
    button_addref.on 'click', (btn)->

      win = Ext.create 'Ext.window.Window',
        title:'Add Reference Persons'
        layout:'form'
        width:400
        closeAction:'close'
        plain: true
        buttons: [
          text: 'Save'
          handler: ->
            console.log win.down('form').getValues()
        ]
        items: [
          xtype: 'form'
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'combobox'
            fieldLabel: 'Refererence Person:'
            name: 'ref_person_name'
            value: 'Select Refererence Person'
          ,
            xtype: 'combobox'
            fieldLabel: 'Ref Person Type:'
            name: 'client_ref_person.ref_person_type'
            value: 'Select Ref Person Type'
          ,
            xtype: 'textfield'
            fieldLabel: 'Relation Type:'
            name: 'client_ref_person.relation_type'
          ,
            xtype: 'fieldcontainer'
            defaultType: 'checkboxfield'
            margin: '0 0 0 105'
            items: [
              boxLabel  : 'Can Buy Sell'
              name      : 'client_ref_person.can_buy_sell'
              # inputValue: '1'
              inputValue: true
              uncheckedValue: false
              checked: true
            ,
              boxLabel  : 'Can Transfer'
              name      : 'client_ref_person.can_transfer'
              # inputValue: '1'
              inputValue: true
              uncheckedValue: false
              checked: true
            ,
              boxLabel  : 'Can Payment'
              name      : 'client_ref_person.can_payment'
              # inputValue: '1'
              inputValue: true
              uncheckedValue: false
              checked: true
            ]

          ]




        ]
      win.show()
