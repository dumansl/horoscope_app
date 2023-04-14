class Horoscope {
  String _horoscopeName;
  String _horoscopeDate;
  String _horoscopeDetails;
  String _horoscopeThumbnailImage;
  String _horoscopeBigImage;

  get horoscopeName => this._horoscopeName;

  get horoscopeDate => this._horoscopeDate;

  get horoscopeDetails => this._horoscopeDetails;

  get horoscopeThumbnailImage => this._horoscopeThumbnailImage;

  get horoscopeBigImage => this._horoscopeBigImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetails,
      this._horoscopeThumbnailImage, this._horoscopeBigImage);
}
