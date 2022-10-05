function f_literal(){
    var result = "";

    var arr = ["사과", "배", 1, 23.4, true];
    /* for( a in arr){
        document.write(arr[a] + "<br>")
    } */

    // for(var i=0; i<arr.length; i++){
    //     result += arr[i] + "ㅎㅎ<br>";
    // }
    // document.write(result);
    // document.querySelector("#d1").innerHTML = result;
    // document.querySelector("input[type = text]").value = result;
    print(arr,'#d1');
}

function f_new(){
    var result = "";

    // alert("여기에 생성자 배열을 만들기");
    var arr2 = new Array("참외", "자두", "수박", "파인애플");
    // console.log(arr2);
    // for(var i=0; i<arr2.length; i++){
    //     result += arr2[i] + "ㅋㅋ<br>";
    // }
    // document.querySelector("input[type = text]").value = result;
    // document.querySelector("#d2").innerHTML = result;
    print(arr2,'#d2');
}

function f_new2(){
    var result = "";

    var arr3 = new Array();
    arr3[0] = "참외ㅁ";
    arr3[1] = "자두ㅁ";
    arr3[2] = "수박ㅁ";
    arr3[3] = "파인애플ㅁㅁㅁ";
    // for(var i=0; i<arr3.length; i++){
    //     result += arr3[i] + "zz<br>";
    // }
    // document.querySelector("input[type = text]").value = result;
    // document.querySelector("#d3").innerHTML = result;
    print(arr3,'#d3');
}

function print(p_arr, p_pos){
    var result = "";
    for(var i=0; i<p_arr.length; i++){
        result += p_arr[i] + "ㅇㅇ<br>";
    }
    document.querySelector(p_pos).innerHTML = result;
}
