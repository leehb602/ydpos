/**
 * moreBox.js
 */

$(document).ready(function () {
  $("#btn_more").click(function () {
    if ($(this).text() == "More") {
      $("#subFilterBox").show();
      $(this).text("Hide").css("color", "white");
    } else if ($(this).text() == "Hide") {
      $("#subFilterBox").hide();
      $(this).text("More").css("color", "white");
    }
    return false;
  });
});
