<%--
  Created by IntelliJ IDEA.
  User: Kerry
  Date: 2018/4/16
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <title>主页</title>
</head>
<body>
<s:include value="top.jsp"/>
<div class="container">
<%--轮播图--%>
    <div id="demo" class="carousel slide main" data-ride="carousel" >
        <!-- 指示符 -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <!-- 轮播图片 -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/image/7.jpg" >
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/image/5.jpg" >
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/image/6.jpg" >
            </div>
        </div>
        <!-- 左右切换按钮 -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
<%--基本信息--%>
        <div class="mainLeft">
                <div class="list-group">
                        <%--通知公告--%>
                    <h3 align="center">通知公告</h3>
                        <a href="#" class="list-group-item list-group-item-action">2018北京理工大学珠海学院汽车造型设计大赛暨中国汽车</a>
                        <a href="#" class="list-group-item list-group-item-action">关于举办“光影北理”校园摄影比赛的通知</a>
                        <a href="#" class="list-group-item list-group-item-action">关于征集首届粤嵌杯全国互联网+创新设计大赛北理工珠海</a>
                        <a href="#" class="list-group-item list-group-item-action">2018北理工珠海学院春季招聘会顺利举行</a>
                        <a href="#" class="list-group-item list-group-item-action">北理工珠海学院第三届OIE“三创杯”创意创新创业大赛启</a>
                        <%--综合新闻--%>
                    <h3 align="center">综合新闻</h3>
                        <a href="#" class="list-group-item list-group-item-action">布莱恩特学院学生会与澳门大学郑裕彤书院联谊活动精彩</a>
                        <a href="#" class="list-group-item list-group-item-action">携手接过老党旗暨《厉害了，我的国》影片溯红忆</a>
                        <a href="#" class="list-group-item list-group-item-action">中国南航在我校进行校园招聘</a>
                        <a href="#" class="list-group-item list-group-item-action">航空学院邀请民航专家研讨专业教学质量标准</a>
                        <a href="#" class="list-group-item list-group-item-action">会计与金融学院初级会计职称冲刺班第一期开班仪式</a>
                        <a href="#" class="list-group-item list-group-item-action">布莱恩特学院学生会与澳门大学郑裕彤书院联谊活动精彩</a>
                        <a href="#" class="list-group-item list-group-item-action">携手接过老党旗暨《厉害了，我的国》影片溯红忆</a>
                        <a href="#" class="list-group-item list-group-item-action">中国南航在我校进行校园招聘</a>
                        <a href="#" class="list-group-item list-group-item-action">航空学院邀请民航专家研讨专业教学质量标准</a>
                        <a href="#" class="list-group-item list-group-item-action">会计与金融学院初级会计职称冲刺班第一期开班仪式</a>
                        <a href="#" class="list-group-item list-group-item-action">布莱恩特学院学生会与澳门大学郑裕彤书院联谊活动精彩</a>
                            <%--国际暨港澳台合作--%>
                    <h3 align="center">国际暨港澳台合作</h3>
                        <a href="#" class="list-group-item list-group-item-action">美国阿什兰大学招生宣讲会在我校召开</a>
                        <a href="#" class="list-group-item list-group-item-action">2018年秋季学期英国亚伯大学商法学院2+2项目及研究生项</a>
                        <a href="#" class="list-group-item list-group-item-action">2018年英国亚伯大学语言测试通知</a>
                        <a href="#" class="list-group-item list-group-item-action">美国阿什兰大学招生宣讲会通知</a>
                        <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2018年海外暑期项目报名通知</a>
                            <%--招生信息公开--%>
                     <h3 align="center">招生信息公开</h3>
                        <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2017年本科招生章程</a>
                        <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2017年全日制普通本科招生计划</a>
                        <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2017年招生专业信息</a>
                        <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2017珠海籍学生学费优惠政策</a>
                </div>
        </div>
        <div class="mainMain">
                <div class="list-group">
                        <%--学校要闻--%>
                        <h3 align="center">学校要闻</h3>
                            <a href="#" class="list-group-item list-group-item-action">我校召开2018年校级科研项目申报暨项目结题验收评审会</a>
                            <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院志愿警察中队成立暨授旗仪式</a>
                            <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院获评“国际影响力独立学院”</a>
                            <a href="#" class="list-group-item list-group-item-action">第五届形象设计大赛——用服装来设计一场属于你的主题</a>
                            <a href="#" class="list-group-item list-group-item-action">关于征集首届粤嵌杯全国互联网+创新设计大赛北理工珠海</a>
                        <%--媒体关注--%>
                        <h3 align="center">媒体关注</h3>
                            <a href="#" class="list-group-item list-group-item-action">【珠海电视台】北理珠：大力推进创新强校战略 助力珠海</a>
                            <a href="#" class="list-group-item list-group-item-action">【珠海电视台】有“理”走遍天下 理工毕业生受欢迎</a>
                            <a href="#" class="list-group-item list-group-item-action">【羊城晚报】珠海:招聘会上和大学生活来一场告别</a>
                            <a href="#" class="list-group-item list-group-item-action">【珠海特区报】就业难？广东的理工科生们说：不存在的</a>
                            <a href="#" class="list-group-item list-group-item-action">关于征集首届粤嵌杯全国互联网+创新设计大赛北理工珠海</a>
                        <%--综合新闻--%>
                        <h3 align="center" id="zhH2">综合新闻</h3>
                            <a href="#" class="list-group-item list-group-item-action">【信息学术讲座】吴群：回顾无线电发展历程，展望电子</a>
                            <a href="#" class="list-group-item list-group-item-action">【法学学术讲座】李磊明：以体系为统领之民诉法教学方</a>
                            <a href="#" class="list-group-item list-group-item-action">关于荣誉学院成立典礼暨首届双主题国际会议的通知</a>
                            <a href="#" class="list-group-item list-group-item-action">【教研工作坊】【学术讲座】陆尚乾：从婚姻平权思辨探</a>
                            <a href="#" class="list-group-item list-group-item-action">【作品征集】“2018米兰设计周”师生优秀作品征集的通</a>
                            <%--教育培训--%>
                        <h3 align="center">教育培训</h3>
                            <a href="#" class="list-group-item list-group-item-action">会计与金融学院2018辅修/双学位专业招生宣讲会</a>
                            <a href="#" class="list-group-item list-group-item-action">北理工会计与金融学院雅思高分突破班招生简章</a>
                            <a href="#" class="list-group-item list-group-item-action">会计与金融学院2018年辅修/双学位专业面向全校招生报名</a>
                            <a href="#" class="list-group-item list-group-item-action">政府促就业 技能进校园活动--人力资源管理师（三级）报</a>
                            <a href="#" class="list-group-item list-group-item-action">微软Office高级商务应用培训课程报名通知</a>
                            <%--信息公开--%>
                        <h3 align="center">信息公开</h3>
                            <a href="#" class="list-group-item list-group-item-action">北理珠布莱恩特学院中外合作办学年度报告——自评报告</a>
                            <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2016-2017学年本科教学质量报告</a>
                            <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院信息公开2016-2017学年度工作报告</a>
                            <a href="#" class="list-group-item list-group-item-action">北京理工大学珠海学院2017年招生录取情况</a>
                </div>
        </div>
        <div class="mainRight">
                <div class="list-group">
                    <h3 align="center">学院设置</h3>
                    <a href="#" class="list-group-item list-group-item-action">信息学院</a>
                    <a href="#" class="list-group-item list-group-item-action">计算机学院</a>
                    <a href="#" class="list-group-item list-group-item-action">工业自动化学院</a>
                    <a href="#" class="list-group-item list-group-item-action">材料与环境学院</a>
                    <a href="#" class="list-group-item list-group-item-action">设计与艺术学院</a>
                    <a href="#" class="list-group-item list-group-item-action">航空学院</a>
                    <a href="#" class="list-group-item list-group-item-action">外国语学院</a>
                    <a href="#" class="list-group-item list-group-item-action">民商法律学院</a>
                    <a href="#" class="list-group-item list-group-item-action">创业学院</a>
                    <a href="#" class="list-group-item list-group-item-action">荣誉学院</a>
                    <a href="#" class="list-group-item list-group-item-action">外国语学院</a>
                    <a href="#" class="list-group-item list-group-item-action">民商法律学院</a>
                    <a href="#" class="list-group-item list-group-item-action">创业学院</a>
                    <a href="#" class="list-group-item list-group-item-action">荣誉学院</a>
                </div>
            <img src="${pageContext.request.contextPath}/image/main1.jpg" alt="">
            <img src="${pageContext.request.contextPath}/image/main2.jpg" alt="">
            <img src="${pageContext.request.contextPath}/image/main3.jpg" alt="">
            <img src="${pageContext.request.contextPath}/image/main4.jpg" alt="">

        </div>

</div>
<s:include value="foot.jsp"/>
</body>
</html>