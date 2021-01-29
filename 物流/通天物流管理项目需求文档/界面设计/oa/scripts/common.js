
//初始化正则表达式
var re_loginname=/^[a-zA-Z]\w*$/;
var re_space=/\s/;
var re_email=/^\w*@.+\..+/;
var re_zip=/^\d{6}$/;
var re_num=/^\d+$/;
var re_float=/^\d*\.?\d+$/;

/**
 * 验证是否是合法的数字
 */
function isNum(num) {
  return (re_num.test(num));
}

/**
 * 验证是否是合法的登录名
 * 匹配规则：
 *     字符、数字、下划线组成
 *     字符开头
 */
function isLoginName(loginName) {
  return re_loginname.test(loginName);
}

/**
 * 判断是否是合法的密码
 * 匹配规则：
 *     不包含空格>
 *     长度为4-20 或 空字符
 */
function isPassword(password) {
  if (password == "") {
    return true;
  }
  var iLen = password.length;
  //4-10的串
  return (!re_space.test(password) && isSpecialString(password, 4, 20));
}

/**
 * 判断是否是合法的email
 */
function isEmail(str) {
  return (re_email.test(str));
}

/**
 * 判断是否是指定长度的字符串
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
 * 判断是否是指定长度的整数
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
 * 判断是否是指定长度的浮点数
 * len1 整数部分长度，数字类型，大于零
 * len2 小数部分长度，数字类型，大于等于零
 * 如果，不符合规则，则返回false
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

  //如果不符合格式则直接返回false
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
 * 判断是否是合法的邮政编码
 */
function isZip(str) {
  return re_zip.test(str);
}

/**
 * 选中某个input
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