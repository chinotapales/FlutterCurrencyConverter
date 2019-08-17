import 'dart:collection';

class Rates {
  double aed;
  double all;
  double amd;
  double ang;
  double aoa;
  double ars;
  double aud;
  double azn;
  double bbd;
  double bdt;
  double bgn;
  double bhd;
  double brl;
  double bsd;
  double bwp;
  double byn;
  double cad;
  double chf;
  double clp;
  double cny;
  double cop;
  double czk;
  double dkk;
  double dop;
  double egp;
  double etb;
  double eur;
  double fjd;
  double gbp;
  double gel;
  double ghs;
  double gtq;
  double hkd;
  double hnl;
  double hrk;
  double huf;
  double idr;
  double ils;
  double inr;
  double iqd;
  double irr;
  double isk;
  double jmd;
  double jod;
  double jpy;
  double kes;
  double khr;
  double krw;
  double kwd;
  double kzt;
  double lak;
  double lbp;
  double lkr;
  double mad;
  double mdl;
  double mkd;
  double mmk;
  double mur;
  double mxn;
  double myr;
  double nad;
  double ngn;
  double nok;
  double nzd;
  double omr;
  double pab;
  double pen;
  double pgk;
  double php;
  double pkr;
  double pln;
  double pyg;
  double qar;
  double ron;
  double rsd;
  double rub;
  double sar;
  double scr;
  double sek;
  double sgd;
  double thb;
  double tjs;
  double tnd;
  double tryValue;
  double ttd;
  double twd;
  double tzs;
  double uah;
  double usd;
  double uyu;
  double uzs;
  // double vef;
  double vnd;
  double xaf;
  double xcd;
  double xof;
  double xpf;
  double zar;
  double zmw;

  var rates = new LinkedHashMap();

  Rates();

