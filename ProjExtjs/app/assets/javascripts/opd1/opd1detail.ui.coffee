Ext.define 'Opd1detailUi',
  extend: 'Ext.Panel'
  bodyPadding: 5
  autoScroll:true,
  title: "opd1"
  layout :
    type :'vbox'
    align: 'stretch'

  listeners:
    render: -> @bind()
  bind: ->
  initComponent: ->
    @items = [
      xtype: 'form'
      layout: 'vbox'
      align: 'stretch'
      border: false
      items: [
        xtype: 'panel'
        layout: 'hbox'
        align: 'stretch'
        border: false
        items: [
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          items: [
            xtype: 'textfield'
            fieldLabel: 'เลขที่เอกสาร '
            name: 'nodocs'
          ,
            xtype: 'textfield'
            fieldLabel: 'Account ID '
            name: 'accid'
          ,
            xtype: 'textfield'
            fieldLabel: 'ประเภทหลักประกัน '

          ,
            xtype: 'textfield'
            fieldLabel: 'Marketing '
            name: 'market'
          ,
            xtype: 'textfield'
            fieldLabel: 'Attachment Type '
            name: 'attchtype'
          ,
            xtype: 'textfield'
            fieldLabel: 'เลขประจำตัวประชาชน '
            name: 'id'
          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          items: [
            xtype: 'textfield'
            fieldLabel: 'วันที่และเวลา '

          ,
            xtype: 'textfield'
            fieldLabel: 'Account Name '

          ,
            xtype: 'textfield'
            fieldLabel: 'Deposit Name '

          ,
            xtype: 'textfield'
            fieldLabel: 'Approver '

          ,
            xtype: 'textfield'
            fieldLabel: 'เลขที่บัญชี ATS ของลูกค้า '


          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          items: [
            xtype: 'textfield'
            fieldLabel: 'บัญชีธนาคาร '

          ,
            xtype: 'textfield'
            fieldLabel: 'จำนวนเงิน '

          ,
            xtype: 'textfield'
            fieldLabel: 'Approved Date '

          ,
            xtype: 'textfield'
            fieldLabel: 'วงเงินที่คำนวณได้ '

          ]

        ]
      ,
        xtype: 'panel'
        layout: 'hbox'
        align: 'stretch'
        labelAlign: 'right'
        border: false
        flex: 1
        items: [
          xtype: 'fieldset'
          title: 'Approve'
          layout: 'fit'
          items: [
            xtype: 'panel'
            layout: 'vbox'
            border: false
            flex: 1
            items: [
              xtype: 'checkbox'
              boxLabel  : 'เข้าเกณฑ์ต้องสอบยัน'
              name      : ''
              inputValue: '1'
            ,
              xtype: 'textfield'
              fieldLabel: 'Telephone '
            ,
              xtype: 'textfield'
              fieldLabel: 'Time Call '
            ,
              xtype: 'combobox'
              fieldLabel: 'Verify Reason'
              name: ''
              value: ''
            ,
              xtype: 'textarea'
              fieldLabel: 'Remark: '
            ,
              xtype: 'checkbox'
              boxLabel  : 'ไม่เข้าเกณฑ์ต้องสอบยัน'
              name      : ''
              inputValue: '0'
            ,
              xtype: 'combobox'
              fieldLabel: 'Verify Reason:'
              name: ''
              value: ''
            ]
          ]
        ,
          xtype: 'fieldset'
          title: 'Attachment'
          layout: 'fit'
          items: [
            xtype: 'panel'
            layout: 'vbox'
            border: false
            flex: 1
            items: [
              xtype: 'label',
              html: 'ไม่มีเอกสารประกอบ'
            ,
              xtype: 'textfield'
              fieldLabel: 'ประเภท'
              name: ''
              value: 'ATM'
            ,
              xtype: 'textfield'
              fieldLabel: 'ธนาคาร/สาขา'
              name: ''
              value: 'ATM'
            ,
              xtype: 'textfield'
              fieldLabel: 'สถานที่'
              name: ''

            ,
              xtype: 'textfield'
              fieldLabel: 'วันที่'
              name: ''

            ,
              xtype: 'textfield'
              fieldLabel: 'เวลา'
              name: ''

            ]
          ]

        ]
      ,
        xtype: 'checkbox'
        boxLabel  : 'Check Statement: '
        name      : ''
        inputValue: '0'
      ,
        xtype: 'panel'
        layout: 'hbox'
        align: 'stretch'
        flex: 1
        border: false
        defaults:
          labelAlign: 'right'
          border: false
          flex: 1
          bodyPadding: 5
        items: [
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          items: [
            xtype: 'fieldset'
            title: 'OPDI Input รายละเอียด'
            layout: 'fit'

            items: [
              xtype: 'panel'
              layout: 'hbox'
              align: 'stretch'
              flex: 1
              border: false
              items: [
                xtype: 'panel'
                layout: 'vbox'
                border: false
                flex: 1
                items: [
                  xtype: 'panel'
                  layout: 'hbox'
                  align: 'stretch'
                  border: false
                  flex: 1

                  items: [
                    xtype: 'textfield'
                    fieldLabel: 'Finish Amount '
                  ,
                    xtype: 'label',
                    html: 'บาท'
                  ]
                ,
                  xtype: 'datefield'
                  fieldLabel: 'Effective Date '
                  margin: '5 0 5 0'
                ,
                  xtype: 'checkbox'
                  margin: '0 0 0 105'
                  boxLabel  : 'เป็นรายการหนี้สิน'
                  name      : ''
                  inputValue: '1'
                ]
              ,
                xtype: 'panel'
                layout: 'vbox'
                border: false
                flex: 1
                margin: '0 0 0 20'
                items: [
                  xtype: 'panel'
                  layout: 'hbox'
                  border: false
                  flex: 1
                  margin: '5 0 5 0'
                  items: [
                    xtype: 'checkbox'
                    boxLabel  : 'Margin Call'
                    name      : ''
                    inputValue: '1'
                  ,
                    xtype: 'textfield'
                    margin: '0 0 0 28'
                  ,
                    xtype: 'label',
                    html: 'บาท'
                  ]
                ,
                  xtype: 'panel'
                  layout: 'hbox'
                  border: false
                  flex: 1
                  margin: '0 0 5 0'
                  items: [

                    xtype: 'textfield'
                    fieldLabel: 'Call Amount '
                  ,
                    xtype: 'label',
                    html: 'บาท'
                  ]
                ,
                  xtype: 'panel'
                  layout: 'hbox'
                  border: false
                  flex: 1
                  margin: '0 0 5 0'
                  items: [

                    xtype: 'textfield'
                    fieldLabel: 'Normal Amount '
                  ,
                    xtype: 'label',
                    html: 'บาท'
                  ]
                ]
              ]
            ]
          ,
            xtype: 'fieldset'
            title: 'ยกเลิกการทำรายการ'
            layout: 'fit'
            items: [
              xtype: 'panel'
              layout: 'vbox'
              align: 'stretch'
              flex: 1
              border: false
              items: [
                xtype: 'checkbox'
                margin: '0 0 0 105'
                boxLabel  : 'Reject'
                name      : ''
                inputValue: '1'
              ,
                xtype: 'combobox'
                fieldLabel: 'Reject Reason '
                name: ''
                value: '--กรุณาเลือก--'
              ,
                xtype: 'textarea'
                fieldLabel: 'Reject Remark '
              ]
            ]
          ,
            xtype: 'panel'
            layout: 'vbox'
            align: 'stretch'
            flex: 1
            bodyPadding: 5
            items: [
              xtype: 'checkbox'
              boxLabel  : 'Reject'
              name      : ''
              inputValue: '1'
            ,
              xtype: 'combobox'
              fieldLabel: 'Reject Reason '
              name: ''
              value: ''
            ,
              xtype: 'textarea'
              fieldLabel: 'Remark '
            ]
          ]

        ,
          xtype: 'panel'
          layout: 'vbox'
          align: 'stretch'
          flex: 1
          border: false
          items: [
            xtype: 'fieldset'
            title: 'ปรับวงเงินที่ระบบ Front'
            layout: 'fit'
            margin: '0 0 5 0'
            bodyPadding: 5
            items: [
              xtype: 'radiogroup'
              layout: 'vbox'
              flex: 1
              items: [
                name: 'radio'
                inputValue: 'yes'
                boxLabel: 'ไม่ปรับวงเงิน'
              ,
                name: 'radio',
                inputValue: 'no',
                boxLabel: 'ปรับวงเงิน'
              ]
            ,
              xtype: 'panel'
              layout: 'hbox'
              border: false
              flex: 1
              items: [

                xtype: 'textfield'
                fieldLabel: 'Increase Line '
              ,
                xtype: 'label',
                html: 'บาท'
              ]
            ]
          ,
            xtype: 'fieldset'
            title: 'วงเงินใหม่ที่ได้'
            layout: 'fit'
            flex: 1
            margin: '20 0 0 0'
            bodyPadding: 5
            items: [
              xtype: 'textfield'
              fieldLabel: 'วงเงินที่คำนวณได้ '
            ]
          ,
            xtype: 'panel'
            layout: 'hbox'
            border: false
            items: [
              xtype: 'button'
              text: 'Save'
              name: ''
            ,
              xtype: 'button'
              text: 'Close Detail'
              name: ''
            ]
          ]


        ]


      ]
    ]


    @callParent()
