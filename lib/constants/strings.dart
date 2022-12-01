class StringHelper {
  StringHelper._();

  static const String IS_LOGIN = "isLogin";
  static const String BASE_URL = "https://api.ytel.com/";
  static const String ACCESS_TOKEN = "accessToken";
  static const String REFRESH_TOKEN = "refreshToken";
  static const String ACCOUNT_ID = "accountId";


  static const String NO_INTERNET = "No internet connection!";
  static const String INVALID_DATA = "Invalid data";


  // Images

  // list

   static List<String> call_details = [
    'Active Calls',
    'Logged In',
    'Outbound Calls',
    'Inbound Calls',
    'Avg. Duration',
    'Next call',

  ];
    static List<String> filters= [
    'List Id',
    'Appointment status',
    'Agent name',
    'Patient name',
    'Study code',

  ];
  static List<String> titles = [
    'Campaign',
    'Count of Lists in Campaign',
    'Total Calls in this Campaign',
    'Total dialed',
    'Total Missed',
    'Leads in Hopper',
    'Dial Method',
    'Dialed %',
    'Missed %',
    'Pending %',
    'Total Pending to be dialed',
    'Count of Do Not Call list',
    'Count of Call completed Count',
    'Count of Left voicemail',
    'Count of Caller hung up',
    'Count of No answer',
    'Count of Wrong number',

  ];
}