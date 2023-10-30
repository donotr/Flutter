


import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState>{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationsBloc() : super(const NotificationState()){

    on<NotificationStatusChanged>( _notificationStatusChanged );
    on<NotificationReceived>( _onPushMessageReceived );

    //Verificar estado de las notificaciones
    //_initialStatusCheck();

    //Listener para notificaciones en Foreground
    //_onForegroundMessage();
  } 
}