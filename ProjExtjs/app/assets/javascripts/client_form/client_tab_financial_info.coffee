Ext.define 'ClientForm.ClientTabFinancialInfo',
  alias: 'widget.client_form.client_tab_financial_info'
  name: 'financial'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "ข้อมูลการเงิน"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->

    @items = [
      xtype: 'fieldset'
      title: 'ข้อมูลบัญชีธนาคาร'
      layout: 'fit'
      items: [
        xtype: 'form'
        layout: 'hbox'
        align: 'stretch'
        border: false
        items: [
          xtype: 'panel'
          layout: 'vbox'
          border: false
          defaults:
            labelAlign: 'right'
          items:[
            xtype: 'combobox'
            fieldLabel: 'รหัสธนาคาร:'
            name: 'beneficiary_bank_code'
          ,
            xtype: 'textfield'
            fieldLabel: 'เลขที่บัญชี:'
            name: 'beneficiary_bank_account_no'
          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          border: false
          defaults:
            labelAlign: 'right'
          items:[
            xtype: 'textfield'
            fieldLabel: 'ชื่อบัญชี:'
            name: 'beneficiary_name_lc'
          ,
            xtype: 'textfield'
            fieldLabel: 'Account name:'
            name: 'beneficiary_name_en'
          ]
        ]
      ]
    ,
      xtype: 'fieldset'
      title: 'ข้อมูลการเงินทั่วไป'
      layout: 'fit'
      items: [
        xtype: 'form'
        layout: 'hbox'
        align: 'stretch'
        border: false
        items: [
          xtype: 'panel'
          layout: 'vbox'
          border: false
          defaults:
            labelAlign: 'right'
          items:[
            xtype: 'checkbox'
            margin: '0 0 0 105'
            boxLabel: 'Net หุ้นแบบ Custodian'
            name: 'custodian_flag'
          ,
            xtype: 'combobox'
            fieldLabel: 'ATS Consolidation Method:'
            name: 'ats_conso_method'
            value: '01-เลขที่บัญชีธนาคาร'

          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          border: false
          defaults:
            labelAlign: 'right'
          items:[
            xtype: 'checkbox'
            margin: '0 0 0 105'
            boxLabel: 'เงื่อนไขตรวจสอบวงเงิน'
            name: 'check_total_credit_limit_flag'

          ,
            xtype: 'textfield'
            fieldLabel: 'วงเงินรวม:'
            value: '0.00'
            name: 'total_credit_limit'
          ]
        ]
      ]
    ,
      xtype: 'fieldset'
      title: 'ข้อมูลลูกค้าสถาบัน สำหรับแบบรายงาน ก.ต. 2/9'
      layout: 'fit'
      items: [
        xtype: 'checkbox'
        margin: '0 0 0 105'
        boxLabel: 'บัญชีหลัก < Main Account > '
        name: 'rd_recognition_flag'
        checked: true
      ]
    ]




    @callParent arguments
