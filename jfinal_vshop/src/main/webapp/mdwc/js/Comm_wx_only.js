//�ж��Ƿ�΢�Ŵ�
var browser = {
    versions: function () {
        var u = navigator.userAgent, app = navigator.appVersion;
        return {         //�ƶ��ն�������汾��Ϣ
            trident: u.indexOf('Trident') > -1, //IE�ں�
            presto: u.indexOf('Presto') > -1, //opera�ں�
            webKit: u.indexOf('AppleWebKit') > -1, //ƻ�����ȸ��ں�
            gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //����ں�
            mobile: !!u.match(/AppleWebKit.*Mobile.*/), //�Ƿ�Ϊ�ƶ��ն�
            ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios�ն�
            android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android�ն˻�uc�����
            iPhone: u.indexOf('iPhone') > -1, //�Ƿ�ΪiPhone����QQHD�����
            iPad: u.indexOf('iPad') > -1, //�Ƿ�iPad
            webApp: u.indexOf('Safari') == -1 //�Ƿ�webӦ�ó���û��ͷ����ײ�
        };
    }(),
    language: (navigator.browserLanguage || navigator.language).toLowerCase()
} 
        var ua = navigator.userAgent.toLowerCase();//��ȡ�ж��õĶ��� 
        if (ua.match(/MicroMessenger/i) == "micromessenger") { 
                //��΢���д�
        }else{
			//alert('���ע����΢�Ź��ں�,��΢�Ŵ�~');
			//location.href = 'wx_only.html';
			}
        /*if (ua.match(/WeiBo/i) == "weibo") {
			alert('΢����');
                //������΢���ͻ��˴�
        }
        if (ua.match(/QQ/i) == "qq") {
			alert('qzone��');
                //��QQ�ռ��
        }
        if (browser.versions.ios) {
			alert('ios�������');
                //�Ƿ���IOS�������
        } 
        if(browser.versions.android){
			alert('��׿�������');
                //�Ƿ��ڰ�׿�������
        }*/