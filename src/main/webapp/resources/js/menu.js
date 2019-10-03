function sidebar() {
  $("nav").toggleClass("active");
}

$("button, a").on("click", sidebar);