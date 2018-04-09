  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单管理修改</title>
<meta name="keywords" content="菜单管理修改">
<meta name="description"
	content="菜单管理修改">
<link rel="shortcut icon" href="favicon.ico">
<link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
<link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
<link href="../css/layui.css" rel="stylesheet">
<base target="_blank">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal m-t" id="signupForm"
					action="../sys_menus/add.do">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称：</label>
						<div class="col-sm-4">
						<input name =menuid type ="hidden" value="${ sys_menus.menuid}"/>
							<input id="menuname" name="menuname" class="form-control"  value="${sys_menus.menuname }"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">顺序：</label>
						<div class="col-sm-4">
							<input id="orderby" name="orderby" class="form-control"
								 value="${ sys_menus.orderby}" aria-required="true" aria-invalid="true" type="text">
						</div>
					</div>
					<div class="form-group">
					
						<label class="col-sm-2 control-label">图标：</label>
						<div class="col-sm-4">
							<input id="icon" name="icon" class="form-control"
							readonly value="${ sys_menus.icon}"	type="text" aria-required="true" aria-invalid="true"
								class="valid">
						</div>
					</div>
					
					
					<div class="form-group">
							<label class="col-sm-2 control-label">描述：</label>
							<div class="col-sm-8">
								<input id="description"  value="${sys_menus.description}"	 name="description" class="form-control">
							</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-3">
							<button class="btn btn-primary" id="btnSave" type="submit">保存</button>
						</div>
						<div class="col-sm-4">
							<button class="btn btn-primary" id="btnSaveAndClose"
								type="submit">保存并关闭</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="bs-glyphicons" id="divShow" style="display:none">
                            <div class="row fontawesome-icon-list">


    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-500px"></i> 500px</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-amazon"></i> amazon</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-balance-scale"></i> balance-scale</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-battery-0"></i> battery-0 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-1"></i> battery-1 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-battery-2"></i> battery-2 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-battery-3"></i> battery-3 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-4"></i> battery-4 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-battery-empty"></i> battery-empty</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-full"></i> battery-full</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-battery-half"></i> battery-half</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-quarter"></i> battery-quarter</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-battery-three-quarters"></i> battery-three-quarters</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-black-tie"></i> black-tie</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-calendar-check-o"></i> calendar-check-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-calendar-minus-o"></i> calendar-minus-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-calendar-plus-o"></i> calendar-plus-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-calendar-times-o"></i> calendar-times-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-cc-diners-club"></i> cc-diners-club</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-cc-jcb"></i> cc-jcb</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-chrome"></i> chrome</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-clone"></i> clone</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-commenting"></i> commenting</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-commenting-o"></i> commenting-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-contao"></i> contao</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-creative-commons"></i> creative-commons</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-expeditedssl"></i> expeditedssl</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-firefox"></i> firefox</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-fonticons"></i> fonticons</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-genderless"></i> genderless</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-get-pocket"></i> get-pocket</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-gg"></i> gg</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-gg-circle"></i> gg-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-hand-grab-o"></i> hand-grab-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-lizard-o"></i> hand-lizard-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-paper-o"></i> hand-paper-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hand-peace-o"></i> hand-peace-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hand-pointer-o"></i> hand-pointer-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-hand-rock-o"></i> hand-rock-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-hand-scissors-o"></i> hand-scissors-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hand-spock-o"></i> hand-spock-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-stop-o"></i> hand-stop-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass"></i> hourglass</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hourglass-1"></i> hourglass-1 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-2"></i> hourglass-2 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-3"></i> hourglass-3 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-end"></i> hourglass-end</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-half"></i> hourglass-half</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-hourglass-o"></i> hourglass-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hourglass-start"></i> hourglass-start</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-houzz"></i> houzz</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-i-cursor"></i> i-cursor</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-industry"></i> industry</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-internet-explorer"></i> internet-explorer</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-map"></i> map</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-map-o"></i> map-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-map-pin"></i> map-pin</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-map-signs"></i> map-signs</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-mouse-pointer"></i> mouse-pointer</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-object-group"></i> object-group</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-object-ungroup"></i> object-ungroup</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-odnoklassniki"></i> odnoklassniki</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-odnoklassniki-square"></i> odnoklassniki-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-opencart"></i> opencart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-opera"></i> opera</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-optin-monster"></i> optin-monster</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-registered"></i> registered</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-safari"></i> safari</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-sticky-note"></i> sticky-note</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-sticky-note-o"></i> sticky-note-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-television"></i> television</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-trademark"></i> trademark</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-tripadvisor"></i> tripadvisor</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-tv"></i> tv <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-vimeo"></i> vimeo</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-wikipedia-w"></i> wikipedia-w</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-y-combinator"></i> y-combinator</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-yc"></i> yc <span class="text-muted">(alias)</span></a></div>
                                                                            
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-adjust"></i> adjust</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-anchor"></i> anchor</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-archive"></i> archive</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-area-chart"></i> area-chart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-arrows"></i> arrows</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-arrows-h"></i> arrows-h</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-arrows-v"></i> arrows-v</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-asterisk"></i> asterisk</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-at"></i> at</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-automobile"></i> automobile <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-balance-scale"></i> balance-scale</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-ban"></i> ban</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-bank"></i> bank <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-bar-chart"></i> bar-chart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-bar-chart-o"></i> bar-chart-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-barcode"></i> barcode</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-bars"></i> bars</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-battery-0"></i> battery-0 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-1"></i> battery-1 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-battery-2"></i> battery-2 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-battery-3"></i> battery-3 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-4"></i> battery-4 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-battery-empty"></i> battery-empty</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-full"></i> battery-full</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-battery-half"></i> battery-half</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-battery-quarter"></i> battery-quarter</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-battery-three-quarters"></i> battery-three-quarters</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bed"></i> bed</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-beer"></i> beer</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bell"></i> bell</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-bell-o"></i> bell-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-bell-slash"></i> bell-slash</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-bell-slash-o"></i> bell-slash-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-bicycle"></i> bicycle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-binoculars"></i> binoculars</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-birthday-cake"></i> birthday-cake</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bolt"></i> bolt</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-bomb"></i> bomb</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-book"></i> book</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-bookmark"></i> bookmark</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bookmark-o"></i> bookmark-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-briefcase"></i> briefcase</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bug"></i> bug</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-building"></i> building</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-building-o"></i> building-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-bullhorn"></i> bullhorn</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bullseye"></i> bullseye</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-bus"></i> bus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-cab"></i> cab <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-calculator"></i> calculator</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-calendar"></i> calendar</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-calendar-check-o"></i> calendar-check-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-calendar-minus-o"></i> calendar-minus-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-calendar-o"></i> calendar-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-calendar-plus-o"></i> calendar-plus-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-calendar-times-o"></i> calendar-times-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-camera"></i> camera</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-camera-retro"></i> camera-retro</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-car"></i> car</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-caret-square-o-down"></i> caret-square-o-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-caret-square-o-left"></i> caret-square-o-left</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-caret-square-o-right"></i> caret-square-o-right</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-caret-square-o-up"></i> caret-square-o-up</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-cart-arrow-down"></i> cart-arrow-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-cart-plus"></i> cart-plus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-cc"></i> cc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-certificate"></i> certificate</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-check"></i> check</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-check-circle"></i> check-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-check-circle-o"></i> check-circle-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-check-square"></i> check-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-check-square-o"></i> check-square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-child"></i> child</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-circle"></i> circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-circle-o"></i> circle-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-circle-o-notch"></i> circle-o-notch</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-circle-thin"></i> circle-thin</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-clock-o"></i> clock-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-clone"></i> clone</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-close"></i> close <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-cloud"></i> cloud</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-cloud-download"></i> cloud-download</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-cloud-upload"></i> cloud-upload</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-code"></i> code</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-code-fork"></i> code-fork</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-coffee"></i> coffee</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-cog"></i> cog</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-cogs"></i> cogs</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-comment"></i> comment</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-comment-o"></i> comment-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-commenting"></i> commenting</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-commenting-o"></i> commenting-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-comments"></i> comments</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-comments-o"></i> comments-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-compass"></i> compass</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-copyright"></i> copyright</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-creative-commons"></i> creative-commons</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-credit-card"></i> credit-card</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-crop"></i> crop</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-crosshairs"></i> crosshairs</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-cube"></i> cube</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-cubes"></i> cubes</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-cutlery"></i> cutlery</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-dashboard"></i> dashboard <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-database"></i> database</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-desktop"></i> desktop</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-diamond"></i> diamond</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-dot-circle-o"></i> dot-circle-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-download"></i> download</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-edit"></i> edit <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-ellipsis-h"></i> ellipsis-h</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-ellipsis-v"></i> ellipsis-v</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-envelope"></i> envelope</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-envelope-o"></i> envelope-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-envelope-square"></i> envelope-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-eraser"></i> eraser</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-exchange"></i> exchange</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-exclamation"></i> exclamation</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-exclamation-circle"></i> exclamation-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-exclamation-triangle"></i> exclamation-triangle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-external-link"></i> external-link</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-external-link-square"></i> external-link-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-eye"></i> eye</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-eye-slash"></i> eye-slash</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-eyedropper"></i> eyedropper</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-fax"></i> fax</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-feed"></i> feed <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-female"></i> female</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-fighter-jet"></i> fighter-jet</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-file-archive-o"></i> file-archive-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-file-audio-o"></i> file-audio-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-file-code-o"></i> file-code-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-file-excel-o"></i> file-excel-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-file-image-o"></i> file-image-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-file-movie-o"></i> file-movie-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-file-pdf-o"></i> file-pdf-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-file-photo-o"></i> file-photo-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-file-picture-o"></i> file-picture-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-file-powerpoint-o"></i> file-powerpoint-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-file-sound-o"></i> file-sound-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-file-video-o"></i> file-video-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-file-word-o"></i> file-word-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-file-zip-o"></i> file-zip-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-film"></i> film</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-filter"></i> filter</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-fire"></i> fire</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-fire-extinguisher"></i> fire-extinguisher</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-flag"></i> flag</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-flag-checkered"></i> flag-checkered</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-flag-o"></i> flag-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-flash"></i> flash <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-flask"></i> flask</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-folder"></i> folder</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-folder-o"></i> folder-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-folder-open"></i> folder-open</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-folder-open-o"></i> folder-open-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-frown-o"></i> frown-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-futbol-o"></i> futbol-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-gamepad"></i> gamepad</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-gavel"></i> gavel</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-gear"></i> gear <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-gears"></i> gears <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-gift"></i> gift</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-glass"></i> glass</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-globe"></i> globe</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-graduation-cap"></i> graduation-cap</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-group"></i> group <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-hand-grab-o"></i> hand-grab-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-lizard-o"></i> hand-lizard-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-paper-o"></i> hand-paper-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hand-peace-o"></i> hand-peace-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hand-pointer-o"></i> hand-pointer-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-hand-rock-o"></i> hand-rock-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-hand-scissors-o"></i> hand-scissors-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hand-spock-o"></i> hand-spock-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-hand-stop-o"></i> hand-stop-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-hdd-o"></i> hdd-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-headphones"></i> headphones</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-heart"></i> heart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-heart-o"></i> heart-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-heartbeat"></i> heartbeat</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-history"></i> history</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-home"></i> home</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-hotel"></i> hotel <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass"></i> hourglass</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hourglass-1"></i> hourglass-1 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-2"></i> hourglass-2 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-3"></i> hourglass-3 <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-end"></i> hourglass-end</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-hourglass-half"></i> hourglass-half</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-hourglass-o"></i> hourglass-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-hourglass-start"></i> hourglass-start</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-i-cursor"></i> i-cursor</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-image"></i> image <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-inbox"></i> inbox</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-industry"></i> industry</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-info"></i> info</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-info-circle"></i> info-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-institution"></i> institution <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-key"></i> key</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-keyboard-o"></i> keyboard-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-language"></i> language</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-laptop"></i> laptop</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-leaf"></i> leaf</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-legal"></i> legal <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-lemon-o"></i> lemon-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-level-down"></i> level-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-level-up"></i> level-up</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-life-bouy"></i> life-bouy <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-life-buoy"></i> life-buoy <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-life-ring"></i> life-ring</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-life-saver"></i> life-saver <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-lightbulb-o"></i> lightbulb-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-line-chart"></i> line-chart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-location-arrow"></i> location-arrow</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-lock"></i> lock</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-magic"></i> magic</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-magnet"></i> magnet</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-mail-forward"></i> mail-forward <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-mail-reply"></i> mail-reply <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-mail-reply-all"></i> mail-reply-all <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-male"></i> male</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-map"></i> map</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-map-marker"></i> map-marker</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-map-o"></i> map-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-map-pin"></i> map-pin</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-map-signs"></i> map-signs</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-meh-o"></i> meh-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-microphone"></i> microphone</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-microphone-slash"></i> microphone-slash</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-minus"></i> minus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-minus-circle"></i> minus-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-minus-square"></i> minus-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-minus-square-o"></i> minus-square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-mobile"></i> mobile</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-mobile-phone"></i> mobile-phone <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-money"></i> money</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-moon-o"></i> moon-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-mortar-board"></i> mortar-board <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-motorcycle"></i> motorcycle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-mouse-pointer"></i> mouse-pointer</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-music"></i> music</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-navicon"></i> navicon <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-newspaper-o"></i> newspaper-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-object-group"></i> object-group</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-object-ungroup"></i> object-ungroup</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-paint-brush"></i> paint-brush</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-paper-plane"></i> paper-plane</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-paper-plane-o"></i> paper-plane-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-paw"></i> paw</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-pencil"></i> pencil</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-pencil-square"></i> pencil-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-pencil-square-o"></i> pencil-square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-phone"></i> phone</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-phone-square"></i> phone-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-photo"></i> photo <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-picture-o"></i> picture-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-pie-chart"></i> pie-chart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-plane"></i> plane</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-plug"></i> plug</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-plus"></i> plus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-plus-circle"></i> plus-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-plus-square"></i> plus-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-plus-square-o"></i> plus-square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-power-off"></i> power-off</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-print"></i> print</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-puzzle-piece"></i> puzzle-piece</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-qrcode"></i> qrcode</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-question"></i> question</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-question-circle"></i> question-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-quote-left"></i> quote-left</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-quote-right"></i> quote-right</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-random"></i> random</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-recycle"></i> recycle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-refresh"></i> refresh</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-registered"></i> registered</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-remove"></i> remove <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-reorder"></i> reorder <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-reply"></i> reply</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-reply-all"></i> reply-all</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-retweet"></i> retweet</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-road"></i> road</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-rocket"></i> rocket</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-rss"></i> rss</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-rss-square"></i> rss-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-search"></i> search</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-search-minus"></i> search-minus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-search-plus"></i> search-plus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-send"></i> send <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-send-o"></i> send-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-server"></i> server</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-share"></i> share</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-share-alt"></i> share-alt</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-share-alt-square"></i> share-alt-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-share-square"></i> share-square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-share-square-o"></i> share-square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-shield"></i> shield</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-ship"></i> ship</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-shopping-cart"></i> shopping-cart</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-sign-in"></i> sign-in</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-sign-out"></i> sign-out</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-signal"></i> signal</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-sitemap"></i> sitemap</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-sliders"></i> sliders</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-smile-o"></i> smile-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-soccer-ball-o"></i> soccer-ball-o <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-sort"></i> sort</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-sort-alpha-asc"></i> sort-alpha-asc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-sort-alpha-desc"></i> sort-alpha-desc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-sort-amount-asc"></i> sort-amount-asc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-sort-amount-desc"></i> sort-amount-desc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-sort-asc"></i> sort-asc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-sort-desc"></i> sort-desc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-sort-down"></i> sort-down <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-sort-numeric-asc"></i> sort-numeric-asc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-sort-numeric-desc"></i> sort-numeric-desc</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-sort-up"></i> sort-up <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-space-shuttle"></i> space-shuttle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-spinner"></i> spinner</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-spoon"></i> spoon</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-square"></i> square</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-square-o"></i> square-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-star"></i> star</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-star-half"></i> star-half</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-star-half-empty"></i> star-half-empty <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-star-half-full"></i> star-half-full <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-star-half-o"></i> star-half-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-star-o"></i> star-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-sticky-note"></i> sticky-note</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-sticky-note-o"></i> sticky-note-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-street-view"></i> street-view</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-suitcase"></i> suitcase</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-sun-o"></i> sun-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-support"></i> support <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-tablet"></i> tablet</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-tachometer"></i> tachometer</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-tag"></i> tag</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-tags"></i> tags</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-tasks"></i> tasks</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-taxi"></i> taxi</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-television"></i> television</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-terminal"></i> terminal</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-thumb-tack"></i> thumb-tack</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-thumbs-down"></i> thumbs-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-thumbs-o-down"></i> thumbs-o-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-thumbs-o-up"></i> thumbs-o-up</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-thumbs-up"></i> thumbs-up</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-ticket"></i> ticket</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-times"></i> times</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-times-circle"></i> times-circle</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-times-circle-o"></i> times-circle-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-tint"></i> tint</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-toggle-down"></i> toggle-down <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-toggle-left"></i> toggle-left <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-toggle-off"></i> toggle-off</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-toggle-on"></i> toggle-on</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-toggle-right"></i> toggle-right <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-toggle-up"></i> toggle-up <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-trademark"></i> trademark</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-trash"></i> trash</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-trash-o"></i> trash-o</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-tree"></i> tree</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-trophy"></i> trophy</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-truck"></i> truck</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);      "><i class="fa fa-tty"></i> tty</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-tv"></i> tv <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);"><i class="fa fa-umbrella"></i> umbrella</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-university"></i> university</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-unlock"></i> unlock</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-unlock-alt"></i> unlock-alt</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-unsorted"></i> unsorted <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-upload"></i> upload</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-user"></i> user</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-user-plus"></i> user-plus</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);     "><i class="fa fa-user-secret"></i> user-secret</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-user-times"></i> user-times</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-users"></i> users</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-video-camera"></i> video-camera</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0); "><i class="fa fa-volume-down"></i> volume-down</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-volume-off"></i> volume-off</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-volume-up"></i> volume-up</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);    "><i class="fa fa-warning"></i> warning <span class="text-muted">(alias)</span></a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-wheelchair"></i> wheelchair</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);   "><i class="fa fa-wifi"></i> wifi</a></div>
                                                                            
    <div class="fa-hover col-md-3 col-sm-4"><a href="javascript:void(0);  "><i class="fa fa-wrench"></i> wrench</a></div>

