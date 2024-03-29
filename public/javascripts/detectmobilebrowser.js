function detectMobile(ua){
  var ua = ua, os = {},
  android = ua.match(/(Android)\s+([\d.]+)/),
  iphone = ua.match(/(iPhone\sOS)\s([\d_]+)/),
  ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
  webos = ua.match(/(webOS)\/([\d.]+)/),
  blackberry = ua.match(/(BlackBerry).*Version\/([\d.]+)/);
  if (android) os.android = true, os.version = android[2];
  if (iphone) os.ios = true, os.version = iphone[2].replace(/_/g, '.'), os.iphone = true;
  if (ipad) os.ios = true, os.version = ipad[2].replace(/_/g, '.'), os.ipad = true;
  if (webos) os.webos = true, os.version = webos[2];
  if (blackberry) os.blackberry = true, os.version = blackberry[2];
  return os;
}