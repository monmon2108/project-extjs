Ext.define 'ClienthomeUi',
  extend: 'Ext.Panel'
  bodyPadding: 5
  title: "Client Management"
  titleAlign: 'center'
  layout :
    type :'vbox'
    align: 'stretch'

  listeners:
    render: -> @bind()
  bind: ->
  initComponent: ->


    grid_store = Ext.create 'Ext.data.Store',
      fields: [
        {name: 'status', mapping: 'status'},
        {name: 'branch', mapping: 'branch'},
        {name: 'client_code', mapping: 'client_code'},
        {name: 'local_name', mapping: 'local_name'},
        {name: 'english_name', mapping: 'english_name'},
        {name: 'created_date', mapping: 'created_date'}
      ]
      # autoLoad: true
      # proxy:
      #   type: 'ajax'
      #   url: '/client'
      #   reader:
      #     type: 'json'
      #     rootProperty: 'client'

    @items = [
      xtype: 'fieldset'
      title: 'Filter'
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
            xtype: 'textfield'
            fieldLabel: 'Client Code:'
            name: 'clientcode'
          ,
            xtype: 'textfield'
            fieldLabel: 'Eng Firstname:'
            name: 'engfirstname'
          ,
            xtype: 'textfield'
            fieldLabel: 'Eng Lastname:'
            name: 'englastname'
          ,
            xtype: 'button'
            text: 'Search'
            name: 'search'
          ]
        ,
            xtype: 'panel'
            layout: 'vbox'
            border: false
            flex: 1
            defaults:
              labelAlign: 'right'
            items: [
              xtype: 'combobox'
              fieldLabel: 'ประเภทบัตร:'
              name: 'id_type'
              value: 'Select ประเภทบัตร'
            ,
              xtype: 'textfield'
              fieldLabel: 'เลขที่บัตร/หนังสือรับรองฯ:'
              name: 'id_no'
            ,
              xtype: 'combobox'
              fieldLabel: 'Status:'
              name: 'status'
              value: 'Select Status'
            ]
        ,
            xtype: 'panel'
            layout: 'vbox'
            border: false
            flex: 1
            items: [
              xtype: 'textfield'
              fieldLabel: 'Local Firstname:'
              name: 'localfirstname'
            ,
              xtype: 'textfield'
              fieldLabel: 'Local Lastname:'
              name: 'locallastname'
            ]
          ]
        ]

      ,
        xtype: 'grid'
        dockedItems: [
          xtype: 'toolbar'
          items: [
            xtype: 'button'
            text: 'New Client'
            name: 'newbtn'
          ,
            xtype: 'button'
            text: 'New Copy Client'
            name: 'newcopybtn'
          ,
            xtype: 'button'
            text: 'Update Client'
            name: 'updatebtn'
          ,
            xtype: 'button'
            text: 'Re Active Client'
            name: 'reactivebtn'
          ,
            xtype: 'button'
            text: 'Close Client'
            name: 'closebtn'

          ]
        ,

          xtype: 'pagingtoolbar'
          store: grid_store
          dock: 'bottom'
          displayInfo: true

        ]
        store: grid_store
        columns: [
          text: 'Status'
          dataIndex: 'status'
          flex: 1
        ,
          text: 'Branch'
          dataIndex: 'branch'
          flex: 2
        ,
          text: 'Client Code'
          dataIndex: 'client_code'
          flex: 1
        ,
          text: 'Local Name'
          dataIndex: 'local_name'
          flex: 2
        ,
          text: 'English Name'
          dataIndex: 'english_name'
          flex: 2
        ,
          text: 'Created Date'
          dataIndex: 'created_date'
          flex: 1

        ]
        flex: 1
    ]
















    @callParent()
