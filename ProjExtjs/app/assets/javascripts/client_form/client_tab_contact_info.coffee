Ext.define 'ClientForm.ClientTabContactInfo',
  alias: 'widget.client_form.client_tab_contact_info'
  name: 'contactinfo'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "ข้อมูลติดต่อ"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->
    @items = [
      xtype: 'form'
      layout: 'vbox'
      align: 'stretch'
      border: false
      bodyPadding: 10
      defaults:
        labelAlign: 'right'
        border: false
        flex: 1
      items: [
        xtype: 'textfield'
        fieldLabel: 'Email:'
        name: 'email'
        value: 'arisa1950@gmail.com'

      ,
        xtype: 'textfield'
        fieldLabel: 'โทรศัพท์มือถือ 1:'
        name: 'mobile_phone_1'
        value: '0812754002'

      ,
        xtype: 'textfield'
        fieldLabel: 'โทรศัพท์มือถือ 2:'
        name: 'mobile_phone_2'
      ,
        xtype: 'textarea'
        fieldLabel: 'อื่นๆ:'
        name: 'other_contact'
        width: 320
      ,
        xtype: 'combobox'
        fieldLabel: 'วิธีส่งเอกสาร:'
        name: 'method_send_doc'
        value: '5'

      ,
        xtype: 'textfield'
        fieldLabel: 'Route:'
        name: 'route'
      ]

    ]




    @callParent arguments
