function checkId(){
    var uid = $("#id").val();
    console.log(uid);
    if(uid.length<0 || uid ==""){
        $("#nameError").html("*请输入账号！");
        $("#nameError").css("color","red");
    }
}

function checkPass(){
    var pass = $("#pass").val();
    console.log(pass);
    if(pass.length<0 || pass ==""){
        $("#passError").html("*请输入密码！");
        $("#passError").css("color","red");
    }
}