<%--
  Created by IntelliJ nameEA.
  User: protecting
  Date: 19-3-21
  Time: 上午9:47
  To change this template use File | Settings | File Templates.
--%>
<%--主界面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%--标签页头像1.ico--%>
  <link rel="shortcut icon" href="img/1.ico" />
  <title>Defend</title>
  <meta charset="UTF-8">
  <!-- jquery -->
  <script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
  <!-- bootstrap -->
  <link href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript"></script>
  <!-- bootstrap-select -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
  <script>
      function judge() {
          var age = document.getElementByname("age").value;
          if(age>78 || age<18){
              alert("年龄不符合");
              //年龄不符合直接退到登录界面
              window.opener = null;
              window.open("", '_self');
              window.location.href = "login.jsp";
          }
      }
  </script>
  <style>
    /*让body居中*/
    body{
      background:url(img/2.jpg)  no-repeat center center;
      background-size:cover;
      background-attachment:fixed;
      background-color:#CCCCCC;
      margin: 0 auto;
      text-align: center;
      width: 50%;
    }
    /*标题居中*/
    h1{
      text-align: center;
    }
    div.question-content{
      text-align: left;
      background: ghostwhite;
    }
    /*使body内容向左对齐*/
    div.input-text{width: 15%;}      /*下拉框大小*/
  </style>
</head>

