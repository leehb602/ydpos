/**
 * search.js
 */

$(document).ready(function () {
  const $message = $("#searchBar");

  $(document).ready(function () {
    var search = "";
    $("#Magnifier").on("click", function () {
      search = $("#searchBar").val();
      if (search == "") {
        $(".item").show();
      } else {
        $(".item").hide();
        $(".item[value*=" + search + "]").show();
      }
    });
  });

  $(document).keydown(function (keyNum) {
    if (keyNum.keyCode == 13) {
      search = $("#searchBar").val();
      if (search == "") {
        $(".item").show();
      } else {
        $(".item").hide();
        $(".item[value*=" + search + "]").show();
        return false;
      }
    }
  });
});
