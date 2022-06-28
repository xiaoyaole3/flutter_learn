import 'package:dio/dio.dart';
import 'package:hello_world/components/service/config.dart';

class MyHttpRequest{

  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseUrl,
    connectTimeout: HttpConfig.timeOut
  );
  static final Dio dio = new Dio(baseOptions);


  static Future<T> request<T>(String url, {
    String method = "get",
    Map<String, dynamic>? params,
    Interceptor? interceptor,
  }) async {
    // 1. 创建个性化配置
    final option = Options(method: method);

    // 全局拦截器
    Interceptor dIter = InterceptorsWrapper(
      onRequest: (options, handler){
        print("请求拦截");
        return;
      },
      onResponse: (response, handler) {
        print("响应拦截");
        return;
      },
      onError: (err, handler) {
        print("错误拦截");
        return;
      }
    );
    List<Interceptor> inters = [dIter];
    if (interceptor != null) {
      inters.add(interceptor);
    }

    dio.interceptors.addAll(inters);


    // 2. 发送网络请求
    try {
      Response response = await dio.request(url,
          queryParameters: params,
          options: option);
      return response.data;

    } on DioError catch(e) {
      return Future.error(e);
    }

  }
}