//= require mainpage

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log 'login pass'


Ext.onReady ->
  console.log 'Main: Ready'


  Ext.create 'Ext.container.Viewport',
    layout: 'fit'
     
    renderTo: Ext.getBody()
    items: Ext.create 'MainPage',
      renderTo: Ext.getBody(),

  #
