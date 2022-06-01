import 'package:get_it/get_it.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/push_notification_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
   locator.registerLazySingleton(() => PushNotificationService());
}
