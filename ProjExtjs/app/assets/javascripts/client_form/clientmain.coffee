//= require client_form/clientmain.ui

Ext.define 'ClientForm.Clientmain',
  alias: 'widget.client_form.clientmain'
  extend: 'ClientForm.Clientmain.Ui'



  getValues: ->
    console.log 'get!'
    arglist = @callParent arguments
    console.log arglist

    result = {}
    for prop, val of arglist
      keylist = (prop.split ".")
      # console.log sp
      if keylist.length == 1
        result[prop] = val

      else if keylist.length > 1
        KeyManage = (arr,value) ->
          console.log 'f1 start'
          keyresult_list = {}
          firstkey = arr[0]
          value_result = value
          index = arr.length - 1
          while (index >= 0)
            manage_list = {}
            firstkey = arr[index]

            manage_list[firstkey] = value_result

            value_result = manage_list

            if index == 0
              keyresult_list = manage_list

            index--

          keyresult_list

        result2 = KeyManage keylist,val
        console.log 'result2:     ',result2

        MergeRecursive = (obj1, obj2) ->
         for p of obj2
           try
             # Property in destination object set; update its value.
             if obj2[p].constructor == Object
               obj1[p] = MergeRecursive(obj1[p], obj2[p])
             else
               obj1[p] = obj2[p]
           catch e
             # Property in destination object not set; create it and set its value.
             obj1[p] = obj2[p]
         obj1

        result = MergeRecursive(result,result2)
        console.log 'Result:      ',result

    result






  bind: ->
    update_btn = @down 'button[name=update]'
    me = @

    update_btn.on 'click' , (btn) ->
      console.log me.getValues()
      console.log 'click!!'





    check_blacklist_btn = @down 'button[name=btnchkblack]'

    check_blacklist_btn.on 'click', (btn) ->
      console.log 'check!!'
      console.log 'Check:   ',me.getValues()['general']['id_no']
