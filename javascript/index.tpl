<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我饿啦外卖|江南大学外卖|无锡外卖</title>
</head>
<body style="margin:0px; padding:0px">
<div style="width:960px;margin:0px auto;">
<img src="./images/topimg.gif"  />
<div style="float:left; width:958px; min-height:200px;">
<ul style="width:100%; margin:0px; padding:5px 0px; list-style:none; height:20px">
{section name=tag loop=$cities}
<li style="float:left;margin-right:10px"><a href="?cid={$cities[tag].id}"><font size="4" style="font-weight:bold">{$cities[tag].areaname}</font></a></li>
{/section}
</ul>

{assign var=careaid value=$cid}
{section name=row loop=$districts[$careaid]}
<div style="float:left; width:100%; padding:5px 0px; height:20px">
<b>{$districts[$careaid][row].areaname}</b>
</div>

{assign var=dareaid value=$districts[$careaid][row].id}

<ul style="width:100%;margin:0px; padding:5px 0px;height:20px; list-style:none">
{section name=mark loop=$zones[$dareaid]}
<li style="float:left;margin-right:10px"><a onclick="return setCookie('bid','{$zones[$dareaid][mark].id}','365',NULL,NULL,NULL)" href="index.php">{$zones[$dareaid][mark].areaname}</a></li>
{/section}
</ul>

{/section}

</div>
</div>
{literal}
<script language="javascript" type="text/javascript">
function setCookie(name,value,expires,path,domain,secure)
{
var expDays = expires*24*60*60*1000;
var expDate = new Date();
expDate.setTime(expDate.getTime()+expDays);
var expString = ((expires==null) ? "" : (";expires="+expDate.toGMTString()))
var pathString = ((path==null) ? "" : (";path="+path))
var domainString = ((domain==null) ? "" : (";domain="+domain))
var secureString = ((secure==true) ? ";secure" : "" )
document.cookie = name + "=" + escape(value) + expString + pathString + domainString + secureString;
}

</script>
{/literal}

</body>
</html>
