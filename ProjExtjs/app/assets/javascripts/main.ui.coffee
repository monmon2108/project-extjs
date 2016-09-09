Ext.define 'MainUi',
  extend: 'Ext.Panel'
  bodyPadding: 10
  title: "Hello #{USERNAME}."
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
        {name: 'date', mapping: 'date'},
        {name: 'employee_id', mapping: 'employee_id'},
        {name: 'timein', mapping: 'timein'},
        {name: 'timeout', mapping: 'timeout'}
      ]
      autoLoad: true
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
        value: new Date()
      ,
        xtype: 'datefield'
        fieldLabel: 'To'
        labelAlign: 'right'
        name: 'dateto_search'
        value: new Date()
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
        renderer: (value, record)->
          dt = Ext.Date.parse value, 'c'
          Ext.Date.format dt, 'd/m/Y'
      ,
        text: 'Name'
        dataIndex: 'name'
        flex: 2
      ,
        text: 'Time-In'
        dataIndex: 'timein'
        flex: 1
        renderer: (value)->
          dt = Ext.Date.parse value, 'c'
          adjust = Ext.Date.add dt, Ext.Date.MINUTE, dt.getTimezoneOffset()
          time = Ext.Date.format adjust, 'H:i:s'

      ,
        text: 'Time-Out'
        dataIndex: 'timeout'
        flex: 1
        renderer: (value)->
          dt = Ext.Date.parse value, 'c'
          adjust = Ext.Date.add dt, Ext.Date.MINUTE, dt.getTimezoneOffset()
          time = Ext.Date.format adjust, 'H:i:s'

      ]
      flex: 1

    ]

    @callParent()