  void initValues() {
    rates['AED'] = new Map.from({'symbol': 'د.إ', 'flag': '🇦🇪', 'definition': "United Arab Emirates Dirham", 'value': aed});
    rates['ALL'] = new Map.from({'symbol': 'L', 'flag': '🇦🇱', 'definition': "Albanian Lek", 'value': all});
    rates['AMD'] = new Map.from({'symbol': '֏', 'flag': '🇦🇲', 'definition': "Armenian Dram", 'value': amd});
    rates['ANG'] = new Map.from({'symbol': 'ƒ', 'flag': '🇳🇱', 'definition': "Netherlands Antillean Guilder", 'value': ang});
    rates['AOA'] = new Map.from({'symbol': 'Kz', 'flag': '🇦🇴', 'definition': "Angolan Kwanza", 'value': aoa});
    rates['ARS'] = new Map.from({'symbol': '\$', 'flag': '🇦🇷', 'definition': "Argentine Peso", 'value': ars});
    rates['AUD'] = new Map.from({'symbol': '\$', 'flag': '🇦🇺', 'definition': "Australian Dollar", 'value': aud});
    rates['AZN'] = new Map.from({'symbol': '₼', 'flag': '🇦🇿', 'definition': "Azerbaijani Manat", 'value': azn});
    rates['BBD'] = new Map.from({'symbol': '\$', 'flag': '🇧🇧', 'definition': "Barbadian Dollar", 'value': bbd});
    rates['BDT'] = new Map.from({'symbol': '৳', 'flag': '🇧🇩', 'definition': "Bangladeshi Taka", 'value': bdt});
    rates['BGN'] = new Map.from({'symbol': '‎лв', 'flag': '🇧🇬', 'definition': "Bulgarian Lev", 'value': bgn});
    rates['BHD'] = new Map.from({'symbol': '.د.ب', 'flag': '🇧🇭', 'definition': "Bahraini Dinar", 'value': bhd});
    rates['BRL'] = new Map.from({'symbol': 'R\$', 'flag': '🇧🇷', 'definition': "Brazilian Real", 'value': brl});
    rates['BSD'] = new Map.from({'symbol': '\$', 'flag': '🇧🇸', 'definition': "Bahamian Dollar", 'value': bsd});
    rates['BWP'] = new Map.from({'symbol': 'P', 'flag': '🇧🇼', 'definition': "Botswanan Pula", 'value': bwp});
    rates['BYN'] = new Map.from({'symbol': 'Br', 'flag': '🇧🇾', 'definition': "Belarusian Ruble", 'value': byn});
    rates['CAD'] = new Map.from({'symbol': '\$', 'flag': '🇨🇦', 'definition': "Canadian Dollar", 'value': cad});
    rates['CHF'] = new Map.from({'symbol': 'Fr.', 'flag': '🇨🇭', 'definition': "Swiss Franc", 'value': chf});
    rates['CLP'] = new Map.from({'symbol': '\$', 'flag': '🇨🇱', 'definition': "Chilean Peso", 'value': clp});
    rates['CNY'] = new Map.from({'symbol': '¥', 'flag': '🇨🇳', 'definition': "Chinese Yuan", 'value': cny});
    rates['COP'] = new Map.from({'symbol': '\$', 'flag': '🇨🇴', 'definition': "Colombian Peso", 'value': cop});
    rates['CZK'] = new Map.from({'symbol': 'Kč', 'flag': '🇨🇿', 'definition': "Czech Koruna", 'value': czk});
    rates['DKK'] = new Map.from({'symbol': 'kr', 'flag': '🇩🇰', 'definition': "Danish Krone", 'value': dkk});
    rates['DOP'] = new Map.from({'symbol': '\$', 'flag': '🇩🇴', 'definition': "Dominican Peso", 'value': dop});
    rates['EGP'] = new Map.from({'symbol': '£', 'flag': '🇪🇬', 'definition': "Egyptian Pound", 'value': egp});
    rates['ETB'] = new Map.from({'symbol': 'ብር', 'flag': '🇪🇹', 'definition': "Ethiopian Birr", 'value': etb});
    rates['EUR'] = new Map.from({'symbol': '‎€', 'flag': '🇪🇺', 'definition': "Euro", 'value': eur});
    rates['FJD'] = new Map.from({'symbol': '\$', 'flag': '🇫🇯', 'definition': "Fijian Dollar", 'value': fjd});
    rates['GBP'] = new Map.from({'symbol': '£', 'flag': '🇬🇧', 'definition': "Pound Sterling", 'value': gbp});
    rates['GEL'] = new Map.from({'symbol': 'ლ', 'flag': '🇬🇪', 'definition': "Georgian Lari", 'value': gel});
    rates['GHS'] = new Map.from({'symbol': '₵', 'flag': '🇬🇭', 'definition': "Ghanaian Cedi", 'value': ghs});
    rates['GTQ'] = new Map.from({'symbol': 'Q', 'flag': '🇬🇹', 'definition': "Guatemalan Quetzal", 'value': gtq});
    rates['HKD'] = new Map.from({'symbol': '\$', 'flag': '🇭🇰', 'definition': "Hong Kong Dollar", 'value': hkd});
    rates['HNL'] = new Map.from({'symbol': 'L', 'flag': '🇭🇳', 'definition': "Honduran Lempira", 'value': hnl});
    rates['HRK'] = new Map.from({'symbol': 'kn', 'flag': '🇭🇷', 'definition': "Croatian Kuna", 'value': hrk});
    rates['HUF'] = new Map.from({'symbol': 'Ft', 'flag': '🇭🇺', 'definition': "Hungarian Forint", 'value': huf});
    rates['IDR'] = new Map.from({'symbol': 'Rp', 'flag': '🇮🇩', 'definition': "Indonesian Rupiah", 'value': idr});
    rates['ILS'] = new Map.from({'symbol': '₪', 'flag': '🇮🇱', 'definition': "Israeli New Shekel", 'value': ils});
    rates['INR'] = new Map.from({'symbol': '₹', 'flag': '🇮🇳', 'definition': "Indian Rupee", 'value': inr});
    rates['IQD'] = new Map.from({'symbol': 'ع.د', 'flag': '🇮🇶', 'definition': "Iraqi Dinar", 'value': iqd});
    rates['IRR'] = new Map.from({'symbol': '﷼', 'flag': '🇮🇷', 'definition': "Iranian Rial", 'value': irr});
    rates['ISK'] = new Map.from({'symbol': 'kr', 'flag': '🇮🇸', 'definition': "Icelandic Króna", 'value': isk});
    rates['JMD'] = new Map.from({'symbol': '\$', 'flag': '🇯🇲', 'definition': "Jamaican Dollar", 'value': jmd});
    rates['JOD'] = new Map.from({'symbol': 'د.ا', 'flag': '🇱🇧', 'definition': "Jordanian Dinar", 'value': jod});
    rates['JPY'] = new Map.from({'symbol': '¥', 'flag': '🇯🇵', 'definition': "Japanese Yen", 'value': jpy});
    rates['KES'] = new Map.from({'symbol': 'Ksh', 'flag': '🇰🇪', 'definition': "Kenyan Shilling", 'value': kes});
    rates['KHR'] = new Map.from({'symbol': '៛', 'flag': '🇰🇭', 'definition': "Cambodian Riel", 'value': khr});
    rates['KRW'] = new Map.from({'symbol': '₩', 'flag': '🇰🇷', 'definition': "South Korean Won", 'value': krw});
    rates['KWD'] = new Map.from({'symbol': 'د.ك', 'flag': '🇰🇼', 'definition': "Kuwaiti Dinar", 'value': kwd});
    rates['KZT'] = new Map.from({'symbol': '₸', 'flag': '🇰🇿', 'definition': "Kazakhstani Tenge", 'value': kzt});
    rates['LAK'] = new Map.from({'symbol': '₭', 'flag': '🇱🇦', 'definition': "Laotian Kip", 'value': lak});
    rates['LBP'] = new Map.from({'symbol': 'ل.ل', 'flag': '🇱🇧', 'definition': "Lebanese Pound", 'value': lbp});
    rates['LKR'] = new Map.from({'symbol': 'රු', 'flag': '🇱🇰', 'definition': "Sri Lankan Rupee", 'value': lkr});
    rates['MAD'] = new Map.from({'symbol': 'DH', 'flag': '🇲🇦', 'definition': "Moroccan Dirham", 'value': mad});
    rates['MDL'] = new Map.from({'symbol': 'L', 'flag': '🇲🇩', 'definition': "Moldovan Leu", 'value': mdl});
    rates['MKD'] = new Map.from({'symbol': 'Ден', 'flag': '🇲🇰', 'definition': "Macedonian Denar", 'value': mkd});
    rates['MMK'] = new Map.from({'symbol': 'K', 'flag': '🇲🇲', 'definition': "Myanmar Kyat", 'value': mmk});
    rates['MUR'] = new Map.from({'symbol': 'Rs', 'flag': '🇲🇺', 'definition': "Mauritian Rupee", 'value': mur});
    rates['MXN'] = new Map.from({'symbol': '\$', 'flag': '🇲🇽', 'definition': "Mexican Peso", 'value': mxn});
    rates['MYR'] = new Map.from({'symbol': 'RM', 'flag': '🇲🇾', 'definition': "Malaysian Ringgit", 'value': myr});
    rates['NAD'] = new Map.from({'symbol': '\$', 'flag': '🇳🇦', 'definition': "Namibian Dollar", 'value': nad});
    rates['NGN'] = new Map.from({'symbol': '₦', 'flag': '🇳🇬', 'definition': "Nigerian Naira", 'value': ngn});
    rates['NOK'] = new Map.from({'symbol': 'kr', 'flag': '🇳🇴', 'definition': "Norwegian Krone", 'value': nok});
    rates['NZD'] = new Map.from({'symbol': '\$', 'flag': '🇳🇿', 'definition': "New Zealand Dollar", 'value': nzd});
    rates['OMR'] = new Map.from({'symbol': '﷼', 'flag': '🇴🇲', 'definition': "Omani Rial", 'value': omr});
    rates['PAB'] = new Map.from({'symbol': 'B/.', 'flag': '🇵🇦', 'definition': "Panamanian Balboa", 'value': pab});
    rates['PEN'] = new Map.from({'symbol': 'S/', 'flag': '🇵🇪', 'definition': "Peruvian Sol", 'value': pen});
    rates['PGK'] = new Map.from({'symbol': 'K', 'flag': '🇵🇬', 'definition': "Papua New Guinean Kina", 'value': pgk});
    rates['PHP'] = new Map.from({'symbol': '₱', 'flag': '🇵🇭', 'definition': "Philippine Peso", 'value': php});
    rates['PKR'] = new Map.from({'symbol': 'Rs', 'flag': '🇵🇰', 'definition': "Pakistani Rupee", 'value': pkr});
    rates['PLN'] = new Map.from({'symbol': 'zł', 'flag': '🇵🇱', 'definition': "Poland złoty", 'value': pln});
    rates['PYG'] = new Map.from({'symbol': '₲', 'flag': '🇵🇾', 'definition': "Paraguayan Guarani", 'value': pyg});
    rates['QAR'] = new Map.from({'symbol': 'ر.ق', 'flag': '🇶🇦', 'definition': "Qatari Rial", 'value': qar});
    rates['RON'] = new Map.from({'symbol': 'lei', 'flag': '🇷🇴', 'definition': "Romanian Leu", 'value': ron});
    rates['RSD'] = new Map.from({'symbol': 'din', 'flag': '🇷🇸', 'definition': "Serbian Dinar", 'value': rsd});
    rates['RUB'] = new Map.from({'symbol': '‎₽', 'flag': '🇷🇺', 'definition': "Russian Ruble", 'value': rub});
    rates['SAR'] = new Map.from({'symbol': '\$', 'flag': '🇸🇦', 'definition': "Saudi Riyal", 'value': sar});
    rates['SCR'] = new Map.from({'symbol': 'SR', 'flag': '🇸🇨', 'definition': "Seychellois Rupee", 'value': scr});
    rates['SEK'] = new Map.from({'symbol': 'kr', 'flag': '🇸🇪', 'definition': "Swedish Krona", 'value': sek});
    rates['SGD'] = new Map.from({'symbol': '\$', 'flag': '🇸🇬', 'definition': "Singapore Dollar", 'value': sgd});
    rates['THB'] = new Map.from({'symbol': '฿', 'flag': '🇹🇭', 'definition': "Thai Baht", 'value': thb});
    rates['TJS'] = new Map.from({'symbol': 'ЅM', 'flag': '🇹🇯', 'definition': "Tajikistani Somoni", 'value': tjs});
    rates['TND'] = new Map.from({'symbol': 'د.ت', 'flag': '🇹🇳', 'definition': "Tunisian Dinar", 'value': tnd});
    rates['TRY'] = new Map.from({'symbol': '₺', 'flag': '🇹🇷', 'definition': "Turkish Lira", 'value': tryValue});
    rates['TTD'] = new Map.from({'symbol': '\$', 'flag': '🇹🇹', 'definition': "Trinidad & Tobago Dollar", 'value': ttd});
    rates['TWD'] = new Map.from({'symbol': '\$', 'flag': '🇹🇼', 'definition': "New Taiwan Dollar", 'value': twd});
    rates['TZS'] = new Map.from({'symbol': 'TSh', 'flag': '🇹🇿', 'definition': "Tanzanian Shilling", 'value': tzs});
    rates['UAH'] = new Map.from({'symbol': '₴', 'flag': '🇺🇦', 'definition': "Ukrainian Hryvnia", 'value': uah});
    rates['USD'] = new Map.from({'symbol': '\$', 'flag': '🇺🇸', 'definition': "United States Dollar", 'value': usd});
    rates['UYU'] = new Map.from({'symbol': '\$', 'flag': '🇺🇾', 'definition': "Uruguayan Peso", 'value': uyu});
    rates['UZS'] = new Map.from({'symbol': 'so\'m', 'flag': '🇺🇿', 'definition': "Uzbekistani Som", 'value': uzs});
    // rates['VEF'] = new Map.from({'symbol': 'Bs.S', 'flag': '🇻🇪', 'definition': "Venezuelan Bolívar", 'value': vef});
    rates['VND'] = new Map.from({'symbol': '₫', 'flag': '🇻🇳', 'definition': "Vietnamese Dong", 'value': vnd});
    rates['XAF'] = new Map.from({'symbol': 'FCFA', 'flag': '🇨🇫', 'definition': "Central African CFA Franc", 'value': xaf});
    rates['XCD'] = new Map.from({'symbol': '\$', 'flag': '🏳️', 'definition': "East Caribbean Dollar", 'value': xcd});
    rates['XOF'] = new Map.from({'symbol': 'CFRA', 'flag': '🏳️', 'definition': "West African CFA Franc", 'value': xof});
    rates['XPF'] = new Map.from({'symbol': '₣', 'flag': '🏳️', 'definition': "CFP Franc", 'value': xpf});
    rates['ZAR'] = new Map.from({'symbol': 'R', 'flag': '🇿🇦', 'definition': "South African Rand", 'value': zar});
    rates['ZMW'] = new Map.from({'symbol': 'ZK', 'flag': '🇿🇲', 'definition': "Zambian Kwacha", 'value': zmw});
  }

