
//��ʼ��������ʽ
var re_loginname=/^[a-zA-Z]\w*$/;
var re_space=/\s/;
var re_email=/^\w*@.+\..+/;
var re_zip=/^\d{6}$/;
var re_num=/^\d+$/;
var re_float=/^\d*\.?\d+$/;

/**
 * ��֤�Ƿ��ǺϷ�������
 */
function isNum(num) {
  return (re_num.test(num));
}

/**
 * ��֤�Ƿ��ǺϷ��ĵ�¼��
 * ƥ�����
 *     �ַ������֡��»������
 *     �ַ���ͷ
 */
function isLoginName(loginName) {
  return re_loginname.test(loginName);
}

/**
 * �ж��Ƿ��ǺϷ�������
 * ƥ�����
 *     �������ո�>
 *     ����Ϊ4-20 �� ���ַ�
 */
function isPassword(password) {
  if (password == "") {
    return true;
  }
  var iLen = password.length;
  //4-10�Ĵ�
  return (!re_space.test(password) && isSpecialString(password, 4, 20));
}

/**
 * �ж��Ƿ��ǺϷ���email
 */
function isEmail(str) {
  return (re_email.test(str));
}

/**
 * �ж��Ƿ���ָ�����ȵ��ַ���
 */
function isSpecialString(str, from, to) {
  var iLen = str.length;
  var realLen = 0;

  for(var i=0;i<iLen;i++) {
    if (str.charCodeAt(i)>=126) {
      realLen += 2;
    } else {
      realLen ++;
    }
  }

  return (realLen >= from && realLen <= to);
}

function ischinese(StringName){
  var temp=true;
  for(var i=0;i<s.length;i++)
  temp=temp && (StringName.charCodeAt(i)>=10000);
  return temp
}

/**
 * �ж��Ƿ���ָ�����ȵ�����
 */
function isSpecialNum(num, from, to) {
  var from1 = from;
  if (from < 0) {
    from1 = 0;
  }
  if (isSpecialString(num, from, to)) {
    return re_num.test(num);
  } else {
    return false;
  }
}



/**
 * �ж��Ƿ���ָ�����ȵĸ�����
 * len1 �������ֳ��ȣ��������ͣ�������
 * len2 С�����ֳ��ȣ��������ͣ����ڵ�����
 * ����������Ϲ����򷵻�false
 */
//function isSpecialFloatNum(num, len1, len2) {
//  var result = re_float.test(num);

//  if (!result) {
//    return false;
//  }

//  if ((typeof(len1) != "number") || (typeof(len2) != "number")) {
//    return false;
//  }

//  if (len1<=0 || len2<0) {
//    return false;
//  }

//  if (num.indexOf(".") > 0) {
//
//  }

//  return re_float.test(num);

//}

function isSpecialFloatNum(num, len1, len2) {
  var result = re_float.test(num);

  //��������ϸ�ʽ��ֱ�ӷ���false
  if (!result) {
    return false;
  }

  if (!(typeof(len1)=="number") || !(typeof(len2)=="number")) {
    return false;
  }

  if (len1<0 || len2<0) {
    return false;
  }


  var as;
  if (num.indexOf(".") >= 0) {
    as = num.split(".");
  return (as[0].length<=len1 && as[1].length<=len2)
  } else {
    return (num.length<=len1)
  }

}

/**
 * �ж��Ƿ��ǺϷ�����������
 */
function isZip(str) {
  return re_zip.test(str);
}

/**
 * ѡ��ĳ��input
 */
function focusInput(inputName) {
  inputName.focus();
  inputName.select();
}

//for pt
function cutout(value,length) {
  var buffer = new String(value);
  var index = buffer.indexOf(".");
  var z = buffer.substring(0,index+1);
  var x = buffer.substring(index+1);
  if(x.length > length)
    x = buffer.substring(index+1,index+length+1);
  buffer = z + x;
  return buffer;
}

function Winclose(){
 window.close();
}