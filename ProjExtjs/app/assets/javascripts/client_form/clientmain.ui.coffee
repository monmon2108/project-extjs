//= require client_form/client_tab_general_info
//= require client_form/client_tab_more_info
//= require client_form/client_tab_ref_person
//= require client_form/address_tab/client_tab_address_info
//= require client_form/client_tab_contact_info
//= require client_form/client_tab_financial_info
//= require client_form/client_tab_other


Ext.define 'ClientForm.Clientmain.Ui',
  extend: 'Ext.form.Panel'
  buttons: [
    text: 'Update'
    name: 'update'
  ]
  listeners:
    render: ->
      @bind()
  bind: ->
  initComponent: ->
    @items = [
      xtype: 'tabpanel'

      items: [
        xtype: 'client_form.client_tab_general_info'
      ,
        xtype: 'client_form.client_tab_more_info'
      ,
        xtype: 'client_form.client_tab_ref_person'
      ,
        xtype: 'client_form.address_tab.client_tab_address_info'
      ,
        xtype: 'client_form.client_tab_contact_info'
      ,
        xtype: 'client_form.client_tab_financial_info'
      ,
        xtype: 'client_form.client_tab_other'
      ]
    ]







    @callParent arguments
