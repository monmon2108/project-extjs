//= require clienthomepage
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Ext.onReady ->
  console.log 'clienthome: Ready'


  Ext.create 'Ext.container.Viewport',
    layout: 'fit'

    renderTo: Ext.getBody()
    items: Ext.create 'ClienthomePage',
      renderTo: Ext.getBody(),
