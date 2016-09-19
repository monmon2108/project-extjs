//= require client_form/address_tab/address_tab_current_addr
//= require client_form/address_tab/address_tab_company_addr
//= require client_form/address_tab/address_tab_legal_addr
//= require client_form/address_tab/address_tab_deliver_addr


Ext.define 'ClientForm.AddressTab.ClientTabAddressInfo',
  alias: 'widget.client_form.address_tab.client_tab_address_info'
  name: 'addressinfo'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "ข้อมูลที่อยู่"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->

    @items = [
      xtype: 'tabpanel'
      items: [
        xtype: 'client_form.address_tab.address_tab_current_addr'
      ,
        xtype: 'client_form.address_tab.address_tab_company_addr'
      ,
        xtype: 'client_form.address_tab.address_tab_legal_addr'
      ,
        xtype: 'client_form.address_tab.address_tab_deliver_addr'
      ]
    ]



    @callParent arguments
