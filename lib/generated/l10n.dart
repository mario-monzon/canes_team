// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Canes App`
  String get appName {
    return Intl.message(
      'Canes App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tab1 {
    return Intl.message(
      'Home',
      name: 'tab1',
      desc: '',
      args: [],
    );
  }

  /// `Team`
  String get tab2 {
    return Intl.message(
      'Team',
      name: 'tab2',
      desc: '',
      args: [],
    );
  }

  /// `Scores`
  String get tab3 {
    return Intl.message(
      'Scores',
      name: 'tab3',
      desc: '',
      args: [],
    );
  }

  /// `Sponsor`
  String get tab4 {
    return Intl.message(
      'Sponsor',
      name: 'tab4',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get tab5 {
    return Intl.message(
      'Contact',
      name: 'tab5',
      desc: '',
      args: [],
    );
  }

  /// `This is detail of`
  String get this_is_detail_tap {
    return Intl.message(
      'This is detail of',
      name: 'this_is_detail_tap',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get go_to_details {
    return Intl.message(
      'Detail',
      name: 'go_to_details',
      desc: '',
      args: [],
    );
  }

  /// `There was a problem`
  String get errorNetworkGeneric {
    return Intl.message(
      'There was a problem',
      name: 'errorNetworkGeneric',
      desc: '',
      args: [],
    );
  }

  /// `We are having problems with our service`
  String get errorNetworkServer {
    return Intl.message(
      'We are having problems with our service',
      name: 'errorNetworkServer',
      desc: '',
      args: [],
    );
  }

  /// `You are not authorized`
  String get errorNetworkUnauthorized {
    return Intl.message(
      'You are not authorized',
      name: 'errorNetworkUnauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get test {
    return Intl.message(
      'Test',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `Trainings Days`
  String get training_days {
    return Intl.message(
      'Trainings Days',
      name: 'training_days',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday - Wednesday - Thursday`
  String get schedule_days {
    return Intl.message(
      'Tuesday - Wednesday - Thursday',
      name: 'schedule_days',
      desc: '',
      args: [],
    );
  }

  /// `20:30 - 22:00`
  String get schedule_hours {
    return Intl.message(
      '20:30 - 22:00',
      name: 'schedule_hours',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get email {
    return Intl.message(
      'Email:',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone:`
  String get phone {
    return Intl.message(
      'Phone:',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `News:`
  String get news {
    return Intl.message(
      'News:',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `PA`
  String get pa {
    return Intl.message(
      'PA',
      name: 'pa',
      desc: '',
      args: [],
    );
  }

  /// `PF`
  String get pf {
    return Intl.message(
      'PF',
      name: 'pf',
      desc: '',
      args: [],
    );
  }

  /// ` En el año 2017 un grupo de amigos y compañeros, compuestos en su mayoría por ex-jugadores de otros equipos de Fútbol Americano, deciden fundar el Club Deportivo Canes American Football para practicar y potenciar este deporte en Canarias. Partiendo de nuevas ideas y proyectos se intenta implementar una base sólida para que el Fútbol Americano sea una realidad.`
  String get our_team {
    return Intl.message(
      ' En el año 2017 un grupo de amigos y compañeros, compuestos en su mayoría por ex-jugadores de otros equipos de Fútbol Americano, deciden fundar el Club Deportivo Canes American Football para practicar y potenciar este deporte en Canarias. Partiendo de nuevas ideas y proyectos se intenta implementar una base sólida para que el Fútbol Americano sea una realidad.',
      name: 'our_team',
      desc: '',
      args: [],
    );
  }

  /// `El Club Deportivo Canes debuta en liga. Con un equipo con falta de entrenamiento y compuestos con jugadores que no se conocen en el terreno de juego, logra finalizar la liga en cuarto puesto después de haberle plantado cara y puesto contra las cuerdas al vigente campeón de la temporada.`
  String get year_one {
    return Intl.message(
      'El Club Deportivo Canes debuta en liga. Con un equipo con falta de entrenamiento y compuestos con jugadores que no se conocen en el terreno de juego, logra finalizar la liga en cuarto puesto después de haberle plantado cara y puesto contra las cuerdas al vigente campeón de la temporada.',
      name: 'year_one',
      desc: '',
      args: [],
    );
  }

  /// `Después de los resultados de la temporada anterior Canes es un rival a tener en cuenta en la competición. Muestra de ello son las innumerables muestras de interés por el deporte y por el propio equipo. Es tal el interés y el aumento de la plantilla del club que nos vemos obligados a crear un segundo equipo para así dar oportunidad a todos los jugadores de poder disfrutar de este deporte. Nace BlackCanes, equipo hermano de Canes.`
  String get year_two {
    return Intl.message(
      'Después de los resultados de la temporada anterior Canes es un rival a tener en cuenta en la competición. Muestra de ello son las innumerables muestras de interés por el deporte y por el propio equipo. Es tal el interés y el aumento de la plantilla del club que nos vemos obligados a crear un segundo equipo para así dar oportunidad a todos los jugadores de poder disfrutar de este deporte. Nace BlackCanes, equipo hermano de Canes.',
      name: 'year_two',
      desc: '',
      args: [],
    );
  }

  /// `En esta temporada Canes termina en tercer lugar, mejorando los resultados de la temporada anterior. BlackCanes, que nace esta temporada con jugadores que entran en contacto con este deporte por primera vez terminan en una muy buena sexta posición.`
  String get year_two_two {
    return Intl.message(
      'En esta temporada Canes termina en tercer lugar, mejorando los resultados de la temporada anterior. BlackCanes, que nace esta temporada con jugadores que entran en contacto con este deporte por primera vez terminan en una muy buena sexta posición.',
      name: 'year_two_two',
      desc: '',
      args: [],
    );
  }

  /// `Para esta nueva temporada tenemos varios proyectos y metas sobre la mesa. El primero es volver a darlo todo en la liga, mejorar la tercera posición de la temporada anterior y llegar a lo más alto de la tabla. Volver a participar en la Copa Canaria de Flag Football, y como en en la vez anterior, organizaremos una de las jornadas de dicho torneo en el municipio de Telde. Comenzaremos con los entrenamientos del equipo de tackle, para los cuales hemos adquirido nuevo material. Gracias a un convenio con el ayuntamiento de Telde participaremos en el proyecto  Engánchate al deporte mediante el cual iremos por los centros educativos enseñando el deporte y así poder formar una cantera joven.`
  String get year_three {
    return Intl.message(
      'Para esta nueva temporada tenemos varios proyectos y metas sobre la mesa. El primero es volver a darlo todo en la liga, mejorar la tercera posición de la temporada anterior y llegar a lo más alto de la tabla. Volver a participar en la Copa Canaria de Flag Football, y como en en la vez anterior, organizaremos una de las jornadas de dicho torneo en el municipio de Telde. Comenzaremos con los entrenamientos del equipo de tackle, para los cuales hemos adquirido nuevo material. Gracias a un convenio con el ayuntamiento de Telde participaremos en el proyecto  Engánchate al deporte mediante el cual iremos por los centros educativos enseñando el deporte y así poder formar una cantera joven.',
      name: 'year_three',
      desc: '',
      args: [],
    );
  }

  /// `Contact with us`
  String get contact_with_us {
    return Intl.message(
      'Contact with us',
      name: 'contact_with_us',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}