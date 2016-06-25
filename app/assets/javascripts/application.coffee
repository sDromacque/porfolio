#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .


$(document).ready ->
    setTimeout (->
        $('#flash').remove()
        return
    ), 3000
    return