Ext.define 'ClientForm.ClientTabOther',
  alias: 'widget.client_form.client_tab_other'
  name: 'other'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "อื่นๆ"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->

    @items = [
      xtype: 'fieldset'
      title: 'สำหรับใบกำกับภาษี'
      layout: 'fit'
      collapsible: true
      items: [
        xtype: 'form'
        layout: 'vbox'
        align: 'stretch'
        border: false

        defaults:
          labelAlign: 'right'
          border: false
          flex: 1
        items: [
          xtype: 'textfield'
          fieldLabel: 'Branch No. for Revenue Dept:'
          name: "#{@name}.business_type_desc"
          value: '00000'
        ,
          xtype: 'textfield'
          fieldLabel: 'Branch Name for Revenue Dept:'
          name: "#{@name}.business_type_desc"
          value: 'สำนักงานใหญ่'
        ]
      ]
    ]



    @callParent arguments
