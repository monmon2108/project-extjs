Ext.define 'ClientForm.ClientTabMoreInfo',
  alias: 'widget.client_form.client_tab_more_info'
  name: 'more_info'
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "ข้อมูลเพิ่มเติม"
  layout :
    type :'vbox'
    align: 'stretch'
  initComponent: ->
    @items = [
      xtype: 'fieldset'
      title: 'ข้อมูลอาชีพ'
      layout: 'fit'
      collapsible: true
      items: [
        xtype: 'form'
        layout: 'hbox'
        align: 'stretch'
        border: false

        defaults:
          labelAlign: 'right'
          border: false
          flex: 1
        items: [
          xtype: 'panel'
          layout: 'vbox'
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'combobox'
            fieldLabel: 'การเป็นพนักงาน:'
            name: "#{@name}.career_info.cust_staff"
            value: '0-ไม่เป็นพนักงาน'

          ,
            xtype: 'combobox'
            fieldLabel: 'อาชีพ:'
            name: "#{@name}.career_info.occupation_code"
            value: '990-บุคคล-บุคคลธรรมดาอื่นๆ'

          ,
            xtype: 'combobox'
            fieldLabel: 'สัญชาติ:'
            name: "#{@name}.career_info.nationality"
            value: '000-ไทย'

          ,
            xtype: 'textfield'
            fieldLabel: 'เลขที่เสียภาษี:'
            name: "#{@name}.career_info.tax_no"
            value: '3500100009468'

          ,
            xtype: 'combobox'
            fieldLabel: 'หักภาษี ณ ที่จ่าย:'
            name: "#{@name}.career_info.tax_type"
            value: '1-ถูกหักภาษี ณ ที่จ่าย'

          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'textfield'
            fieldLabel: 'Parent Group:'
            name: "#{@name}.career_info.par_group"
          ,
            xtype: 'combobox'
            fieldLabel: 'ประเภทธุรกิจ:'
            name: "#{@name}.career_info.business_type"
            value: '12-อื่นๆ(Freetext 10-20 digits)'

          ,
            xtype: 'textfield'
            fieldLabel: 'คำอธิบาย ประเภทธุรกิจ:'
            name: "#{@name}.career_info.business_type_desc"
          ,
            xtype: 'combobox'
            fieldLabel: 'Corporation Type:'
            name: "#{@name}.career_info.corporate_type_code"
            value: '180-บุคคลธรรมดา'
          ,

            xtype: 'combobox'
            fieldLabel: 'อัตราภาษีถูกหัก ณ ที่จ่ายกรณีนิติบุคคล:'
            name: "#{@name}.career_info.withholding_tax_rate"
            value: '0'

          ]
        ]
      ]
    ,
      xtype: 'fieldset'
      title: 'คู่สมรส'
      layout: 'fit'
      collapsible: true
      items: [
        xtype: 'form'
        layout: 'hbox'
        align: 'stretch'
        border: false
        defaults:
          labelAlign: 'right'
          border: false
          flex: 1
        items: [
          xtype: 'panel'
          layout: 'vbox'
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'combobox'
            fieldLabel: 'ประเภทบัตร:'
            name: "#{@name}.spouse.spouse_id_type"
            value: 'Select การเลือกบัตร'
          ,
            xtype: 'textfield'
            labelAlign: 'right'
            fieldLabel: 'เลขที่บัตร/หนังสือรับรองฯ:'
            name: "#{@name}.spouse.spouse_id_no"
          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'textfield'
            fieldLabel: 'ชื่อ:'
            name: "#{@name}.spouse.spouse_firstname"
          ,
            xtype: 'textfield'
            fieldLabel: 'นามสกุล:'
            name: "#{@name}.spouse.spouse_lastname"
          ]

        ]
      ]
    ]







    @callParent()
