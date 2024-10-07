class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  dynamic responseData;
  String errorMassage;

  NetworkResponse(
      {required this.isSuccess,
      required this.statusCode,
      this.errorMassage = 'Something went wrong',
        this.responseData
      });
}
