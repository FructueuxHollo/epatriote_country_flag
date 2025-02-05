import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//* Country flag widget
class EpatrioteCountryFlag extends StatelessWidget {
  const EpatrioteCountryFlag(
      {Key key,
      @required this.country,
      @required this.height,
      @required this.width,
      @required this.svg})
      : super(key: key);
  final String country; // cette variable prend le code d'un pays en minuscule
  final double height; // longueur
  final double width; // largeur
  final bool
      svg; // cette variable permet de savoir si l'image est un svg (true) et si non (false)

// cette fonction permet de gerer les erreurs de saisir du code d'un pays donné
// en cas d'erreur l'utilisateur aura une image qui lui dira erreur le code saisi n'est pas
// dans notre base de donner ou n'existe pas
  String goodcountry(String code) {
    switch (code) {
      case 'af':
      case 'za':
      case 'ax':
      case 'al':
      case 'dz':
      case 'de':
      case 'ad':
      case 'ao':
      case 'al':
      case 'aq':
      case 'ag':
      case 'sa':
      case 'ar':
      case 'am':
      case 'aw':
      case 'au':
      case 'at':
      case 'az':
      case 'bs':
      case 'bh':
      case 'bd':
      case 'bb':
      case 'by':
      case 'be':
      case 'bz':
      case 'bj':
      case 'bm':
      case 'bt':
      case 'bo':
      case 'bq':
      case 'ba':
      case 'bw':
      case 'bv':
      case 'br':
      case 'bn':
      case 'bg':
      case 'bf':
      case 'bi':
      case 'ky':
      case 'kh':
      case 'cm':
      case 'ca':
      case 'cv':
      case 'cf':
      case 'cl':
      case 'cn':
      case 'cx':
      case 'cy':
      case 'cc':
      case 'co':
      case 'km':
      case 'cg':
      case 'cd':
      case 'ck':
      case 'kr':
      case 'kp':
      case 'cr':
      case 'ci':
      case 'hr':
      case 'cu':
      case 'cw':
      case 'dk':
      case 'dj':
      case 'do':
      case 'dm':
      case 'eg':
      case 'sv':
      case 'ae':
      case 'ec':
      case 'er':
      case 'es':
      case 'ee':
      case 'us':
      case 'et':
      case 'fk':
      case 'fo':
      case 'fj':
      case 'fi':
      case 'fr':
      case 'ga':
      case 'gm':
      case 'ge':
      case 'gs':
      case 'gh':
      case 'gi':
      case 'gr':
      case 'gd':
      case 'gl':
      case 'gp':
      case 'gu':
      case 'gt':
      case 'gg':
      case 'gn':
      case 'gw':
      case 'gq':
      case 'gy':
      case 'gf':
      case 'ht':
      case 'hm':
      case 'hn':
      case 'hk':
      case 'hu':
      case 'im':
      case 'um':
      case 'vg':
      case 'vi':
      case 'in':
      case 'id':
      case 'ir':
      case 'iq':
      case 'ie':
      case 'is':
      case 'il':
      case 'it':
      case 'jm':
      case 'jp':
      case 'je':
      case 'jo':
      case 'kz':
      case 'ke':
      case 'kg':
      case 'ki':
      case 'kw':
      case 'la':
      case 'ls':
      case 'lv':
      case 'lb':
      case 'lr':
      case 'ly':
      case 'li':
      case 'lt':
      case 'lu':
      case 'mo':
      case 'mk':
      case 'mg':
      case 'my':
      case 'mg':
      case 'my':
      case 'mw':
      case 'mv':
      case 'ml':
      case 'mt':
      case 'mp':
      case 'ma':
      case 'mh':
      case 'mq':
      case 'mu':
      case 'mr':
      case 'yt':
      case 'mx':
      case 'fm':
      case 'md':
      case 'mc':
      case 'mn':
      case 'me':
      case 'ms':
      case 'mz':
      case 'mm':
      case 'na':
      case 'nr':
      case 'np':
      case 'ni':
      case 'ne':
      case 'ng':
      case 'nu':
      case 'nf':
      case 'no':
      case 'nc':
      case 'nz':
      case 'io':
      case 'om':
      case 'ug':
      case 'uz':
      case 'pk':
      case 'pw':
      case 'ps':
      case 'pa':
      case 'pg':
      case 'py':
      case 'nl':
      case 'pe':
      case 'ph':
      case 'pn':
      case 'pl':
      case 'pf':
      case 'pr':
      case 'pt':
      case 'qa':
      case 're':
      case 'ro':
      case 'gb':
      case 'ru':
      case 'rw':
      case 'eh':
      case 'bl':
      case 'kn':
      case 'sm':
      case 'mf':
      case 'sx':
      case 'pm':
      case 'va':
      case 'vc':
      case 'sh':
      case 'lc':
      case 'sb':
      case 'ws':
      case 'as':
      case 'st':
      case 'sn':
      case 'rs':
      case 'sc':
      case 'sg':
      case 'sk':
      case 'si':
      case 'so':
      case 'sd':
      case 'ss':
      case 'lk':
      case 'se':
      case 'ch':
      case 'sr':
      case 'sj':
      case 'sz':
      case 'sy':
      case 'tj':
      case 'tw':
      case 'tz':
      case 'td':
      case 'cz':
      case 'tf':
      case 'th':
      case 'tl':
      case 'tg':
      case 'tk':
      case 'to':
      case 'tt':
      case 'tn':
      case 'tm':
      case 'tc':
      case 'tr':
      case 'tv':
      case 'ua':
      case 'uy':
      case 'vu':
      case 've':
      case 'vn':
      case 'wf':
      case 'ye':
      case 'zm':
      case 'zw':
        code = code;
        break;
      default:
        code = 'error';
    }
    return code;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: svg
            ? SvgPicture.asset("assets/svg/${goodcountry(country)}.svg")
            : Image.asset("assets/png/${goodcountry(country)}.png"));
  }
}
