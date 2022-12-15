/**
 * filter.js
 */
 	
 		var chk = 'input[name='filter']:checked';
 		consol.log(chk);
 		
 		
		
		$.ajax({
      type:"post",
      url:"/board/showSubFilterResult",
	  data: chk,
      dataType: "text",
      success:function(result){ 
        $('#cardBox_event').html(result);
      },
      error:function(){
        alert("검색어를 확인해주세요.");
      }
    }); // ajax 종료
    }
 
 