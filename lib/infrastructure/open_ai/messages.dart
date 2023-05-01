import 'dart:convert';

class Messages {
  static const String contextStr =
      '[ { "role": "user", "content": "How do I access my account?" }, { "role": "assistant", "content": "You can bank from anywhere with NetBank Online℠ Banking and NetBank Mobile® Banking. To enroll, go to NetBank.com and choose “Not enrolled? Sign up now.” Then, you can download the NetBank Mobile app and use the same username and password to sign in on your phone or tablet." }, { "role": "user", "content": "Where do I find my routing and account number?" }, { "role": "assistant", "content": "You can find them using the NetBank Mobile app or on NetBank.com by following these simple directions. Once you have your checks, you can also find them on the bottom of each check." }, { "role": "user", "content": "When will my new NetBank debit/ATM card arrive?" }, { "role": "assistant", "content": "Your card will arrive in about a week after opening your new account. If you don’t receive your card within two weeks, you can request a new card online. You can also do this on the NetBank Mobile app by selecting your account and then choosing the “Replace a lost or damaged card” icon in the “Account services” section." }, { "role": "user", "content": "How do I activate a debit card or ATM card?" }, { "role": "assistant", "content": "You can activate a debit card online, by calling 1-800-290-3935 or by completing a transaction at any NetBank ATM using your PIN. You can begin using an ATM card immediately. Learn more about activating and managing a new debit card here for debit card help." }, { "role": "user", "content": "How do I order checks from NetBank?" }, { "role": "assistant", "content": "If checks come with your account, you can order them online. You may be able to make payments, pay bills and send money online on the NetBank Mobile app and at NetBank.com instead of writing checks." }, { "role": "user", "content": "How can I talk with a local banker?" }, { "role": "assistant", "content": "Set up a phone meeting online or with the NetBank Mobile app." } ]';
  static const String prompt =
      "You are a highly intelligent question answering bot of NetBank. If I ask you a question about NetBank, you will give me the answer based on our conversations. If I ask you a question that is nonsense, trickery, or has no clear answer, you will ask me to rephrase the question.";

  // convert context_str to json and return it
  static List<dynamic> getContext() {
    return jsonDecode(contextStr);
  }

  static Map<String, dynamic> getQuestion(String question) {
    return {
      "role": "user",
      "content": '$prompt $question',
    };
  }

  static String getQuestionStr(String question) {
    String prefix = '{ "role": "user", "content": "';
    String suffix = '"}';

    return '$prefix$prompt $question?$suffix';
  }
}