  Rates.fromJson(Map<String, dynamic> json):
    aed = (json['AED'] != null) ? json['AED'] + 0.0 : 0.0,
    all = (json['ALL'] != null) ? json['ALL'] + 0.0 : 0.0,
    amd = (json['AMD'] != null) ? json['AMD'] + 0.0 : 0.0,
    ang = (json['ANG'] != null) ? json['ANG'] + 0.0 : 0.0,
    aoa = (json['AOA'] != null) ? json['AOA'] + 0.0 : 0.0,
    ars = (json['ARS'] != null) ? json['ARS'] + 0.0 : 0.0,
    aud = (json['AUD'] != null) ? json['AUD'] + 0.0 : 0.0,
    azn = (json['AZN'] != null) ? json['AZN'] + 0.0 : 0.0,
    bbd = (json['BBD'] != null) ? json['BBD'] + 0.0 : 0.0,
    bdt = (json['BDT'] != null) ? json['BDT'] + 0.0 : 0.0,
    bgn = (json['BGN'] != null) ? json['BGN'] + 0.0 : 0.0,
    bhd = (json['BHD'] != null) ? json['BHD'] + 0.0 : 0.0,
    brl = (json['BRL'] != null) ? json['BRL'] + 0.0 : 0.0,
    bsd = (json['BSD'] != null) ? json['BSD'] + 0.0 : 0.0,
    bwp = (json['BWP'] != null) ? json['BWP'] + 0.0 : 0.0,
    byn = (json['BYN'] != null) ? json['BYN'] + 0.0 : 0.0,
    cad = (json['CAD'] != null) ? json['CAD'] + 0.0 : 0.0,
    chf = (json['CHF'] != null) ? json['CHF'] + 0.0 : 0.0,
    clp = (json['CLP'] != null) ? json['CLP'] + 0.0 : 0.0,
    cny = (json['CNY'] != null) ? json['CNY'] + 0.0 : 0.0,
    cop = (json['COP'] != null) ? json['COP'] + 0.0 : 0.0,
    czk = (json['CZK'] != null) ? json['CZK'] + 0.0 : 0.0,
    dkk = (json['DKK'] != null) ? json['DKK'] + 0.0 : 0.0,
    dop = (json['DOP'] != null) ? json['DOP'] + 0.0 : 0.0,
    egp = (json['EGP'] != null) ? json['EGP'] + 0.0 : 0.0,
    etb = (json['ETB'] != null) ? json['ETB'] + 0.0 : 0.0,
    eur = (json['EUR'] != null) ? json['EUR'] + 0.0 : 0.0,
    fjd = (json['FJD'] != null) ? json['FJD'] + 0.0 : 0.0,
    gbp = (json['GBP'] != null) ? json['GBP'] + 0.0 : 0.0,
    gel = (json['GEL'] != null) ? json['GEL'] + 0.0 : 0.0,
    ghs = (json['GHS'] != null) ? json['GHS'] + 0.0 : 0.0,
    gtq = (json['GTQ'] != null) ? json['GTQ'] + 0.0 : 0.0,
    hkd = (json['HKD'] != null) ? json['HKD'] + 0.0 : 0.0,
    hnl = (json['HNL'] != null) ? json['HNL'] + 0.0 : 0.0,
    hrk = (json['HRK'] != null) ? json['HRK'] + 0.0 : 0.0,
    huf = (json['HUF'] != null) ? json['HUF'] + 0.0 : 0.0,
    idr = (json['IDR'] != null) ? json['IDR'] + 0.0 : 0.0,
    ils = (json['ILS'] != null) ? json['ILS'] + 0.0 : 0.0,
    inr = (json['INR'] != null) ? json['INR'] + 0.0 : 0.0,
    iqd = (json['IQD'] != null) ? json['IQD'] + 0.0 : 0.0,
    irr = (json['IRR'] != null) ? json['IRR'] + 0.0 : 0.0,
    isk = (json['ISK'] != null) ? json['ISK'] + 0.0 : 0.0,
    jmd = (json['JMD'] != null) ? json['JMD'] + 0.0 : 0.0,
    jod = (json['JOD'] != null) ? json['JOD'] + 0.0 : 0.0,
    jpy = (json['JPY'] != null) ? json['JPY'] + 0.0 : 0.0,
    kes = (json['KES'] != null) ? json['KES'] + 0.0 : 0.0,
    khr = (json['KHR'] != null) ? json['KHR'] + 0.0 : 0.0,
    krw = (json['KRW'] != null) ? json['KRW'] + 0.0 : 0.0,
    kwd = (json['KWD'] != null) ? json['KWD'] + 0.0 : 0.0,
    kzt = (json['KZT'] != null) ? json['KZT'] + 0.0 : 0.0,
    lak = (json['LAK'] != null) ? json['LAK'] + 0.0 : 0.0,
    lbp = (json['LBP'] != null) ? json['LBP'] + 0.0 : 0.0,
    lkr = (json['LKR'] != null) ? json['LKR'] + 0.0 : 0.0,
    mad = (json['MAD'] != null) ? json['MAD'] + 0.0 : 0.0,
    mdl = (json['MDL'] != null) ? json['MDL'] + 0.0 : 0.0,
    mkd = (json['MKD'] != null) ? json['MKD'] + 0.0 : 0.0,
    mmk = (json['MMK'] != null) ? json['MMK'] + 0.0 : 0.0,
    mur = (json['MUR'] != null) ? json['MUR'] + 0.0 : 0.0,
    mxn = (json['MXR'] != null) ? json['MXR'] + 0.0 : 0.0,
    myr = (json['MYR'] != null) ? json['MYR'] + 0.0 : 0.0,
    nad = (json['NAD'] != null) ? json['NAD'] + 0.0 : 0.0,
    ngn = (json['NGN'] != null) ? json['NGN'] + 0.0 : 0.0,
    nok = (json['NOK'] != null) ? json['NOK'] + 0.0 : 0.0,
    nzd = (json['NZD'] != null) ? json['NZD'] + 0.0 : 0.0,
    omr = (json['OMR'] != null) ? json['OMR'] + 0.0 : 0.0,
    pab = (json['PAB'] != null) ? json['PAB'] + 0.0 : 0.0,
    pen = (json['PEN'] != null) ? json['PEN'] + 0.0 : 0.0,
    pgk = (json['PGK'] != null) ? json['PGK'] + 0.0 : 0.0,
    php = (json['PHP'] != null) ? json['PHP'] + 0.0 : 0.0,
    pkr = (json['PKR'] != null) ? json['PKR'] + 0.0 : 0.0,
    pln = (json['PLN'] != null) ? json['PLN'] + 0.0 : 0.0,
    pyg = (json['PYG'] != null) ? json['PYG'] + 0.0 : 0.0,
    qar = (json['QAR'] != null) ? json['QAR'] + 0.0 : 0.0,
    ron = (json['RON'] != null) ? json['RON'] + 0.0 : 0.0,
    rsd = (json['RSD'] != null) ? json['RSD'] + 0.0 : 0.0,
    rub = (json['RUB'] != null) ? json['RUB'] + 0.0 : 0.0,
    sar = (json['SAR'] != null) ? json['SAR'] + 0.0 : 0.0,
    scr = (json['SCR'] != null) ? json['SCR'] + 0.0 : 0.0,
    sek = (json['SEK'] != null) ? json['SEK'] + 0.0 : 0.0,
    sgd = (json['SGD'] != null) ? json['SGD'] + 0.0 : 0.0,
    thb = (json['THB'] != null) ? json['THB'] + 0.0 : 0.0,
    tjs = (json['TJS'] != null) ? json['TJS'] + 0.0 : 0.0,
    tnd = (json['TND'] != null) ? json['TND'] + 0.0 : 0.0,
    tryValue = (json['TRY'] != null) ? json['TRY'] + 0.0 : 0.0,
    ttd = (json['TTD'] != null) ? json['TTD'] + 0.0 : 0.0,
    twd = (json['TWD'] != null) ? json['TWD'] + 0.0 : 0.0,
    tzs = (json['TZS'] != null) ? json['TZS'] + 0.0 : 0.0,
    uah = (json['UAH'] != null) ? json['UAH'] + 0.0 : 0.0,
    usd = (json['USD'] != null) ? json['USD'] + 0.0 : 0.0,
    uyu = (json['UYU'] != null) ? json['UYU'] + 0.0 : 0.0,
    uzs = (json['UZS'] != null) ? json['UZS'] + 0.0 : 0.0,
    // vef = (json['VEF'] != null) ? json['VEF'] + 0.0 : 0.0,
    vnd = (json['VND'] != null) ? json['VND'] + 0.0 : 0.0,
    xaf = (json['XAF'] != null) ? json['XAF'] + 0.0 : 0.0,
    xcd = (json['XCD'] != null) ? json['XCD'] + 0.0 : 0.0,
    xof = (json['XOF'] != null) ? json['XOF'] + 0.0 : 0.0,
    xpf = (json['XPF'] != null) ? json['XPF'] + 0.0 : 0.0,
    zar = (json['ZAR'] != null) ? json['ZAR'] + 0.0 : 0.0,
    zmw = (json['ZMW'] != null) ? json['ZMW'] + 0.0 : 0.0;

}
