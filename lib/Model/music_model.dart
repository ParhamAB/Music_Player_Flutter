class MusicModel {
  String? _type;
  List<Data>? _data;

  MusicModel({String? type, List<Data>? data}) {
    if (type != null) {
      this._type = type;
    }
    if (data != null) {
      this._data = data;
    }
  }

  String? get type => _type;
  set type(String? type) => _type = type;
  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;

  MusicModel.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? _title;
  String? _song;
  Track? _track;
  String? _bitrate;
  String? _server;
  String? _autodj;
  String? _source;
  bool? _offline;
  String? _summary;
  int? _listeners;
  int? _maxlisteners;
  int? _reseller;
  bool? _serverstate;
  bool? _sourcestate;
  bool? _sourceconn;
  String? _date;
  String? _time;
  String? _rawmeta;
  String? _mountpoint;
  String? _tuneinurl;
  String? _tuneinurltls;
  String? _directtuneinurl;
  String? _proxytuneinurl;
  String? _proxytuneinurltls;
  String? _tuneinformat;
  String? _webplayer;
  String? _servertype;
  int? _listenertotal;
  String? _url;

  Data(
      {String? title,
      String? song,
      Track? track,
      String? bitrate,
      String? server,
      String? autodj,
      String? source,
      bool? offline,
      String? summary,
      int? listeners,
      int? maxlisteners,
      int? reseller,
      bool? serverstate,
      bool? sourcestate,
      bool? sourceconn,
      String? date,
      String? time,
      String? rawmeta,
      String? mountpoint,
      String? tuneinurl,
      String? tuneinurltls,
      String? directtuneinurl,
      String? proxytuneinurl,
      String? proxytuneinurltls,
      String? tuneinformat,
      String? webplayer,
      String? servertype,
      int? listenertotal,
      String? url}) {
    if (title != null) {
      this._title = title;
    }
    if (song != null) {
      this._song = song;
    }
    if (track != null) {
      this._track = track;
    }
    if (bitrate != null) {
      this._bitrate = bitrate;
    }
    if (server != null) {
      this._server = server;
    }
    if (autodj != null) {
      this._autodj = autodj;
    }
    if (source != null) {
      this._source = source;
    }
    if (offline != null) {
      this._offline = offline;
    }
    if (summary != null) {
      this._summary = summary;
    }
    if (listeners != null) {
      this._listeners = listeners;
    }
    if (maxlisteners != null) {
      this._maxlisteners = maxlisteners;
    }
    if (reseller != null) {
      this._reseller = reseller;
    }
    if (serverstate != null) {
      this._serverstate = serverstate;
    }
    if (sourcestate != null) {
      this._sourcestate = sourcestate;
    }
    if (sourceconn != null) {
      this._sourceconn = sourceconn;
    }
    if (date != null) {
      this._date = date;
    }
    if (time != null) {
      this._time = time;
    }
    if (rawmeta != null) {
      this._rawmeta = rawmeta;
    }
    if (mountpoint != null) {
      this._mountpoint = mountpoint;
    }
    if (tuneinurl != null) {
      this._tuneinurl = tuneinurl;
    }
    if (tuneinurltls != null) {
      this._tuneinurltls = tuneinurltls;
    }
    if (directtuneinurl != null) {
      this._directtuneinurl = directtuneinurl;
    }
    if (proxytuneinurl != null) {
      this._proxytuneinurl = proxytuneinurl;
    }
    if (proxytuneinurltls != null) {
      this._proxytuneinurltls = proxytuneinurltls;
    }
    if (tuneinformat != null) {
      this._tuneinformat = tuneinformat;
    }
    if (webplayer != null) {
      this._webplayer = webplayer;
    }
    if (servertype != null) {
      this._servertype = servertype;
    }
    if (listenertotal != null) {
      this._listenertotal = listenertotal;
    }
    if (url != null) {
      this._url = url;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get song => _song;
  set song(String? song) => _song = song;
  Track? get track => _track;
  set track(Track? track) => _track = track;
  String? get bitrate => _bitrate;
  set bitrate(String? bitrate) => _bitrate = bitrate;
  String? get server => _server;
  set server(String? server) => _server = server;
  String? get autodj => _autodj;
  set autodj(String? autodj) => _autodj = autodj;
  String? get source => _source;
  set source(String? source) => _source = source;
  bool? get offline => _offline;
  set offline(bool? offline) => _offline = offline;
  String? get summary => _summary;
  set summary(String? summary) => _summary = summary;
  int? get listeners => _listeners;
  set listeners(int? listeners) => _listeners = listeners;
  int? get maxlisteners => _maxlisteners;
  set maxlisteners(int? maxlisteners) => _maxlisteners = maxlisteners;
  int? get reseller => _reseller;
  set reseller(int? reseller) => _reseller = reseller;
  bool? get serverstate => _serverstate;
  set serverstate(bool? serverstate) => _serverstate = serverstate;
  bool? get sourcestate => _sourcestate;
  set sourcestate(bool? sourcestate) => _sourcestate = sourcestate;
  bool? get sourceconn => _sourceconn;
  set sourceconn(bool? sourceconn) => _sourceconn = sourceconn;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get time => _time;
  set time(String? time) => _time = time;
  String? get rawmeta => _rawmeta;
  set rawmeta(String? rawmeta) => _rawmeta = rawmeta;
  String? get mountpoint => _mountpoint;
  set mountpoint(String? mountpoint) => _mountpoint = mountpoint;
  String? get tuneinurl => _tuneinurl;
  set tuneinurl(String? tuneinurl) => _tuneinurl = tuneinurl;
  String? get tuneinurltls => _tuneinurltls;
  set tuneinurltls(String? tuneinurltls) => _tuneinurltls = tuneinurltls;
  String? get directtuneinurl => _directtuneinurl;
  set directtuneinurl(String? directtuneinurl) =>
      _directtuneinurl = directtuneinurl;
  String? get proxytuneinurl => _proxytuneinurl;
  set proxytuneinurl(String? proxytuneinurl) =>
      _proxytuneinurl = proxytuneinurl;
  String? get proxytuneinurltls => _proxytuneinurltls;
  set proxytuneinurltls(String? proxytuneinurltls) =>
      _proxytuneinurltls = proxytuneinurltls;
  String? get tuneinformat => _tuneinformat;
  set tuneinformat(String? tuneinformat) => _tuneinformat = tuneinformat;
  String? get webplayer => _webplayer;
  set webplayer(String? webplayer) => _webplayer = webplayer;
  String? get servertype => _servertype;
  set servertype(String? servertype) => _servertype = servertype;
  int? get listenertotal => _listenertotal;
  set listenertotal(int? listenertotal) => _listenertotal = listenertotal;
  String? get url => _url;
  set url(String? url) => _url = url;

  Data.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _song = json['song'];
    _track = json['track'] != null ? new Track.fromJson(json['track']) : null;
    _bitrate = json['bitrate'];
    _server = json['server'];
    _autodj = json['autodj'];
    _source = json['source'];
    _offline = json['offline'];
    _summary = json['summary'];
    _listeners = json['listeners'];
    _maxlisteners = json['maxlisteners'];
    _reseller = json['reseller'];
    _serverstate = json['serverstate'];
    _sourcestate = json['sourcestate'];
    _sourceconn = json['sourceconn'];
    _date = json['date'];
    _time = json['time'];
    _rawmeta = json['rawmeta'];
    _mountpoint = json['mountpoint'];
    _tuneinurl = json['tuneinurl'];
    _tuneinurltls = json['tuneinurltls'];
    _directtuneinurl = json['directtuneinurl'];
    _proxytuneinurl = json['proxytuneinurl'];
    _proxytuneinurltls = json['proxytuneinurltls'];
    _tuneinformat = json['tuneinformat'];
    _webplayer = json['webplayer'];
    _servertype = json['servertype'];
    _listenertotal = json['listenertotal'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['song'] = this._song;
    if (this._track != null) {
      data['track'] = this._track!.toJson();
    }
    data['bitrate'] = this._bitrate;
    data['server'] = this._server;
    data['autodj'] = this._autodj;
    data['source'] = this._source;
    data['offline'] = this._offline;
    data['summary'] = this._summary;
    data['listeners'] = this._listeners;
    data['maxlisteners'] = this._maxlisteners;
    data['reseller'] = this._reseller;
    data['serverstate'] = this._serverstate;
    data['sourcestate'] = this._sourcestate;
    data['sourceconn'] = this._sourceconn;
    data['date'] = this._date;
    data['time'] = this._time;
    data['rawmeta'] = this._rawmeta;
    data['mountpoint'] = this._mountpoint;
    data['tuneinurl'] = this._tuneinurl;
    data['tuneinurltls'] = this._tuneinurltls;
    data['directtuneinurl'] = this._directtuneinurl;
    data['proxytuneinurl'] = this._proxytuneinurl;
    data['proxytuneinurltls'] = this._proxytuneinurltls;
    data['tuneinformat'] = this._tuneinformat;
    data['webplayer'] = this._webplayer;
    data['servertype'] = this._servertype;
    data['listenertotal'] = this._listenertotal;
    data['url'] = this._url;
    return data;
  }
}

class Track {
  String? _artist;
  String? _title;
  String? _album;
  int? _royaltytrackid;
  Null? _started;
  int? _id;
  int? _length;
  Playlist? _playlist;
  String? _buyurl;
  String? _imageurl;

  Track(
      {String? artist,
      String? title,
      String? album,
      int? royaltytrackid,
      Null? started,
      int? id,
      int? length,
      Playlist? playlist,
      String? buyurl,
      String? imageurl}) {
    if (artist != null) {
      this._artist = artist;
    }
    if (title != null) {
      this._title = title;
    }
    if (album != null) {
      this._album = album;
    }
    if (royaltytrackid != null) {
      this._royaltytrackid = royaltytrackid;
    }
    if (started != null) {
      this._started = started;
    }
    if (id != null) {
      this._id = id;
    }
    if (length != null) {
      this._length = length;
    }
    if (playlist != null) {
      this._playlist = playlist;
    }
    if (buyurl != null) {
      this._buyurl = buyurl;
    }
    if (imageurl != null) {
      this._imageurl = imageurl;
    }
  }

  String? get artist => _artist;
  set artist(String? artist) => _artist = artist;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get album => _album;
  set album(String? album) => _album = album;
  int? get royaltytrackid => _royaltytrackid;
  set royaltytrackid(int? royaltytrackid) => _royaltytrackid = royaltytrackid;
  Null? get started => _started;
  set started(Null? started) => _started = started;
  int? get id => _id;
  set id(int? id) => _id = id;
  int? get length => _length;
  set length(int? length) => _length = length;
  Playlist? get playlist => _playlist;
  set playlist(Playlist? playlist) => _playlist = playlist;
  String? get buyurl => _buyurl;
  set buyurl(String? buyurl) => _buyurl = buyurl;
  String? get imageurl => _imageurl;
  set imageurl(String? imageurl) => _imageurl = imageurl;

  Track.fromJson(Map<String, dynamic> json) {
    _artist = json['artist'];
    _title = json['title'];
    _album = json['album'];
    _royaltytrackid = json['royaltytrackid'];
    _started = json['started'];
    _id = json['id'];
    _length = json['length'];
    _playlist = json['playlist'] != null
        ? new Playlist.fromJson(json['playlist'])
        : null;
    _buyurl = json['buyurl'];
    _imageurl = json['imageurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artist'] = this._artist;
    data['title'] = this._title;
    data['album'] = this._album;
    data['royaltytrackid'] = this._royaltytrackid;
    data['started'] = this._started;
    data['id'] = this._id;
    data['length'] = this._length;
    if (this._playlist != null) {
      data['playlist'] = this._playlist!.toJson();
    }
    data['buyurl'] = this._buyurl;
    data['imageurl'] = this._imageurl;
    return data;
  }
}

class Playlist {
  int? _id;
  String? _title;

  Playlist({int? id, String? title}) {
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;

  Playlist.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    return data;
  }
}
