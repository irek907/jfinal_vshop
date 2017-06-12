var $_s = 0;

$(function(){
	
	// 操作订单
	$(".op").click(function(){
		if($_s != 0) return false;
		var obj = this, rel = $(obj).attr("rel");
		if(typeof(rel) == "undefined" || rel == "") return false;
		if(rel == 'shouhuo') {
			if(!confirm("确定已收货？")) return false;
		}
		$_s = 1;
		
		$.get($_r+"/vshop/orderOp", {sn:$("#sn").val(), op:rel}, function(data){
			layer.msg(data.msg);
			if(data.status == -1 || data.status == 1) {
				if(rel == "delete") history.go(-1);
				else setTimeout(function(){ window.location.reload(); }, 1000);
			}
			
			$_s = 0;
		}, "json");
	});
});