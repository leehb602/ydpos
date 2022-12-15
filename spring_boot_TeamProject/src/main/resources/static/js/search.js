/**
 * search.js
 */


 $(document).ready(function(){
 
	$.ajax({
      type:"post",
      url:"/board/showAllResult",

      success:function(result){ 
      
        $('#cardBox_event').html(result);
      },
      error:function(){
        alert("검색어를 확인해주세요.");
      }
    }); // ajax 종료 	

 	$('#Magnifier').on('click', function(){ 	
 	event.preventDefault();
 			
    $.ajax({
      type:"post",
      url:"/board/showSearchResult",
      data: {"keyword":$('#searchBar').val()},
      dataType: "text",
      success:function(result){ 
        $('#cardBox_event').html(result);
      },
      error:function(){
        alert("검색어를 확인해주세요.");
      }
    }); // ajax 종료 	
  });// submit 종료
});

  

            
            
            
            
            
            
            