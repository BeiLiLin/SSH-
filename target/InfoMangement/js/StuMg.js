$(
    function (){
        $.post("http://localhost:8080//sAjax/Stu_findAll.action")
    }


)
function updateOne(id){
    console.log(id);
    //获取所有改变的数据
    var name = $("#"+id+"name").val();
    var sex = $("#"+id+"sex").val();
    var address = $("#"+id+"address").val();
    var tele = $("#"+id+"tele").val();
    //创建一个json对象
    var Student={
        "Student.Sid":id,
        "Student.SName":name,
        "Student.sex":sex,
        "Student.address":address,
        "Student.tele":tele
    };
    $.post("http://localhost:8080/sAjax/Stu_update.action",Student,function (data, statusText) {
        var obj = $.parseJSON(data);
        var result = obj.result;
        if($.trim(result) == $.trim("false")){
            console.log("没有改动信息！");
            alert("没有改动信息！");
        }else if($.trim(result) == $.trim("success")){
            console.log("更改成功！");
            alert("更改成功！");
        }else{
            console.log("更改失败！");
            alert("更改失败！");
        }
    },"html");
}
function deleteOne(id){
    //删除数据库的数据
   var sid = $("#"+id+"id").val();
    var Student= {
        "Student.sid":sid
    }
    console.log(Student);
    $.post("http://localhost:8080/sAjax/Stu_delete.action",Student,function(data,statusText){
       var obj = $.parseJSON(data);
       var result = obj.result;
       console.log(result);
    },"html");
    //删除表中该行
     $("#"+id+"tr").remove();
}

function deleteAll(){
    var str="";
    var count=0;
    // $("table input[type=checkbox]").attr("checked",false);
    $("table input[type=checkbox]").each(function(){
        if($(this).is(":checked")==true){
            count++;
            var sid = $(this).attr("id");
            str += sid+",";
            $("#"+sid+"tr").remove();
        }
    });
    if (count ==0){
        alert("未选中数据");
    }
    var Obj ={
        "str":str
    };
    $.post("http://localhost:8080/sAjax/Stu_deleteAll.action",Obj,function (data, statusText) {
        var result = data.result;
        console.log(result);
    },"json");
}
function selectAll(){
    $(".table input[type=checkbox]").attr("checked",true);
}

function cancleAll(){
    $(".table input[type=checkbox]").attr("checked",false);
}


function add(){
    var sid = $("#sid").val();
    var name = $("#name").val();
    var sex = $("#sex").val();
    var address = $("#address").val();
    var tele = $("#tele").val();
    var Student ={
        "student.Sid":sid,
        "student.SName":name,
        "student.sex":sex,
        "student.address":address,
        "student.tele":tele
    };
    console.log(Student);
    $.post("http://localhost:8080/sAjax/Stu_add.action",Student,function (data, statusText) {
        var result = data.result;
        console.log(result);
        if($.trim(result)=="success"){
            alert("添加成功！")
        }else if ( $.trim(result)=="Sid重复"){
            alert("Sid重复！")
        }else{
            alert("添加失败")
        }
    })
}