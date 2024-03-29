$ ->

  $("#loginBox").fadeOut(0)

  $("#toSignup").click ->
    @removeClass("active")
    $("#toLogin").removeClass("active")
    @addClass("active")
    $("#loginBox").fadeOut(400)
    $("#signupBox").delay(500).fadeIn(400)

  $("#toLogin").click ->
    $(this).removeClass("active")
    $("#toSignup").removeClass("active")
    $(this).addClass("active")
    $("#signupBox").fadeOut(400)
    $("#loginBox").delay(500).fadeIn(400)

  # Top File Select
  $(".uploadButton #userIcon").change ->
    $(".uploadButton span.uploadText").text("OK! Selected Picture")
    $(".uploadButton").addClass("select")

  # Side Content
  $("#icon").click ->
    console.log $(this).hasClass("active")
    if $(this).hasClass("active")
      $("aside").css({"right":"-200px"});
    else
      $("aside").css({"right":"0"});

  # Header Nav Select
  $("header nav").click ->
    if $(this).hasClass("active")
      $(this).removeClass("active")
    else
      $(this).addClass("active")

  # Ranking Tab Select
  $(".rankingList").fadeOut(0)
  $("#Monthly").fadeIn(0)

  $("#rankTab ul li").click ->
    tab = $(this).text()
    if !$(this).hasClass("active")
      $("#rankTab ul li.active").removeClass('active')
      $(this).addClass("active")
      $(".rankingList").fadeOut(200)
      $("#"+tab).delay(190).fadeIn(200)
