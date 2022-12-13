/**
 * search.js
 */


 $(document).ready(function(){
 	$('#searchBar').on('submit', function(){ 	
 	
 		event.preventDefault(); 		
 		
 		var formData = $(this).serialize();
		
		$("#cardBox_event").empty(),
		
 		$.ajax({
 			type:"post",
 			url:"search",
 			data: formData,
 			success:function(result){
 				$('#cardBox_event').html(result);
 			},
 			error:function(){
 				alert("검색어를 확인해주세요.");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});

  

            
            
            
            
            
            
            