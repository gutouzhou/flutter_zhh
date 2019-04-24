import 'dart:convert' show json;

class InitTree {

  Object adv_list;
  Object borrow_list;
  Object deal_types;
  int status;
  bool has_user_name;
  bool is_logined;
  String msg;
  String user_name;
  List<String> start_ads;
  ContractInfo contact_info;
  GuidePage guide_page;
  Version version;

  InitTree.fromParams({this.adv_list, this.borrow_list, this.deal_types, this.status, this.has_user_name, this.is_logined, this.msg, this.user_name, this.start_ads, this.contact_info, this.guide_page, this.version});

  factory InitTree(jsonStr) => jsonStr == null ? null : jsonStr is String ? new InitTree.fromJson(json.decode(jsonStr)) : new InitTree.fromJson(jsonStr);

  InitTree.fromJson(jsonRes) {
    adv_list = jsonRes['adv_list'];
    borrow_list = jsonRes['borrow_list'];
    deal_types = jsonRes['deal_types'];
    status = jsonRes['status'];
    has_user_name = jsonRes['has_user_name'];
    is_logined = jsonRes['is_logined'];
    msg = jsonRes['msg'];
    user_name = jsonRes['user_name'];
    start_ads = jsonRes['start_ads'] == null ? null : [];

    for (var start_adsItem in start_ads == null ? [] : jsonRes['start_ads']){
      start_ads.add(start_adsItem);
    }

    contact_info = jsonRes['contact_info'] == null ? null : new ContractInfo.fromJson(jsonRes['contact_info']);
    guide_page = jsonRes['guide_page'] == null ? null : new GuidePage.fromJson(jsonRes['guide_page']);
    version = jsonRes['version'] == null ? null : new Version.fromJson(jsonRes['version']);
  }

  @override
  String toString() {
    return '{"adv_list": $adv_list,"borrow_list": $borrow_list,"deal_types": $deal_types,"status": $status,"has_user_name": $has_user_name,"is_logined": $is_logined,"msg": ${msg != null?'${json.encode(msg)}':'null'},"user_name": ${user_name != null?'${json.encode(user_name)}':'null'},"start_ads": $start_ads,"contact_info": $contact_info,"guide_page": $guide_page,"version": $version}';
  }
}

class Version {

  AndroidBean Android;
  AppleBean Apple;

  Version.fromParams({this.Android, this.Apple});

  Version.fromJson(jsonRes) {
    Android = jsonRes['Android'] == null ? null : new AndroidBean.fromJson(jsonRes['Android']);
    Apple = jsonRes['Apple'] == null ? null : new AppleBean.fromJson(jsonRes['Apple']);
  }

  @override
  String toString() {
    return '{"Android": $Android,"Apple": $Apple}';
  }
}

class AppleBean {

  String download_url;
  String forced_upgrade;
  String lastest_version;
  String upgrade_msg;
  List<String> info;

  AppleBean.fromParams({this.download_url, this.forced_upgrade, this.lastest_version, this.upgrade_msg, this.info});

  AppleBean.fromJson(jsonRes) {
    download_url = jsonRes['download_url'];
    forced_upgrade = jsonRes['forced_upgrade'];
    lastest_version = jsonRes['lastest_version'];
    upgrade_msg = jsonRes['upgrade_msg'];
    info = jsonRes['info'] == null ? null : [];

    for (var infoItem in info == null ? [] : jsonRes['info']){
      info.add(infoItem);
    }
  }

  @override
  String toString() {
    return '{"download_url": ${download_url != null?'${json.encode(download_url)}':'null'},"forced_upgrade": ${forced_upgrade != null?'${json.encode(forced_upgrade)}':'null'},"lastest_version": ${lastest_version != null?'${json.encode(lastest_version)}':'null'},"upgrade_msg": ${upgrade_msg != null?'${json.encode(upgrade_msg)}':'null'},"info": $info}';
  }
}

class AndroidBean {

  String download_url;
  String forced_upgrade;
  String lastest_version;
  String upgrade_msg;
  List<String> info;

  AndroidBean.fromParams({this.download_url, this.forced_upgrade, this.lastest_version, this.upgrade_msg, this.info});

  AndroidBean.fromJson(jsonRes) {
    download_url = jsonRes['download_url'];
    forced_upgrade = jsonRes['forced_upgrade'];
    lastest_version = jsonRes['lastest_version'];
    upgrade_msg = jsonRes['upgrade_msg'];
    info = jsonRes['info'] == null ? null : [];

    for (var infoItem in info == null ? [] : jsonRes['info']){
      info.add(infoItem);
    }
  }

  @override
  String toString() {
    return '{"download_url": ${download_url != null?'${json.encode(download_url)}':'null'},"forced_upgrade": ${forced_upgrade != null?'${json.encode(forced_upgrade)}':'null'},"lastest_version": ${lastest_version != null?'${json.encode(lastest_version)}':'null'},"upgrade_msg": ${upgrade_msg != null?'${json.encode(upgrade_msg)}':'null'},"info": $info}';
  }
}

class GuidePage {

  String button_bg;
  String update_time;
  List<DataBean> data;

  GuidePage.fromParams({this.button_bg, this.update_time, this.data});

  GuidePage.fromJson(jsonRes) {
    button_bg = jsonRes['button_bg'];
    update_time = jsonRes['update_time'];
    data = jsonRes['data'] == null ? null : [];

    for (var dataItem in data == null ? [] : jsonRes['data']){
      data.add(dataItem == null ? null : new DataBean.fromJson(dataItem));
    }
  }

  @override
  String toString() {
    return '{"button_bg": ${button_bg != null?'${json.encode(button_bg)}':'null'},"update_time": ${update_time != null?'${json.encode(update_time)}':'null'},"data": $data}';
  }
}

class DataBean {

  String background;
  String background_color;
  String icon;

  DataBean.fromParams({this.background, this.background_color, this.icon});

  DataBean.fromJson(jsonRes) {
    background = jsonRes['background'];
    background_color = jsonRes['background_color'];
    icon = jsonRes['icon'];
  }

  @override
  String toString() {
    return '{"background": ${background != null?'${json.encode(background)}':'null'},"background_color": ${background_color != null?'${json.encode(background_color)}':'null'},"icon": ${icon != null?'${json.encode(icon)}':'null'}}';
  }
}

class ContractInfo {

  String service_phone;
  String service_time;
  String service_weixin;

  ContractInfo.fromParams({this.service_phone, this.service_time, this.service_weixin});

  ContractInfo.fromJson(jsonRes) {
    service_phone = jsonRes['service_phone'];
    service_time = jsonRes['service_time'];
    service_weixin = jsonRes['service_weixin'];
  }

  @override
  String toString() {
    return '{"service_phone": ${service_phone != null?'${json.encode(service_phone)}':'null'},"service_time": ${service_time != null?'${json.encode(service_time)}':'null'},"service_weixin": ${service_weixin != null?'${json.encode(service_weixin)}':'null'}}';
  }
}

