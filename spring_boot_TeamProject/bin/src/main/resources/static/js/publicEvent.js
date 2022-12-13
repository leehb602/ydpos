
$(document).ready(function(){    
  

  
    
    $mapBtn = $(".mapBtn");
	$mapBtn.each(function(index) {
		var search = ["전국", "서울", "강원도", "대구", "부산", "제주도","기타"];
		$('#map' + index).on('click', function() {
			if(search[index - 1] == "전국") {
				$(".event_card").show();
			} else {
				$(".event_card").hide();
				$('.event_card[value*=' + search[index - 1] + ']').show();
			}
		});
	});




		$(".event_card").each(function() {
		      $(this).on("click",function() {
		      		location.href="/event_card/"+$(this).find("input.ecardNoValue").val();
		      });
	    });
    
});

