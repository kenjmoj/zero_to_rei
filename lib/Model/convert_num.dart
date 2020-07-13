enum unit {
  ichi,
  juu,
  hyaku,
  sen,
  man,
  juuman,
  hyakuman,
  senman,
  oku,
  juuoku,
  hyakuoku,
  senoku,
  cho,
  juucho,
  hyakucho,
  sencho,
  kei,
  juukei,
  hyakukei,
  senkei,
  gai
}

class ConvertNum {
  static Map<double, String> _ones = {
    0: '',
    1: '一',
    2: '二',
    3: '三',
    4: '四',
    5: '五',
    6: '六',
    7: '七',
    8: '八',
    9: '九',
  };

  static Map<unit, String> _unitInKanji = {
    unit.ichi: '一',
    unit.juu: '十',
    unit.hyaku: '百',
    unit.sen: '千',
    unit.man: '万',
    unit.juuman: '十万',
    unit.hyakuman: '百万',
    unit.senman: '千万',
    unit.oku: '億',
    unit.juuoku: '十億',
    unit.hyakuoku: '百億',
    unit.senoku: '千億',
    unit.cho: '兆',
    unit.juucho: '十兆',
    unit.hyakucho: '百兆',
    unit.sencho: '千兆',
    unit.kei: '京',
    unit.juukei: '十京',
    unit.hyakukei: '百京',
    unit.senkei: '千京',
    unit.gai: '垓',
  };

  static String _convertedNum = '';

  static String clear() {
    _convertedNum = '';
    return _convertedNum;
  }

  static String convert(int numToConvert) {
    int numLength;
    unit currentUnit;

    ///    int test2 = 999999999999999999;
    ///    print('test2 $test2');
    ///    this number of digits fails

    numLength = numToConvert.toString().length;
    currentUnit = unit.values[numLength - 1]; //-1 because enum index

    switch (currentUnit) {
      case unit.ichi:
        {
          if (_convertedNum == '' && numToConvert == 0) {
            _convertedNum = '零';
          } else if (_convertedNum == '零' && numToConvert == 0) {
          } else {
            _convertedNum = _ones[numToConvert];
          }
        }
        break;

      case unit.juu:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum = _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;

      case unit.hyaku:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum = _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.sen:
        {
          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
              _unitInKanji[currentUnit] +
              convert((numToConvert % _zeroFilter(currentUnit)).toInt());
        }
        break;
      case unit.man:
        {
          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
              _unitInKanji[currentUnit] +
              convert((numToConvert % _zeroFilter(currentUnit)).toInt());
        }
        break;
      case unit.juuman:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.man)).toInt()) +
                    _unitInKanji[unit.man] +
                    convert((numToConvert % _zeroFilter(unit.man)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.man)) % 10 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '十' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.hyakuman:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.man)).toInt()) +
                    _unitInKanji[unit.man] +
                    convert((numToConvert % _zeroFilter(unit.man)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.man)) % 100 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '百' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.senman:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.man)).toInt()) +
                    _unitInKanji[unit.man] +
                    convert((numToConvert % _zeroFilter(unit.man)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.man)) % 1000 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '千' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.oku:
        {
          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
              _unitInKanji[currentUnit] +
              convert((numToConvert % _zeroFilter(currentUnit)).toInt());
        }
        break;
      case unit.juuoku:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.oku)).toInt()) +
                    _unitInKanji[unit.oku] +
                    convert((numToConvert % _zeroFilter(unit.oku)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.oku)) % 10 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '十' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.hyakuoku:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.oku)).toInt()) +
                    _unitInKanji[unit.oku] +
                    convert((numToConvert % _zeroFilter(unit.oku)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.oku)) % 100 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '百' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.senoku:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.oku)).toInt()) +
                    _unitInKanji[unit.oku] +
                    convert((numToConvert % _zeroFilter(unit.oku)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.oku)) % 1000 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '千' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.cho:
        {
          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
              _unitInKanji[currentUnit] +
              convert((numToConvert % _zeroFilter(currentUnit)).toInt());
        }
        break;
      case unit.juucho:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.cho)).toInt()) +
                    _unitInKanji[unit.cho] +
                    convert((numToConvert % _zeroFilter(unit.cho)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.cho)) % 10 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '十' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
      case unit.hyakucho:
        {
          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
            _convertedNum =
                convert((numToConvert ~/ _zeroFilter(unit.cho)).toInt()) +
                    _unitInKanji[unit.cho] +
                    convert((numToConvert % _zeroFilter(unit.cho)).toInt());
          } else if ((numToConvert ~/ _zeroFilter(unit.cho)) % 100 == 0) {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                _unitInKanji[currentUnit] +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          } else {
            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
                '百' +
                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
          }
        }
        break;
