Ext.define 'ClientForm.ClientTabRefPerson.Ui',
  extend: 'Ext.Panel'
  name: 'refperson'
  bodyPadding: 5
  title: "บุคคลอ้างอิง"
  layout :
    type :'vbox'
    align: 'stretch'
  listeners:
    render: ->
      console.log 123
      @bind()
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

    @items = [
      xtype: 'grid'
      layout: 'fit'
      flex: 1
      dockedItems: [
        xtype: 'toolbar'
        items: [
          xtype: 'button'
          text: 'Add Ref Person'
          name: 'addrefbtngrid'
        ,
          xtype: 'button'
          text: 'Update Relation'
          name: 'updaterelabtngrid'

        ,
          xtype: 'button'
          text: 'Remove selected person'
          name: 'removepsbtngrid'

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
    ]


    @callParent arguments
