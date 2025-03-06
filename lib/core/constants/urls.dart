class Urls {
  static const String baseUrl = 'https://erp.dfnbd.net/API';


  static const String getToken = '$baseUrl/getBearerToken';
  static const String Sms_send = '$baseUrl/send_sms';
  static const String Service_info = '$baseUrl/get_service_info';
  static const String add_msisdn = '$baseUrl/add_verified_msisdn';
  static const String client_info = '$baseUrl/get_client_basic_info';
  static const String updateClient_info = '$baseUrl/update_client_basic_info';
  static const String connectionRequest = '$baseUrl/add_new_connection_request';
  static const String checkConnectionRequest = '$baseUrl/get_new_connection_request_status';
  static const String clientType = '$baseUrl/get_all_clients_type';
  static const String transactionHistory = '$baseUrl/get_paid_bill';
  static const String trafficData = '$baseUrl/get_traffic_data';
  static const String addComplainData = '$baseUrl/add_complain_action';
  static const String getComplainData = '$baseUrl/get_client_complains';
  static const String getComplainList = '$baseUrl/get_complain_list';
  // get user location
  static const String get_division = '$baseUrl/get_division';
  static const String get_district = '$baseUrl/get_district';
  static const String get_upazila = '$baseUrl/get_upazila';
  static const String get_ward = '$baseUrl/get_ward';
  static const String get_post_office = '$baseUrl/get_post_office';
  static const String authenticate_clients = '$baseUrl/authenticate_clients';

  //Bikash payment
  static const String bkash_pay = '$baseUrl/bkash_pay';
}