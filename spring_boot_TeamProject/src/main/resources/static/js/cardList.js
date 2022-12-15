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
});
  


