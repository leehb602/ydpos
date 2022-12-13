/**
 * cardList.js
 */


$(document).ready(function () {
  const togglingBtns = document.querySelectorAll(".fa-bookmark");

  togglingBtns.forEach(function (btns) {
    btns.addEventListener("click", function () {
      btns.classList.toggle("fas");
    });
  });
  $(function () {
  var num = 0;
  $(".record_bookMark").click(function () {
    if (num == 0) {
      $(this).attr("src", "/image/star.png");
      num = 1;
    } else {
      $(this).attr("src", "/image/fullstar.png");
      num = 0;
    }
  });
});
});


