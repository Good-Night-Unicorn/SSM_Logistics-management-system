<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑承运任务</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">承运任务管理</li>
                        <li class="breadcrumb-item active">编辑承运任务</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">承运任务信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa cheliang">
                                        <label>车辆信息</label>
                                        <div>
                                            <select id="cheliangSelect" name="cheliangSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>车牌</label>
                                        <input id="cheliangName" name="cheliangName" class="form-control"
                                               placeholder="车牌" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>车辆型号</label>
                                        <input id="xinghaoValue" name="xinghaoValue" class="form-control"
                                               placeholder="车辆型号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>购买时间</label>
                                        <input id="goumaiTime" name="goumaiTime" class="form-control"
                                               placeholder="购买时间" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>车辆价格</label>
                                        <input id="cheliangMoney" name="cheliangMoney" class="form-control"
                                               placeholder="车辆价格" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>生产厂家</label>
                                        <input id="cheliangChangjia" name="cheliangChangjia" class="form-control"
                                               placeholder="生产厂家" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>联系电话</label>
                                        <input id="cheliangPhone" name="cheliangPhone" class="form-control"
                                               placeholder="联系电话" readonly>
                                    </div>
                                    <div class="form-group col-md-6 cheliang">
                                        <label>联系地址</label>
                                        <input id="cheliangDizhi" name="cheliangDizhi" class="form-control"
                                               placeholder="联系地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yunshuchengben">
                                        <label>运输成本</label>
                                        <div>
                                            <select id="yunshuchengbenSelect" name="yunshuchengbenSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>承运单号</label>
                                        <input id="yunshuchengbenName" name="yunshuchengbenName" class="form-control"
                                               placeholder="承运单号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>车辆型号</label>
                                        <input id="xinghaoValue" name="xinghaoValue" class="form-control"
                                               placeholder="车辆型号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>承运时间</label>
                                        <input id="ruzhiTime" name="ruzhiTime" class="form-control"
                                               placeholder="承运时间" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>承运价格</label>
                                        <input id="yunshuchengbenMoney" name="yunshuchengbenMoney" class="form-control"
                                               placeholder="承运价格" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>承运公司</label>
                                        <input id="yunshuchengbenGongsi" name="yunshuchengbenGongsi" class="form-control"
                                               placeholder="承运公司" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>联系方式</label>
                                        <input id="yunshuchengbenPhone" name="yunshuchengbenPhone" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunshuchengben">
                                        <label>联系地址</label>
                                        <input id="yunshuchengbenDizhi" name="yunshuchengbenDizhi" class="form-control"
                                               placeholder="联系地址" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="cheliangId" name="cheliangId" type="hidden">
                                <input id="yunshuchengbenId" name="yunshuchengbenId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>承运时间</label>
                                        <input id="chengyunTime-input" name="chengyunTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>接收时间</label>
                                        <input id="jieshouTime-input" name="jieshouTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "renwu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var cheliangOptions = [];
    var yunshuchengbenOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '车辆信息'){//当前登录用户不为这个
                if($("#cheliangId") !=null){
                    var cheliangId = $("#cheliangId").val();
                    if(cheliangId == null || cheliangId =='' || cheliangId == 'null'){
                        alert("运输车辆不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '运输成本'){//当前登录用户不为这个
                if($("#yunshuchengbenId") !=null){
                    var yunshuchengbenId = $("#yunshuchengbenId").val();
                    if(yunshuchengbenId == null || yunshuchengbenId =='' || yunshuchengbenId == 'null'){
                        alert("承运单号不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("renwu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addrenwu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        <!-- 查询级联表的所有列表 -->
        function cheliangSelect() {
            //填充下拉框选项
            http("cheliang/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    cheliangOptions = res.data.list;
                }
            });
        }

        function cheliangSelectOne(id) {
            http("cheliang/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                cheliangShowImg();
                cheliangShowVideo();
                cheliangDataBind();
            }
        });
        }
        function yunshuchengbenSelect() {
            //填充下拉框选项
            http("yunshuchengben/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yunshuchengbenOptions = res.data.list;
                }
            });
        }

        function yunshuchengbenSelectOne(id) {
            http("yunshuchengben/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yunshuchengbenShowImg();
                yunshuchengbenShowVideo();
                yunshuchengbenDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationcheliangSelect() {
            var cheliangSelect = document.getElementById('cheliangSelect');
            if(cheliangSelect != null && cheliangOptions != null  && cheliangOptions.length > 0 ) {
                for (var i = 0; i < cheliangOptions.length; i++) {
                        cheliangSelect.add(new Option(cheliangOptions[i].cheliangName, cheliangOptions[i].id));
                }

                $("#cheliangSelect").change(function(e) {
                        cheliangSelectOne(e.target.value);
                });
            }

        }

        function initializationyunshuchengbenSelect() {
            var yunshuchengbenSelect = document.getElementById('yunshuchengbenSelect');
            if(yunshuchengbenSelect != null && yunshuchengbenOptions != null  && yunshuchengbenOptions.length > 0 ) {
                for (var i = 0; i < yunshuchengbenOptions.length; i++) {
                        yunshuchengbenSelect.add(new Option(yunshuchengbenOptions[i].yunshuchengbenName, yunshuchengbenOptions[i].id));
                }

                $("#yunshuchengbenSelect").change(function(e) {
                        yunshuchengbenSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var cheliangSelect = document.getElementById("cheliangSelect");
            if(cheliangSelect != null && cheliangOptions != null  && cheliangOptions.length > 0 ) {
                for (var i = 0; i < cheliangOptions.length; i++) {
                    if (cheliangOptions[i].id == ruleForm.cheliangId) {//下拉框value对比,如果一致就赋值汉字
                        cheliangSelect.options[i+1].selected = true;
                        $("#cheliangSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yunshuchengbenSelect = document.getElementById("yunshuchengbenSelect");
            if(yunshuchengbenSelect != null && yunshuchengbenOptions != null  && yunshuchengbenOptions.length > 0 ) {
                for (var i = 0; i < yunshuchengbenOptions.length; i++) {
                    if (yunshuchengbenOptions[i].id == ruleForm.yunshuchengbenId) {//下拉框value对比,如果一致就赋值汉字
                        yunshuchengbenSelect.options[i+1].selected = true;
                        $("#yunshuchengbenSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addrenwu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                cheliangId: "required",
                yunshuchengbenId: "required",
                chengyunTime: "required",
                jieshouTime: "required",
            },
            messages: {
                cheliangId: "运输车辆不能为空",
                yunshuchengbenId: "承运单号不能为空",
                chengyunTime: "承运时间不能为空",
                jieshouTime: "接收时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addrenwu = window.sessionStorage.getItem("addrenwu");
        if (addrenwu != null && addrenwu != "" && addrenwu != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("renwu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#chengyunTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#jieshouTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        cheliangDataBind();
        yunshuchengbenDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#cheliangId").val(ruleForm.cheliangId);
        $("#yunshuchengbenId").val(ruleForm.yunshuchengbenId);
        $("#chengyunTime-input").val(ruleForm.chengyunTime);
        $("#jieshouTime-input").val(ruleForm.jieshouTime);

    }
    <!--  级联表的数据回显  -->
    function cheliangDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#cheliangId").val(ruleForm.id);

        $("#cheliangName").val(ruleForm.cheliangName);
        $("#xinghaoValue").val(ruleForm.xinghaoValue);
        $("#goumaiTime").val(ruleForm.goumaiTime);
        $("#cheliangMoney").val(ruleForm.cheliangMoney);
        $("#cheliangChangjia").val(ruleForm.cheliangChangjia);
        $("#cheliangPhone").val(ruleForm.cheliangPhone);
        $("#cheliangDizhi").val(ruleForm.cheliangDizhi);
    }

    function yunshuchengbenDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yunshuchengbenId").val(ruleForm.id);

        $("#yunshuchengbenName").val(ruleForm.yunshuchengbenName);
        $("#xinghaoValue").val(ruleForm.xinghaoValue);
        $("#ruzhiTime").val(ruleForm.ruzhiTime);
        $("#yunshuchengbenMoney").val(ruleForm.yunshuchengbenMoney);
        $("#yunshuchengbenGongsi").val(ruleForm.yunshuchengbenGongsi);
        $("#yunshuchengbenPhone").val(ruleForm.yunshuchengbenPhone);
        $("#yunshuchengbenDizhi").val(ruleForm.yunshuchengbenDizhi);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        cheliangShowImg();
        yunshuchengbenShowImg();
    }


    <!--  级联表的图片  -->

    function cheliangShowImg() {
    }


    function yunshuchengbenShowImg() {
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        cheliangShowVideo();
        yunshuchengbenShowVideo();
    }


    <!--  级联表的视频  -->

    function cheliangShowVideo() {
    }

    function yunshuchengbenShowVideo() {
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            cheliangSelect();
            yunshuchengbenSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationcheliangSelect();
            initializationyunshuchengbenSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addrenwu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyContentUeditor = UE.getEditor('replyContentEditor');
            // replyContentUeditor.ready(function () {
            //     replyContentUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>