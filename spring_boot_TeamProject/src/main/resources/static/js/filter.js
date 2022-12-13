/**
 * filter.js
 */
 
     var ageArr = new Array(); 

    function makeFilter(target){

        var ageVal = target.value; //check value
        var confirmCheck = target.checked; //check여부 확인
        console.log("필터 선택값 : "+ageVal);
        console.log("선택여부 : "+confirmCheck);

        if(confirmCheck == true){

            console.log("check");
            ageArr.push(ageVal); 

        }else{

            ageArr.splice(ageArr.indexOf(ageVal), 1); // check value filter 배열내용 삭제            
        }

        console.log("필터입력값 출력 : "+ageArr);

    }
 
 