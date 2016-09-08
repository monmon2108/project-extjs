Ext.define 'MainUi',
  extend: 'Ext.Panel'
  bodyPadding: 10
  title: "Hello #{USERNAME}"
  layout :
    type :'vbox'
    align: 'stretch'

  listeners:
    render: -> @bind()
  bind: ->
  initComponent: ->
    console.log 'abc'
    grid_store = Ext.create 'Ext.data.Store',
      fields: [
        {name: 'date'},
        {name: 'name'},
        {name: 'time-in'},
        {name: 'time-out'}
      ]
      proxy:
        type: 'ajax'
        url: '/timestampdata'
        reader:
          type: 'json'
          rootProperty: 'timestampdata'

    @items = [
      border: false
      layout: 'hbox'
      items: [
        xtype: 'button'
        text: 'Search'
        name: 'search'
      ]
      height: 45

    ,
      xtype: 'form'
      layout: 'hbox'
      border: false
      items: [
        xtype: 'datefield'
        fieldLabel: 'Date'
        labelAlign: 'right'
        labelWidth: 30
        name: 'datefrom_search'
      ,
        xtype: 'datefield'
        fieldLabel: 'To'
        labelAlign: 'right'
        name: 'dateto_search'
      ]
      height: 45

    ,
      xtype: 'grid'
      dockedItems: [
        xtype: 'toolbar'
        items: [
          xtype: 'button'
          text: 'TimeStamp'
          name: 'timestamp'
        ,
          xtype: 'button'
          text: 'Logout'
          name: 'logout'
        
        ]

      ]
      store: grid_store
      columns: [
        text: 'Date'
        dataIndex: 'date'
        flex: 1
      ,
        text: 'Name'
        dataIndex: 'name'
        flex: 2
      ,
        text: 'Time-In'
        dataIndex: 'time_in'
        flex: 1
      ,
        text: 'Time-Out'
        dataIndex: 'time_out'
        flex: 1
      ]
      flex: 1

    ]

    @callParent()
