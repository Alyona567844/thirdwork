import 'package:dio/dio.dart';
import 'package:thirdwork/thirdwork.dart' as thirdwork;

void main(List<String> arguments) async {
  print('h1');
  await rsp(10);
  print('h2')

  try {
    var response = await slp(3);
    print(response);
  } catch (e) {
    print('Ошибки были, но сейчас всё хорошо');
  }
  print('Работа программы завершена');
}

Future<int> slp(int num) {
  if (num % 2 == 0) {
    return Future.value(num * 2);
  } else {
    return Future.error(Exception('Очень непредвиденная ошибка'));
  }
}

Future<void> rsp(int num) {
  
}