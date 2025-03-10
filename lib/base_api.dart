import 'package:dio/dio.dart';

/// Base API interface that defines the core structure for API clients
abstract class BaseApi {
  factory BaseApi(String accessToken) => _BaseApiImpl(accessToken);

  /// Access to various services provided by the API
  Map<String, BaseService> get services;
  
  /// Get a specific service by name
  T getService<T extends BaseService>(String serviceName);
}

class _BaseApiImpl implements BaseApi {
  final String accessToken;
  final Map<String, BaseService> _services = {};

  _BaseApiImpl(this.accessToken);

  @override
  Map<String, BaseService> get services => _services;

  @override
  T getService<T extends BaseService>(String serviceName) {
    if (!_services.containsKey(serviceName)) {
      throw Exception('Service $serviceName not found');
    }
    return _services[serviceName] as T;
  }
  
  /// Register a service with the API
  void registerService(String name, BaseService service) {
    _services[name] = service;
  }
}

/// Base service interface for all API services
abstract class BaseService {
  BaseService({required String accessToken})
      : _helper = ServiceHelper(accessToken);

  final ServiceHelper _helper;

  Future<Response<dynamic>> get(
    String unencodedPath, {
    Map<String, String> headers = const {},
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      _helper.get(
        unencodedPath,
        queryParameters: queryParameters,
      );

  Future<Response<dynamic>> post(
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async =>
      _helper.post(
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
      );
}

/// Helper class for making HTTP requests
class ServiceHelper {
  const ServiceHelper(this.accessToken);

  final String accessToken;
  final String baseUrl = 'https://api.tumblr.com/v2/';

  Future<Response<dynamic>> get(
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      final dio = Dio();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      
      final response = await dio.get(
        '$baseUrl$unencodedPath',
        queryParameters: queryParameters,
      );

      return response;
    } catch (e) {
      throw Exception('Failed to get data: $e');
    }
  }

  Future<Response<dynamic>> post(
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final dio = Dio();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      
      final response = await dio.post(
        '$baseUrl$unencodedPath',
        queryParameters: queryParameters,
        data: body,
      );

      return response;
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }
}