<body>
<h1>志愿者与志愿服务活动调查报告</h1>
<p class="lead">亲爱的朋友们:您好！为进一步促进志愿服务活动的质量与水平，我们希望通过问卷调查的形式了解广大人群对志愿者及其活动的看法和意见。每一份问卷对我们都是一种回馈，希望您根据自己的实际情况填写，谢谢！</p>
<HR align="center" width="100%" color="#987cb9" size="1">
<div class="question-content">
<form action="test.jsp" method="post">
  <div class="question-title0">0.请问你的学校是</div>
  <div class="input-text">
  <input type="hidden" name="schoolNames">
    <select name="schoolName" class="selectpicker show-tick form-control" data-live-search="true">
      <option>华南师范大学</option>
      <option>中山大学</option>
      <option>暨南大学</option>
      <option>湛江师范学院</option>
      <option>肇庆学院</option>
      <option>广东技术师范</option>
      <option>深圳大学</option>
      <option>广东财经大学</option>
      <option>广州大学</option>
      <option>肇庆学院</option>
      <option>广东警官学院</option>
      <option>社会人士</option>
    </select>
  </div>
  <div class="question-title1">1.请问你的年龄是</div>
  <div class="input-text" onchange="judge()">
    <input id="age" class="text1" name="age">
  </div>
  <div class="question-title2">2.请问您的性别是</div>
  <div class="question-option" name="choice2">
    <input name="sex" type="radio" value="男"> <label>男</label> <br>
    <input name="sex" type="radio" value="女"> <label>女</label>
  </div>
  <div class="question-title3">3.您有过做志愿者的想法吗</div>
  <div class="question-option" name="choice3">
    <input name="have" type="radio" value="有过"> <label>有过</label> <br>
    <input name="have" type="radio" value="没有过"> <label>没有过</label>
  </div>
  <div class="question-title4">4.您参与过志愿服务吗</div>
  <div class="question-option" name="choice4">
    <input name="have1" type="radio" value="有参与过"> <label>有参与过</label> <br>
    <input name="have1" type="radio" value="没有参与过"> <label>没有参与过</label>
  </div>
  <div class="question-title5">5.您所在的城市是</div>
  <div class="question-option" name="choice5">
    <input name="location" type="radio" value="一线城市"> <label>一线城市</label> <br>
    <input name="location" type="radio" value="二线城市"> <label>二线城市</label> <br>
    <input name="location" type="radio" value="三线城市（除一二线外的城市）"> <label>三线城市（除一二线外的城市）</label>
  </div>
  <div class="question-title6">6.您做志愿者的原因是（多选）</div>
  <div class="question-option">
  <input type="hidden" name="reasons" id="6">
    <input name="reason" type="checkbox" value="想做些贡献"> <label>想做些贡献</label> <br>
    <input name="reason" type="checkbox" value="想获得一些志愿者的体验"> <label> 想获得一些志愿者的体验</label> <br>
    <input name="reason" type="checkbox" value="喜欢当志愿者的感受"> <label>喜欢当志愿者的感受</label> <br>
    <input name="reason" type="checkbox" value="觉得志愿者光荣"> <label>觉得志愿者光荣</label> <br>
    <input name="reason" type="checkbox" value="当时比较有时间"> <label>当时比较有时间</label>
  </div>
  <div class="question-title7">7.您没有想过去做志愿者的原因有哪些（多选）</div>
  <div class="question-option" name="choice7">
      <input type="hidden" name="reason1s" id="7">
    <input name="reason1" type="checkbox" value="找不到合适的组织"> <label>找不到合适的组织</label> <br>
    <input name="reason1" type="checkbox" value="没有时间去做志愿者"> <label>没有时间去做志愿者</label> <br>
    <input name="reason1" type="checkbox" value="没有适合自己的项目"> <label>没有适合自己的项目</label> <br>
    <input name="reason1" type="checkbox" value="不知道哪需要志愿者"> <label>不知道哪需要志愿者</label> <br>
    <input name="reason1" type="checkbox" value="不符合志愿者的要求"> <label>不符合志愿者的要求</label> <br>
    <input name="reason1" type="checkbox" value="没关注过志愿者"> <label>没关注过志愿者</label> <br>
    <input name="reason1" type="checkbox" value="没有时间去做志愿者"> <label>没有时间去做志愿者</label> <br>
    <input name="reason1" type="checkbox" value="对其没有什么兴趣"> <label>对其没有什么兴趣</label> <br>
    <input name="reason1" type="checkbox" value="有可能会带来很多麻烦"> <label>有可能会带来很多麻烦</label>
  </div>
  <div class="question-title8">8.您认为志愿者是一个什么样的人（多选）</div>
  <div class="question-option" name="choice8">
      <input type="hidden" name="thinkings" id="8">
    <input name="thinking" type="checkbox" value="身体力行，尽力去帮助有需要的人"> <label>身体力行，尽力去帮助有需要的人</label> <br>
    <input name="thinking" type="checkbox" value="把服务当做无聊消遣的人"> <label>把服务当做无聊消遣的人</label> <br>
    <input name="thinking" type="checkbox" value="爱心澎湃的人"> <label> 爱心澎湃的人</label> <br>
    <input name="thinking" type="checkbox" value="免费的劳动力"> <label>免费的劳动力</label> <br>
    <input name="thinking" type="checkbox" value="其他"> <label>其他</label>
  </div>
  <div class="question-title9">9.您是怎样看待志愿服务事业的（多选）</div>
  <div class="question-option" name="choice9">
      <input type="hidden" name="treats" id="9">
    <input name="" type="checkbox" value="公民的一种责任"> <label>公民的一种责任</label> <br>
    <input name="treat" type="checkbox" value="纯粹做宣传"> <label>纯粹做宣传</label> <br>
    <input name="treat" type="checkbox" value="促进社会进步的公益事业"> <label>促进社会进步的公益事业</label> <br>
    <input name="treat" type="checkbox" value="给人们创建一个奉献的平台"> <label>给人们创建一个奉献的平台</label> <br>
    <input name="treat" type="checkbox" value="倡导互助精神和志愿者精神"> <label>倡导互助精神和志愿者精神</label> <br>
    <input name="treat" type="checkbox" value="不知道"> <label>不知道</label> <br>
    <input name="treat" type="checkbox" value="其他"> <label>其他</label>
  </div>
  <div class="question-title10">10.您愿意做哪方面的志愿者（多选）</div>
  <div class="question-option" name="choice10">
      <input type="hidden" name="dos" id="10">
    <input name="do" type="checkbox" value="服务于保护自然"> <label>服务于保护自然</label> <br>
    <input name="do" type="checkbox" value="服务于社区文明"> <label>服务于社区文明</label> <br>
    <input name="do" type="checkbox" value="服务于保护动物"> <label>服务于保护动物</label> <br>
    <input name="do" type="checkbox" value="服务于贫穷家庭"> <label>服务于贫穷家庭</label> <br>
    <input name="do" type="checkbox" value="服务于老年人"> <label>服务于老年人</label> <br>
    <input name="do" type="checkbox" value="服务于学生"> <label>服务于学生</label> <br>
    <input name="do" type="checkbox" value="服务于残疾人"> <label>服务于残疾人</label> <br>
    <input name="do" type="checkbox" value="服务于边远山区"> <label>服务于边远山区</label> <br>
    <input name="do" type="checkbox" value="哪里需要哪里就有我"> <label>哪里需要哪里就有我</label>
  </div>
  <div class="question-title11">11.您是否了解有哪些渠道可以做志愿者工作</div>
  <div class="question-option" name="choice11">
    <input name="know" type="radio" value="不太了解"> <label>不太了解</label> <br>
    <input name="know" type="radio" value="比较了解"> <label>比较了解</label>
  </div>
  <div class="question-title12">12.您觉得在参与过程中，自己的心理感受是</div>
  <div class="question-option" name="choice12">
    <input name="feeling" type="radio" value="总是非常快乐"> <label>总是非常快乐</label> <br>
    <input name="feeling" type="radio" value="大多数很快乐"> <label>大多数很快乐</label> <br>
    <input name="feeling" type="radio" value="总是不快乐"> <label>总是不快乐</label> <br>
    <input name="feeling" type="radio" value="很累而且很无聊"> <label>很累而且很无聊</label> <br>
    <input name="feeling" type="radio" value="感受复杂，说不清"> <label>感受复杂，说不清</label> <br>
    <input name="feeling" type="radio" value="没参加过，不知道"> <label>没参加过，不知道</label>
  </div>
  <div class="question-title13">13.对于目前志愿者服务的现状您有什么评价（多选）</div>
  <div class="question-option" name="choice13">
      <input type="hidden" name="evaluations" id="13">
    <input name="evaluation" type="checkbox" value="参与的人群还比较少"> <label>参与的人群还比较少</label> <br>
    <input name="evaluation" type="checkbox" value="参与的渠道不够方便"> <label>参与的渠道不够方便</label> <br>
    <input name="evaluation" type="checkbox" value="很多地方还需要志愿者"> <label>很多地方还需要志愿者</label> <br>
    <input name="evaluation" type="checkbox" value="缺少各方面的支持"> <label>缺少各方面的支持</label> <br>
    <input name="evaluation" type="checkbox" value="了解和理解的人不多"> <label>了解和理解的人不多</label> <br>
    <input name="evaluation" type="checkbox" value="志愿者服务的质量不高居于形式"> <label>志愿者服务的质量不高居于形式</label> <br>
    <input name="evaluation" type="checkbox" value="收到社会效益不大"> <label>收到社会效益不大</label> <br>
    <input name="evaluation" type="checkbox" value="没参加过，不知道"> <label>没参加过，不知道</label>
  </div>
  <div style="align-content: center">
    <input type="submit" value="提交" onclick="getSelectCheckbox()">
  </div>
</form>
    <%--获取多选问卷答案，整合--%>
    <script>
        function getSelectCheckbox() {
            getReason();
            getReason1();
            getDo();
            getEvaluation();
            getThinking();
            getTreat();

        }
        function getReason() {
            var checkObj = document.getElementsByName("reason");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("6").value = likestr;
        }
        function getReason1() {
            var checkObj = document.getElementsByName("reason1");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("7").value = likestr;
        }
        function getThinking() {
            var checkObj = document.getElementsByName("thinking");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("8").value = likestr;
        }
        function getTreat() {
            var checkObj = document.getElementsByName("treat");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("9").value = likestr;
        }
        function getDo() {
            var checkObj = document.getElementsByName("do");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("10").value = likestr;
        }
        function getEvaluation() {
            var checkObj = document.getElementsByName("evaluation");
            var likestr = "";

            for(var i=0; i<checkObj.length; i++){
                if(checkObj[i].checked == true){
                    likestr += checkObj[i].value + ",";
                }
            }
            likestr = likestr.substring(0, likestr.length-1);
            document.getElementById("13").value = likestr;
        }
    </script>
</div>
</body>
</html>