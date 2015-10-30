<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	<head>
    	<base href="<%=basePath%>">
    
    	<title>My JSP 'test.jsp' starting page</title>
    
		<link rel="shortcut icon" href="imgs/A-Blog.ico"/>
	   	<link rel="bookmark" href="imgs/A-Blog.ico"/>
	    <link rel="stylesheet" href="css/site.min.css">
	    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
	    <link rel="stylesheet" href="css/wsg.css" type="text/css"></link>
	
  	</head>  
	<body >
   		<div id="learn-more" class="desc container">
        <div class="desc__introduces">
          <h3>那年的春天特别短暂 . . .</h3>
          <p>时间很短可是我们却留下了不可磨灭的回忆。 <a href="http://user.qzone.qq.com/1604683124/main" target="_blank" rel="external nofollow">Personal space</a>.</p>
        </div>
        <div class="desc__features">
          <div class="row">
            <div class="col-md-8">
              <div class="features__photo" style="background-color: red;"></div>
              <h4>北京奥林匹克森林公园</h4>
              <p>景色很优美，树木茂盛，而且植被覆盖率也很高。我觉得北园比南园更安静，但南园比北园更好玩，对于本地人是...</p>
            </div>
             <div class="col-md-4">
              <div class="features__photo"><img src="imgs/bjslgyyq1.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>金鱼池</h4>
              <p>在人类文明史上，中国金鱼已陪伴着人类生活了十几个世纪，是世界观赏鱼史上最早的品种。金鱼易于饲养，它身姿奇异，色彩绚丽...</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/bjslgyyq2.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>观光旅者</h4>
              <p>记忆中总能留下一个不能忘记的路人，不知何时我还能再相见...</p>
            </div>
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/ymy_wsg.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>圆明园</h4>
              <p>有一天，两个强盗闯进了圆明园，一个大肆掠夺，另一个纵火焚烧，这两个强盗一个叫法兰西（法国），一个叫英格兰（英国）...</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/bd_wsg1.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>百度前景</h4>
              <p>全球最大的中文搜索引擎、致力于让网民更便捷地获取信息，找到所求。百度超过千亿的中文网页数据库，可以瞬间找到相关的搜索结果...</p>
            </div>
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/bd_wsg2.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>中关村</h4>
              <p>中关村是国家自主创新示范区，高科技产业中心，起源于二十世纪八十年代初的“中关村电子一条街”；1988年5月，国务院批准成立...</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/qhy_wsg.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>清华园 & “四爷园”</h4>
              <p>清朝道光二年（1822年），熙春园分为东西两园，工字厅以西部分称近春园，以东称清华园，清华园赐五皇子奕综，近春园四皇子赐奕詝...</p>
            </div>
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/rmyxjnb_wsg.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>人民英雄纪念碑</h4>
              <p>1949年9月30日，中国人民政治协商会议第一届全体会议决定，为了纪念在人民解放战争和人民革命中牺牲的人民英雄，在首都北京建立...</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/yhy1.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>昆明湖</h4>
              <p>余晖洒在波光粼粼的湖面上,每当一排排波浪涌起的时候,那映照在浪峰上的霞光泛起了层层涟漪,折射着殷红的霞光,像撒下一河红色的玛瑙,熠熠生辉...</p>
            </div>
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/yhy2.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>十七孔桥</h4>
              <p>十七孔桥是古代汉族桥梁建筑的杰作。它位于北京市西郊颐和园内，是连接昆明湖东岸与南湖岛的一座长桥。清乾隆时（1736一1795）建...</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-1">
              <div class="features__photo"><img src="imgs/yhy3.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>颐和园</h4>
              <p>颐和园，北京市古代皇家园林，前身为清漪园，坐落在北京西郊，距城区十五公里，占地约二百九十公顷，与圆明园毗邻。以昆明湖、万寿山...</p>
            </div>
            <div class="col-md-6">
              <div class="features__photo"><img src="imgs/zgxxh.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>第一场雨</h4>
              <p>2015年中原工学院西区小西湖，蒙蒙的小雨拍打着我的衣襟，仿佛自己又回到了儿时...</p>
            </div>
          </div>
        </div>
        <div class="desc__introduces">
          <h3>个人经历</h3>
          <p>参与过的项目，曾担任某些项目的主要研发，以及上线调试。多次获得省级竞赛嘉奖。</p>
          <div class="photo--responsive"><img src="imgs/datu.jpg" /></div>
        </div>
      </div>
      
      <div id="learn-more" class="desc container">
      <div class="desc__features">
      <div class="row">
            <div class="col-md-8">
              <div class="features__photo" style="background-color: red;"></div>
              <h4>北京奥林匹克森林公园</h4>
              <p>景色很优美，树木茂盛，而且植被覆盖率也很高。我觉得北园比南园更安静，但南园比北园更好玩，对于本地人是...</p>
            </div>
             <div class="col-md-4">
              <div class="features__photo"><img src="imgs/bjslgyyq1.jpg" style="width: 240px; height: 210px;"/></div>
              <h4>金鱼池</h4>
              <p>在人类文明史上，中国金鱼已陪伴着人类生活了十几个世纪，是世界观赏鱼史上最早的品种。金鱼易于饲养，它身姿奇异，色彩绚丽...</p>
            </div>
          </div>
      </div>
      </div>
   	</body>
</html>
