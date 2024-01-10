import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_deepConversations')) {
        try {
          _deepConversations =
              jsonDecode(prefs.getString('ff_deepConversations') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _deepConversations = jsonDecode(
      '{"name":"Deep Conversation Pack","price":0.99,"items":[{"difficulty":1,"question":"What is something you\'ve failed at recently?","favourite":false},{"difficulty":1,"question":"What made you choose this as your career?","favourite":false},{"difficulty":1,"question":"What\'s the most interesting thing you\'ve worked on lately?","favourite":false},{"difficulty":1,"question":"What do you love most about your job?","favourite":false},{"difficulty":1,"question":"What was your first job?","favourite":false},{"difficulty":1,"question":"How long have you been at your current job?","favourite":false},{"difficulty":1,"question":"Why do you think you were hired?","favourite":false},{"difficulty":1,"question":"What is the most frustrating thing about your job?","favourite":false},{"difficulty":1,"question":"What are your goals when it comes to work?","favourite":false},{"difficulty":1,"question":"What inspires you at work each day?","favourite":false},{"difficulty":1,"question":"If you could change one thing about this industry, what would it be?","favourite":false},{"difficulty":1,"question":"Who has been your career role model?","favourite":false},{"difficulty":1,"question":"Man, I really hate networking.","favourite":false},{"difficulty":1,"question":"What\'s the most interesting thing you\'ve learned at work?","favourite":false},{"difficulty":1,"question":"Do you ever travel for your job? Where have you gone?","favourite":false},{"difficulty":1,"question":"How do you keep yourself organized every day?","favourite":false},{"difficulty":1,"question":"How many emails have you been avoiding answering this week?","favourite":false},{"difficulty":1,"question":"What do you think makes someone a great manager?","favourite":false},{"difficulty":1,"question":"What\'s the biggest challenge you\'ve taken on this year?","favourite":false},{"difficulty":1,"question":"What\'s your favorite project you\'ve worked on so far?","favourite":false},{"difficulty":1,"question":"What do you find most beneficial about networking events?","favourite":false},{"difficulty":1,"question":"Do you ever sing in the shower?","favourite":false},{"difficulty":1,"question":"What\'s the most embarrassing thing that\'s happened to you recently?","favourite":false},{"difficulty":1,"question":"Tell me about the worst pickup line you\'ve ever gotten.","favourite":false},{"difficulty":1,"question":"What is your favorite celebrity scandal right now?","favourite":false},{"difficulty":1,"question":"What\'s the worst thing you\'ve ever worn?","favourite":false},{"difficulty":1,"question":"If you could do anything illegal without getting in trouble, what would it be?","favourite":false},{"difficulty":1,"question":"What is the stupidest joke you\'ve ever heard?","favourite":false},{"difficulty":1,"question":"When was the last time you laughed so hard you cried?","favourite":false},{"difficulty":1,"question":"What\'s the best prank you\'ve ever played on someone?","favourite":false},{"difficulty":1,"question":"What do you think is the funniest movie ever?","favourite":false},{"difficulty":1,"question":"What always makes you laugh, even when you\'re upset?","favourite":false},{"difficulty":1,"question":"Who is your favorite comedian?","favourite":false},{"difficulty":1,"question":"What weird conspiracy theory do you believe?","favourite":false},{"difficulty":1,"question":"Is a hot dog a sandwich?","favourite":false},{"difficulty":1,"question":"Which celebrity would play you in a movie about your life?","favourite":false},{"difficulty":1,"question":"What\'s the weirdest thing you loved as a child?","favourite":false},{"difficulty":1,"question":"What is something that\'s really popular right now that will be ridiculous in five years?","favourite":false},{"difficulty":1,"question":"What\'s the worst trend you\'ve ever taken part in?","favourite":false},{"difficulty":1,"question":"What\'s your go-to joke?","favourite":false},{"difficulty":1,"question":"Where do you go to school?","favourite":false},{"difficulty":1,"question":"What\'s your favorite subject/class?","favourite":false},{"difficulty":1,"question":"Who is your favorite teacher?","favourite":false},{"difficulty":1,"question":"Why is that person your favorite teacher?","favourite":false},{"difficulty":1,"question":"What subject do you wish you never had to take?","favourite":false},{"difficulty":1,"question":"What was the last assignment you did really well on?","favourite":false},{"difficulty":1,"question":"Who is your best friend in your grade?","favourite":false},{"difficulty":1,"question":"What\'s your favorite outfit to wear to school?","favourite":false},{"difficulty":1,"question":"Do you believe in aliens?","favourite":false},{"difficulty":1,"question":"If you could be any animal, which would it be?","favourite":false},{"difficulty":1,"question":"What do you want to be when you grow up?","favourite":false},{"difficulty":1,"question":"Do you have any brothers or sisters?","favourite":false},{"difficulty":1,"question":"What do you love the most about your mom and dad?","favourite":false},{"difficulty":1,"question":"Where do you wish you were right now?","favourite":false},{"difficulty":1,"question":"What\'s your favorite song?","favourite":false},{"difficulty":1,"question":"Who\'s your favorite cartoon character?","favourite":false},{"difficulty":1,"question":"Do you have a favorite Disney character?","favourite":false},{"difficulty":1,"question":"If you could change one thing about school, what would it be?","favourite":false},{"difficulty":1,"question":"Do you like to swim?","favourite":false},{"difficulty":1,"question":"What\'s your favorite game to play?","favourite":false},{"difficulty":1,"question":"What\'s your favorite color?","favourite":false},{"difficulty":1,"question":"What food do you hate?","favourite":false},{"difficulty":1,"question":"What is your favorite toy to play with?","favourite":false},{"difficulty":1,"question":"What are you doing tomorrow?","favourite":false},{"difficulty":1,"question":"What are you afraid of?","favourite":false},{"difficulty":1,"question":"Have you ever been here before?","favourite":false},{"difficulty":1,"question":"What is one thing that always makes you laugh?","favourite":false},{"difficulty":1,"question":"What\'s the most important thing I should know about you?","favourite":false},{"difficulty":1,"question":"What\'s the worst date you\'ve ever been on?","favourite":false},{"difficulty":1,"question":"How did you become close with your best friend?","favourite":false},{"difficulty":1,"question":"What\'s your favorite movie that you could watch over and over again?","favourite":false},{"difficulty":1,"question":"What has always been your dream job?","favourite":false},{"difficulty":1,"question":"If you could date one celebrity, who would it be?","favourite":false},{"difficulty":1,"question":"Are you a spender or a saver?","favourite":false},{"difficulty":1,"question":"What do you like most about your job?","favourite":false},{"difficulty":1,"question":"What do you think is your most annoying quirk?","favourite":false},{"difficulty":1,"question":"What\'s the weirdest text message you\'ve ever gotten?","favourite":false},{"difficulty":1,"question":"What do you hate the most about dating?","favourite":false},{"difficulty":1,"question":"Where\'s your favorite place in the world?","favourite":false},{"difficulty":1,"question":"What\'s the best vacation you\'ve ever been on?","favourite":false},{"difficulty":1,"question":"How close are you with your family?","favourite":false},{"difficulty":1,"question":"Do you prefer to stay in or go out?","favourite":false},{"difficulty":1,"question":"Where did you go to school?","favourite":false},{"difficulty":1,"question":"Have you ever lived anywhere else?","favourite":false},{"difficulty":1,"question":"What are you good at that you\'re really proud of?","favourite":false},{"difficulty":1,"question":"What\'s your secret talent?","favourite":false},{"difficulty":1,"question":"What do you think is the most annoying habit?","favourite":false},{"difficulty":1,"question":"Tell me about one thing on your bucket list.","favourite":false},{"difficulty":1,"question":"What do you dislike most about your job?","favourite":false},{"difficulty":1,"question":"What are you the most passionate about?","favourite":false},{"difficulty":1,"question":"Do you like calling or texting better?","favourite":false},{"difficulty":1,"question":"What are your honest thoughts about social media?","favourite":false},{"difficulty":1,"question":"What do you look for in a relationship?","favourite":false},{"difficulty":1,"question":"Did you hear about (a big news story)?","favourite":false},{"difficulty":1,"question":"What is one thing that made you laugh this week?","favourite":false},{"difficulty":1,"question":"What\'s your favorite food?","favourite":false},{"difficulty":1,"question":"What\'s the worst thing you\'ve ever eaten?","favourite":false},{"difficulty":1,"question":"What movie are you really excited to see?","favourite":false},{"difficulty":1,"question":"How do you spend your free time?","favourite":false},{"difficulty":1,"question":"Are you a morning person or a night owl?","favourite":false},{"difficulty":1,"question":"What are you drinking?","favourite":false},{"difficulty":1,"question":"What drink should I order next?","favourite":false},{"difficulty":1,"question":"Have you ever been here before?","favourite":false},{"difficulty":1,"question":"What\'s your favorite bar?","favourite":false},{"difficulty":1,"question":"What\'s your favorite thing to eat here?","favourite":false},{"difficulty":1,"question":"Do you like this song?","favourite":false},{"difficulty":1,"question":"If you could have them play any song right now, what would it be?","favourite":false},{"difficulty":1,"question":"What were you doing before you came here?","favourite":false},{"difficulty":1,"question":"What\'s your favorite place to hang out around here?","favourite":false},{"difficulty":1,"question":"Are you having fun?","favourite":false},{"difficulty":1,"question":"Who are you here with?","favourite":false},{"difficulty":1,"question":"Where would you rather be right now?","favourite":false},{"difficulty":1,"question":"Which song would you make you dance at this very moment?","favourite":false},{"difficulty":1,"question":"How do you always get a bartender\'s attention?","favourite":false},{"difficulty":1,"question":"Would you ever dance on top of this bar?","favourite":false},{"difficulty":1,"question":"Have you ever done karaoke?","favourite":false},{"difficulty":1,"question":"I like your shirt, where did you get that?","favourite":false},{"difficulty":1,"question":"How do you know the friends you\'re here with?","favourite":false},{"difficulty":1,"question":"Do you know so-and-so?","favourite":false},{"difficulty":1,"question":"What made you laugh today?","favourite":false},{"difficulty":1,"question":"If you could only eat one food for the rest of your life, what would it be?","favourite":false},{"difficulty":1,"question":"What\'s your best tip for saving money?","favourite":false},{"difficulty":1,"question":"What is your favorite quote right now?","favourite":false},{"difficulty":1,"question":"Have you talked to so-and-so lately?","favourite":false},{"difficulty":1,"question":"What have you been up to since I saw you last?","favourite":false},{"difficulty":1,"question":"Has anything big changed at work?","favourite":false},{"difficulty":1,"question":"How are your parents doing?","favourite":false},{"difficulty":1,"question":"What have you been loving on TV lately?","favourite":false},{"difficulty":1,"question":"What\'s your best tip for a good morning routine?","favourite":false},{"difficulty":1,"question":"What\'s your best cooking tip?","favourite":false},{"difficulty":1,"question":"What\'s the weirdest thing you\'ve seen on Facebook recently?","favourite":false},{"difficulty":1,"question":"Where is your favorite place to shop?","favourite":false},{"difficulty":1,"question":"How was your last vacation?","favourite":false},{"difficulty":1,"question":"Where is the coolest place you\'ve been to for dinner lately?","favourite":false},{"difficulty":1,"question":"What\'s your go-to dish to bring to a dinner party?","favourite":false},{"difficulty":1,"question":"What did you do last weekend?","favourite":false},{"difficulty":1,"question":"What app do you use everyday?","favourite":false},{"difficulty":1,"question":"What\'s the weirdest thing in your fridge right now?","favourite":false},{"difficulty":1,"question":"What are your plans for next summer?","favourite":false},{"difficulty":1,"question":"What\'s your favorite thing you\'ve bought recently?","favourite":false},{"difficulty":1,"question":"How can you tell when someone is lying?","favourite":false},{"difficulty":1,"question":"What\'s your most irrational fear?","favourite":false},{"difficulty":1,"question":"Have you ever really kept a New Year\'s resolution?","favourite":false},{"difficulty":1,"question":"If you could change your name, what would you change it to?","favourite":false},{"difficulty":1,"question":"How would your life be different if social media didn\'t exist?","favourite":false},{"difficulty":1,"question":"What do you think my best personality trait is?","favourite":false},{"difficulty":1,"question":"What did you notice first about me?","favourite":false},{"difficulty":1,"question":"What\'s your favorite thing to do on your day off work?","favourite":false},{"difficulty":1,"question":"What was the first job you ever had?","favourite":false},{"difficulty":1,"question":"What\'s the best compliment you\'ve ever gotten?","favourite":false}]}');
  dynamic get deepConversations => _deepConversations;
  set deepConversations(dynamic value) {
    _deepConversations = value;
    prefs.setString('ff_deepConversations', jsonEncode(value));
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
