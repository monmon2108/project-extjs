Ext.define 'ClientForm.ClientTabGeneralInfo',
  alias: 'widget.client_form.client_tab_general_info'
  name: 'general'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "ข้อมูลทั่วไป"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->


    @items = [
      xtype: 'form'
      layout: 'vbox'
      align: 'stretch'
      border: false
      defaults:
        labelAlign: 'right'
        margin: '0 0 10 0'
      items: [
        xtype: 'combobox'
        fieldLabel: 'Status:'
        name: "#{@name}.status"
        value: 'Active'
      ,
        xtype: 'combobox'
        fieldLabel: 'สาขา:'
        name: "#{@name}.location_desc"
        value: '01-หาดใหญ่'
      ,
        xtype: 'textfield'
        fieldLabel: 'รหัส:'
        name: "#{@name}.client_code"
        value: '50120'
      ,
        xtype: 'combobox'
        fieldLabel: 'ประเภทบัตร:'
        name: "#{@name}.id_type"
        value: '0 - ประจำตัวประชาชน (ใน)'
      ,
        xtype: 'panel'
        layout: 'hbox'
        border: false
        items: [
          xtype: 'textfield'
          labelAlign: 'right'
          fieldLabel: 'เลขที่บัตร/หนังสือรับรองฯ:'
          name: "#{@name}.id_no"
          value: '3500100009468'

        ,
          xtype: 'button'
          margin: '5 0 0 10'
          text: 'Check Blacklist'
          name: "btnchkblack"
        ]
      ,
        xtype: 'datefield'
        fieldLabel: 'วันที่หมดอายุ:'
        name: "#{@name}.expire_date"
        submitFormat: 'Y-m-d'
        format: 'd/m/Y'
      ,
        xtype: 'datefield'
        fieldLabel: 'วันเดือนปีเกิด/วันที่จดทะเบียน:'
        name: "#{@name}.birth_date"
        submitFormat: 'Y-m-d'
        format: 'd/m/Y'
      ,
        xtype: 'panel'
        layout: 'hbox'
        border: false
        items: [
          xtype: 'combobox'
          labelAlign: 'right'
          fieldLabel: 'คำนำหน้าชื่อ:'
          name: "#{@name}.title"
          value: '104 - นาง'

        ,
          xtype: 'textfield'
          margin: '0 0 0 10'
          name: "#{@name}.title_desc"
          value: 'นาง'


        ]
      ,
        xtype: 'textfield'
        fieldLabel: 'ชื่อ[English]:'
        name: "#{@name}.client_firstname_en"
        value: 'Arisa'

      ,
        xtype: 'textfield'
        fieldLabel: 'นามสกุล[English]:'
        name: "#{@name}.client_lastname_en"
        value: 'Rattanaphet'

      ,
        xtype: 'textfield'
        fieldLabel: 'ชื่อ[ไทย]:'
        name: "#{@name}.client_firstname_lc"
        value: 'อาริสา'

      ,
        xtype: 'textfield'
        fieldLabel: 'นามสกุล[ไทย]:'
        name: "#{@name}.client_lastname_lc"
        value: 'รัตนเพ็ชร์'

      ,
        xtype: 'combobox'
        fieldLabel: 'เพศ:'
        name: "#{@name}.gender"
        value: 'F-Female'

      ,
        xtype: 'panel'
        layout: 'hbox'

        border: false
        items: [
          xtype: 'combobox'
          fieldLabel: 'ประเภทลูกค้า:'
          name: "#{@name}.client_type"
          labelAlign: 'right'
          value: '3-ลูกค้าทั่วไป'

        ,
          xtype: 'combobox'
          margin: '0 0 0 10'
          name: "#{@name}.client_sub_type"
          value: '31-บุคคลธรรมดา'

        ]
      ,
        xtype: 'checkbox'
        margin: '0 0 0 105'
        boxLabel  : 'Non-Resident'
        name      : "#{@name}.nr_flag"
        inputValue: '1'

      ]
    ]


    @callParent arguments
