Ext.define 'ClientupdateUi',
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "Update Client"
  layout :
    type :'vbox'
    align: 'stretch'

  listeners:
    render: -> @bind()
  bind: ->
  initComponent: ->

    grid_store = Ext.create 'Ext.data.Store',
      fields: [
        {name: 'ref_person_name', mapping: 'ref_person_name'},
        {name: 'ref_person.ref_person_id_type', mapping: 'ref_person.ref_person_id_type'},
        {name: 'ref_person.ref_person_id_no', mapping: 'ref_person.ref_person_id_no'},
        {name: 'client_ref_person.ref_person_type', mapping: 'client_ref_person.ref_person_type'},
        {name: 'client_ref_person.relation_type', mapping: 'client_ref_person.relation_type'},
        {name: 'client_ref_person.can_buy_sell', mapping: 'client_ref_person.can_buy_sell'},
        {name: 'client_ref_person.can_transfer', mapping: 'client_ref_person.can_transfer'},
        {name: 'client_ref_person.can_payment', mapping: 'client_ref_person.can_payment'}
      ]



    @defaults =
      labelAlign: 'right'
    @items = [
      xtype: 'tabpanel'
      items:[
        title: 'ข้อมูลทั่วไป'
        bodyPadding: 10
        items: [
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
            name: 'status'
            value: 'Active'
          ,
            xtype: 'combobox'
            fieldLabel: 'สาขา:'
            name: 'location_desc'
            value: '01-หาดใหญ่'
          ,
            xtype: 'textfield'
            fieldLabel: 'รหัส:'
            name: 'client_code'
            value: '50120'
          ,
            xtype: 'combobox'
            fieldLabel: 'ประเภทบัตร:'
            name: 'id_type'
            value: '0 - ประจำตัวประชาชน (ใน)'
          ,
            xtype: 'panel'
            layout: 'hbox'
            border: false
            items: [
              xtype: 'textfield'
              labelAlign: 'right'
              fieldLabel: 'เลขที่บัตร/หนังสือรับรองฯ:'
              name: 'id_no'
              value: '3500100009468'

            ,
              xtype: 'button'
              margin: '5 0 0 10'
              text: 'Check Blacklist'
              name: 'btnchkblack'
            ]
          ,
            xtype: 'datefield'
            fieldLabel: 'วันที่หมดอายุ:'
            name: 'expire_date'
            value: new Date()
          ,
            xtype: 'datefield'
            fieldLabel: 'วันเดือนปีเกิด/วันที่จดทะเบียน:'
            name: 'birth_date'
            value: new Date()
          ,
            xtype: 'panel'
            layout: 'hbox'
            border: false
            items: [
              xtype: 'combobox'
              labelAlign: 'right'
              fieldLabel: 'คำนำหน้าชื่อ:'
              name: 'title'
              value: '104 - นาง'

            ,
              xtype: 'textfield'
              margin: '0 0 0 10'
              name: 'title_desc'
              value: 'นาง'


            ]
          ,
            xtype: 'textfield'
            fieldLabel: 'ชื่อ[English]:'
            name: 'client_firstname_en'
            value: 'Arisa'

          ,
            xtype: 'textfield'
            fieldLabel: 'นามสกุล[English]:'
            name: 'client_lastname_en'
            value: 'Rattanaphet'

          ,
            xtype: 'textfield'
            fieldLabel: 'ชื่อ[ไทย]:'
            name: 'client_firstname_lc'
            value: 'อาริสา'

          ,
            xtype: 'textfield'
            fieldLabel: 'นามสกุล[ไทย]:'
            name: 'client_lastname_lc'
            value: 'รัตนเพ็ชร์'

          ,
            xtype: 'combobox'
            fieldLabel: 'เพศ:'
            name: 'gender'
            value: 'F-Female'

          ,
            xtype: 'panel'
            layout: 'hbox'

            border: false
            items: [
              xtype: 'combobox'
              fieldLabel: 'ประเภทลูกค้า:'
              name: 'client_type'
              labelAlign: 'right'
              value: '3-ลูกค้าทั่วไป'

            ,
              xtype: 'combobox'
              margin: '0 0 0 10'
              name: 'client_sub_type'
              value: '31-บุคคลธรรมดา'

            ]
          ,
            xtype: 'checkbox'
            margin: '0 0 0 105'
            boxLabel  : 'Non-Resident'
            name      : 'nr_flag'
            inputValue: '1'
            id        : 'nr_flag'

          ]
        ]
      ,
        title: 'ข้อมูลเพิ่มเติม'
        items: [
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
                name: 'cust_staff'
                value: '0-ไม่เป็นพนักงาน'

              ,
                xtype: 'combobox'
                fieldLabel: 'อาชีพ:'
                name: 'occupation_code'
                value: '990-บุคคล-บุคคลธรรมดาอื่นๆ'

              ,
                xtype: 'combobox'
                fieldLabel: 'สัญชาติ:'
                name: 'nationality'
                value: '000-ไทย'

              ,
                xtype: 'textfield'
                fieldLabel: 'เลขที่เสียภาษี:'
                name: 'tax_no'
                value: '3500100009468'

              ,
                xtype: 'combobox'
                fieldLabel: 'หักภาษี ณ ที่จ่าย:'
                name: 'tax_type'
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
                name: 'par_group'
              ,
                xtype: 'combobox'
                fieldLabel: 'ประเภทธุรกิจ:'
                name: 'business_type'
                value: '12-อื่นๆ(Freetext 10-20 digits)'

              ,
                xtype: 'textfield'
                fieldLabel: 'คำอธิบาย ประเภทธุรกิจ:'
                name: 'business_type_desc'
              ,
                xtype: 'combobox'
                fieldLabel: 'Corporation Type:'
                name: 'corporate_type_code'
                value: '180-บุคคลธรรมดา'
              ,

                xtype: 'combobox'
                fieldLabel: 'อัตราภาษีถูกหัก ณ ที่จ่ายกรณีนิติบุคคล:'
                name: 'withholding_tax_rate'
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
                name: 'spouse_id_type'
                value: 'Select การเลือกบัตร'
              ,
                xtype: 'textfield'
                labelAlign: 'right'
                fieldLabel: 'เลขที่บัตร/หนังสือรับรองฯ:'
                name: 'spouse_id_no'
              ]
            ,
              xtype: 'panel'
              layout: 'vbox'
              defaults:
                labelAlign: 'right'
              items: [
                xtype: 'textfield'
                fieldLabel: 'ชื่อ:'
                name: 'spouse_firstname'
              ,
                xtype: 'textfield'
                fieldLabel: 'นามสกุล:'
                name: 'spouse_lastname'
              ]

            ]
          ]
        ]
      ,
        title: 'บุคคลอ้างอิง'
        xtype: 'grid'
        layout: 'fit'
        flex: 1
        dockedItems: [
          xtype: 'toolbar'
          items: [
            xtype: 'button'
            text: 'Add Ref Person'
            name: 'addrefbtn'
          ,
            xtype: 'button'
            text: 'Update Relation'
            name: 'updaterelabtn'

          ,
            xtype: 'button'
            text: 'Remove selected person'
            name: 'removepsbtn'

          ]
        ]
        store: grid_store
        columns: [
          text: 'Name'
          dataIndex: 'ref_person_name'
          flex: 2
        ,
          text: 'Person ID Type'
          dataIndex: 'ref_person.ref_person_id_type'
          flex: 2
        ,
          text: 'Person ID No.'
          dataIndex: 'ref_person.ref_person_id_no'
          flex: 2
        ,
          text: 'Reference Type'
          dataIndex: 'client_ref_person.ref_person_type'
          flex: 2
        ,
          text: 'Relation Type'
          dataIndex: 'client_ref_person.relation_type'
          flex: 2
        ,
          text: 'Can Buy Sell'
          dataIndex: 'client_ref_person.can_buy_sell'
          flex: 1
        ,
          text: 'Can Transfer'
          dataIndex: 'client_ref_person.can_transfer'
          flex: 1
        ,
          text: 'Can Payment'
          dataIndex: 'client_ref_person.can_payment'
          flex: 1

        ]
        flex: 1
      ,
        title: 'ข้อมูลที่อยู่'
      ,
        title: 'ข้อมูลติดต่อ'
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
      ,
        title: 'ข้อมูลการเงิน'
        items:[
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

      ,
        title: 'อื่นๆ'
        items: [
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
              name: 'business_type_desc'
              value: '00000'
            ,
              xtype: 'textfield'
              fieldLabel: 'Branch Name for Revenue Dept:'
              name: 'business_type_desc'
              value: 'สำนักงานใหญ่'
            ]
          ]
        ]

      ]
    ]







    @callParent()
