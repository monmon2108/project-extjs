Ext.define 'OpdverifyUi',
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "opd1"
  layout :
    type :'vbox'
    align: 'stretch'

  listeners:
    render: -> @bind()
  bind: ->
  initComponent: ->

    grid_store = Ext.create 'Ext.data.Store',
      fields: [
        {name: 'no', mapping: 'no'},
        {name: 'transno', mapping: 'transno'},
        {name: 'transdate', mapping: 'transdate'},
        {name: 'accno', mapping: 'accno'},
        {name: 'accname', mapping: 'accname'},
        {name: 'detail', mapping: 'detail'},
        {name: 'type', mapping: 'type'},
        {name: 'channel', mapping: 'channel'}
      ]



    @items = [
      xtype: 'fieldset'
      title: 'Critiria'
      layout: 'fit'
      items: [
        xtype: 'form'
        layout: 'hbox'
        align: 'stretch'
        border: false
        defaults:
          labelAlign: 'right'
        items: [
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          defaults:
            labelAlign: 'right'
          items: [
            xtype: 'datefield'
            fieldLabel: 'Transaction Date From:'
            name: 'transdate_from'
            value: new Date()
          ,
            xtype: 'combobox'
            fieldLabel: 'ธนาคาร:'
            name: 'bank'
            value: '--ทั้งหมด--'
          ]
        ,
          xtype: 'panel'
          layout: 'vbox'
          border: false
          flex: 1
          defaults:
            labelAlign: 'right'
            buttonAlign: 'right'
          items: [
            xtype: 'datefield'
            fieldLabel: 'Transaction Date To:'
            name: 'transdate_to'
            value: new Date()
          ,
            xtype: 'combobox'
            fieldLabel: 'Market Type:'
            name: 'market_type'
            value: '--ทั้งหมด--'
          ,
            xtype: 'button'
            text: 'ค้นหาตาม Critiria'
            name: 'btn_search_crit'

          ]

        ]

      ]
    ,
      xtype: 'grid'
      dockedItems: [
        xtype: 'toolbar'
        items: [
          

        ]
      ,

        xtype: 'pagingtoolbar'
        store: grid_store
        dock: 'bottom'
        displayInfo: true

      ]
      store: grid_store
      columns: [
        text: 'No.'
        dataIndex: 'no'
        flex: 1
      ,
        text: 'Trans. No.'
        dataIndex: 'transno'
        flex: 2
      ,
        text: 'Transaction Date'
        dataIndex: 'transdate'
        flex: 1
      ,
        text: 'Account No.'
        dataIndex: 'accno'
        flex: 1
      ,
        text: 'Account Name'
        dataIndex: 'accname'
        flex: 2
      ,
        text: 'ธนาคาร/สาขา/เลขที่บัญชี'
        dataIndex: 'detail'
        flex: 2
      ,
        text: 'ประเภท'
        dataIndex: 'type'
        flex: 1
      ,
        text: 'Channel'
        dataIndex: 'channel'
        flex: 1

      ]
      flex: 1

    ]



    @callParent()
