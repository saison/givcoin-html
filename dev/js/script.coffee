$ ->
  $("#loginBox").fadeOut(0)

  $("#toSignup").click ->
    $(this).removeClass("active")
    $("#toLogin").removeClass("active")
    $(this).addClass("active")
    $("#loginBox").fadeOut(400)
    $("#signupBox").delay(500).fadeIn(400)

  $("#toLogin").click ->
    $(this).removeClass("active")
    $("#toSignup").removeClass("active")
    $(this).addClass("active")
    $("#signupBox").fadeOut(400)
    $("#loginBox").delay(500).fadeIn(400)
