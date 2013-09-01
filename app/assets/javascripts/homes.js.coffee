# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#profile-edit-btn").click ->

    $.ajax(
      url: "/profiles/fetch/1"
      dataType: "HTML"
    ).success (data) ->
      $("#profile-edit-btn").hide()
      $("#profile-show-only").hide()
      $("#profile-show").append data
      $("#profile-cancel-btn").click ->
        $("#profile-edit-form").remove()
        $("#profile-show-only").show()
        $("#profile-edit-btn").show()

      $("form#edit_profile_1").submit ->
        form = $("form#edit_profile_1")
        sData = form.serialize()
        $.ajax(
          url: form.attr("action")
          method: "PUT"
          data: sData
          dataType: "HTML"
        ).success (data) ->
          console.log data
          $("#profile-show").html data
          $("#profile-edit-btn").show()
        false

