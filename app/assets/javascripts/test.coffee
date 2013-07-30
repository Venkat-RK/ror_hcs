$j = jQuery
$j ->
  root = exports ? this
  root.showValidations =(id) ->
    if $j("#"+id).val() is ""
      alert "Email can't be blank"
      $j("#"+id).focus()
      false
    else
      true
