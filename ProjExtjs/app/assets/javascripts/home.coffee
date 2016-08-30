# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

console.log 123

Ext.onReady ->
  console.log 'Ready'
  Ext.create 'Ext.Panel',
    renderTo: Ext.getBody(),
    title: 'Hello world',
    items:[
      xtype: 'textfield',
      name: 'input',
      fieldLabel: 'Input',
    ,
      xtype: 'checkbox'
      boxLabel: 'Click'
      listeners:
        change: (checkbox, new_value, old_value)->
          panel = checkbox.up 'panel'
          btn = panel.down 'button'
          btn.setDisabled new_value
    ,
      xtype: 'button',
      text: 'Click Me!'
      handler: (btn) ->
        panel = btn.up 'panel'
        textfield = panel.down 'textfield'
        alert textfield.getValue()

    ]