//      case unit.sencho:
//        {
//          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
//            _convertedNum =
//                convert((numToConvert ~/ _zeroFilter(unit.cho)).toInt()) +
//                    _unitInKanji[unit.cho] +
//                    convert((numToConvert % _zeroFilter(unit.cho)).toInt());
//          } else if ((numToConvert ~/ _zeroFilter(unit.cho)) % 1000 == 0) {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                _unitInKanji[currentUnit] +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          } else {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                '千' +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          }
//        }
//        break;
//      case unit.kei:
//        {
//          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//              _unitInKanji[currentUnit] +
//              convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//        }
//        break;
//      case unit.juukei:
//        {
//          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
//            _convertedNum =
//                convert((numToConvert ~/ _zeroFilter(unit.kei)).toInt()) +
//                    _unitInKanji[unit.kei] +
//                    convert((numToConvert % _zeroFilter(unit.kei)).toInt());
//          } else if ((numToConvert ~/ _zeroFilter(unit.kei)) % 10 == 0) {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                _unitInKanji[currentUnit] +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          } else {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                '十' +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          }
//        }
//        break;
//      case unit.hyakukei:
//        {
//          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
//            _convertedNum =
//                convert((numToConvert ~/ _zeroFilter(unit.kei)).toInt()) +
//                    _unitInKanji[unit.kei] +
//                    convert((numToConvert % _zeroFilter(unit.kei)).toInt());
//          } else if ((numToConvert ~/ _zeroFilter(unit.kei)) % 100 == 0) {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                _unitInKanji[currentUnit] +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          } else {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                '百' +
//                convert((numToConvert % _zeroFilter(currentUnit)).toInt());
//          }
//        }
//        break;
//      case unit.senkei:
//        {
//          if (numToConvert ~/ _zeroFilter(currentUnit) == 1) {
//            _convertedNum = convert(
//                    (numToConvert ~/ _zeroFilter(unit.kei)).roundToDouble()) +
//                _unitInKanji[unit.kei] +
//                convert(numToConvert % _zeroFilter(unit.kei));
//          } else if ((numToConvert ~/ _zeroFilter(unit.kei)) % 1000 == 0) {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                _unitInKanji[currentUnit] +
//                convert(numToConvert % _zeroFilter(currentUnit));
//          } else {
//            _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//                '千' +
//                convert(numToConvert % _zeroFilter(currentUnit));
//          }
//        }
//        break;
//      case unit.gai:
//        {
//          _convertedNum = _ones[numToConvert ~/ _zeroFilter(currentUnit)] +
//              _unitInKanji[currentUnit] +
//              convert(numToConvert % _zeroFilter(currentUnit));
//        }
//        break;
      default:
        {
          _convertedNum = 'not supported';
        }
        break;
    }

    return _convertedNum;
  }

  static double _zeroFilter(unit unitZeroes) {
    String numZeroFilter = '1';

    for (int x = 0; x < unitZeroes.index; x++) {
      numZeroFilter += '0';
    }
    return double.parse(numZeroFilter);
  }
}
