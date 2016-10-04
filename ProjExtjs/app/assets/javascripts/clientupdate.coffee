# //= require client_form/clientmain
//=require opd1/opd1detail
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Ext.onReady ->
  console.log 'clientupdate: Ready'


  Ext.create 'Ext.container.Viewport',
    layout: 'fit'

    renderTo: Ext.getBody()
    # items: Ext.create 'ClientForm.Clientmain'
    items: Ext.create 'Opd1detail'
