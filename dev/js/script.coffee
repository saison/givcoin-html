$ ->
  $("#loginBox").fadeOut(0)

  # Top Tab Select
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

  # Header Nav Select
  $("header nav").click ->
    if $(this).hasClass("active")
      $(this).removeClass("active")
    else
      $(this).addClass("active")