</div>
                        </div>
	
	
	<script src="../js/jquery.min.js?v=2.1.4"></script>
	<script src="../js/bootstrap.min.js?v=3.3.5"></script>
	<script src="../js/content.min.js?v=1.0.0"></script>
	<script src="../js/plugins/validate/jquery.validate.min.js"></script>
	<script src="../js/plugins/validate/messages_zh.min.js"></script>
	<script src="../js/demo/form-validate-demo.min.js"></script>
	<script src="../js/jquery.form.js"></script>
    <script src="../js/plugins/toastr/toastr.min.js"></script>
		<script src="../js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
		<script src="../js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script type="text/javascript"
		src="../js/plugins/lay/layui.js" charset="UTF-8"></script>
	<script type="text/javascript">
	/*
	初始化消息提示
	*/
	toastr.options = {
			  "closeButton": true,
			  "debug": false,
			  "progressBar": false,
			  "positionClass": "toast-top-center",
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			};
	/*
	初始化表单验证控件
	*/
	$.validator.setDefaults({
	    submitHandler: function(form) {
	    	postForm(form);
	    	return false;
	    }
	});
	/*
	表单提交方法
	*/
	function postForm(form){
		$(form).ajaxSubmit({
            type: 'post', // 提交方式 get/post
            url: '../sys_menus/edit.do', // 需要提交的 url,
            success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                // 此处可对 data 作相关处理
                if(data.mst==0){
                	toastr.success(data.msg);
                	$(form).resetForm(); // 提交后重置表单
                	if(btn&&btn=="close"){
                		parent.reloadGrid()
                		setTimeout(function(){
                			$('.parent_win_closed', window.parent.document).click();
                		},1000);
                		//alert(1);
                	}
                	//setTimeout(function(){$("#frameView", window.parent.document).attr("src","");},1000);
                }else{
                	toastr.error(data.msg);
                }
            }
            
        });
	}
		/*
		是否显示改变事件
		*/
		function changeDisplay(obj) {
			if ($(obj).is(':checked')) {
				$("#display").val(1);
			} else {
				$("#display").val(0);
			}
		}
		/*
		生成表单验证并给保存并关闭按钮注册事件
		*/
		$(function() {
			$("#btnSaveAndClose").on("click", function() {
				closeWind();
			});
			$("#signupForm").validate();
			/*var check=$("#hdcheckDisplay").val();
			if(check=="1" && $("#display").is(':checked')){
				$("#example1").click();
			} if(check=="0" && $("#display").is(':checked')==false){
				$("#example1").click();
			}*/
			//$("#example1")
			$("#icon").on("click",function(){
				 layui.use('layer', function () { //独立版的layer无需执行这一句
			            var layer = layui.layer; //独立版的layer无需执行这一句
			            layer.open({
			                type: 1
			                , anim: 5
			                , isOutAnim: false
			                , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
			                , id: "divShowLayer"  //防止重复弹出
			                , content:$("#divShow")
			                , area: [700 + 'px', 400 + 'px']
			                , btnAlign: 'c' //按钮居中
			                , shade: 0 //不显示遮罩
			                // , yes: function () {
			                //     layer.closeAll();
			                // },
			                , success: function (layero, index) {
			                	 $(".fa-hover>a").on("click",function(){
				                	   var span=$(this).find("i");
				                	   $("#icon").val($(span).attr("class"));
				                	   layer.closeAll();
				                   })
			                }
			            });
			        });
			})
		});
		var btn;
		function closeWind() {
			btn="close";
		}
	</script>
</body>
</html>