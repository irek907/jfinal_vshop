$(function() {
    var a = $(".pay_content");
    var b = function() {
        var d = function() {
            var z = $(this);
            var w = /^[1-9]{1}\d{0,6}$/;
            var u;
            var x = function() {
                y = z.val();
                if (w.test(y)) {
                    u = parseInt(y);
					i(z , u);
                } else { 
                    alert("只能输正整数哦");
                    z.val('1'); 
					i(z , '1');
                }
					zongji(z);
                setTimeout(x, 200)
            };
            x()
        };
        var l = function() {
            var q = $(this);
            if (q.val() == "") {
                q.val('1');
            }
        };
        var k = function(w, v) { 
            var t = parseInt(v.val()) + w; 
            if (t > 0) {
                i(v, t);
                v.val(t);
				zongji(v);
                //m()
            }
        };
		var zongji = function(v){
			var zongji = parseFloat($('.u-Cart-r .gray9 .orange').html().replace('￥','')) * v.val();  
			var zongji2 = toDecimal2(zongji);
			$('.pay_bottom .orange').html('￥'+zongji2+'元');
		};
        var m = function() {
            var r = 0;
            $("input:text[name=num]", a).each(function(s) {
                var t = parseInt($(this).val());
                if (!isNaN(t)) {
                    r++;
                }
            });
        };
        var i = function(r, t) {
            var q = r.prev();
            var u = r.next();
            if (t == 1) {
                q.addClass("z-jiandis");
                u.removeClass("z-jiadis")
            } else {
                q.removeClass("z-jiandis");
                u.removeClass("z-jiadis")
            }
        };
        $("input:text[name=num]", a).each(function(q) {
            var r = $(this);
            r.bind("focus", d).bind("blur", l);
            r.prev().bind("click",
            function() {
                k( - 1, r)
            });
            r.next().bind("click",
            function() {
                k(1, r)
            })
        });
    };
    b();
});
function toDecimal2(x) {  
        var f = parseFloat(x);    
        if (isNaN(f)) {    
            return false;    
        }    
        var f = Math.round(x*100)/100;    
        var s = f.toString();    
        var rs = s.indexOf('.');    
        if (rs < 0) {    
            rs = s.length;    
            s += '.';    
        }    
        while (s.length <= rs + 2) {    
            s += '0';    
        }    
         return s; 
    }     