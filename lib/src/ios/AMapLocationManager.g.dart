import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationManager extends NSObject  {
  // 生成getters
  Future<double> get_distanceFilter() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_distanceFilter", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_desiredAccuracy() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_desiredAccuracy", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_locationTimeout() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locationTimeout", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_reGeocodeTimeout() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeTimeout", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_locatingWithReGeocode() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locatingWithReGeocode", {'refId': refId});
  
    return result;
  }
  
  Future<AMapLocationReGeocodeLanguage> get_reGeocodeLanguage() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeLanguage", {'refId': refId});
  
    return AMapLocationReGeocodeLanguage.values[result];
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_delegate(AMapLocationManagerDelegate delegate) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('AMapLocationManagerDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::AMapLocationManagerDelegate::amapLocationManagerDoRequireLocationAuth':
            // 日志打印
            print('fluttify-dart-callback: amapLocationManagerDoRequireLocationAuth([])');
        
              // 调用回调方法
            delegate?.amapLocationManagerDoRequireLocationAuth(AMapLocationManager()..refId = (args['manager']), CLLocationManager()..refId = (args['locationManager']));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManagerDidFailWithError':
            // 日志打印
            print('fluttify-dart-callback: amapLocationManagerDidFailWithError([])');
        
              // 调用回调方法
            delegate?.amapLocationManagerDidFailWithError(AMapLocationManager()..refId = (args['manager']), NSError()..refId = (args['error']));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManagerDidChangeAuthorizationStatus':
            // 日志打印
            print('fluttify-dart-callback: amapLocationManagerDidChangeAuthorizationStatus([])');
        
              // 调用回调方法
            delegate?.amapLocationManagerDidChangeAuthorizationStatus(AMapLocationManager()..refId = (args['manager']), CLAuthorizationStatus.values[(args['status'])]);
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration':
            // 日志打印
            print('fluttify-dart-callback: amapLocationManagerShouldDisplayHeadingCalibration([])');
        
              // 调用回调方法
            delegate?.amapLocationManagerShouldDisplayHeadingCalibration(AMapLocationManager()..refId = (args['manager']));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_distanceFilter(double distanceFilter) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_distanceFilter', {'refId': refId, "distanceFilter": distanceFilter});
  
  
  }
  
  Future<void> set_desiredAccuracy(double desiredAccuracy) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_desiredAccuracy', {'refId': refId, "desiredAccuracy": desiredAccuracy});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_locationTimeout(int locationTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locationTimeout', {'refId': refId, "locationTimeout": locationTimeout});
  
  
  }
  
  Future<void> set_reGeocodeTimeout(int reGeocodeTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeTimeout', {'refId': refId, "reGeocodeTimeout": reGeocodeTimeout});
  
  
  }
  
  Future<void> set_locatingWithReGeocode(bool locatingWithReGeocode) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locatingWithReGeocode', {'refId': refId, "locatingWithReGeocode": locatingWithReGeocode});
  
  
  }
  
  Future<void> set_reGeocodeLanguage(AMapLocationReGeocodeLanguage reGeocodeLanguage) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeLanguage', {'refId': refId, "reGeocodeLanguage": reGeocodeLanguage.index});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation', {'refId': refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  

  // 生成方法们
  static Future<bool> headingAvailable() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager::headingAvailable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::headingAvailable', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> startUpdatingHeading() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::startUpdatingHeading([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingHeading', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> stopUpdatingHeading() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::stopUpdatingHeading([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingHeading', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> dismissHeadingCalibrationDisplay() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::dismissHeadingCalibrationDisplay([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> requestLocationWithReGeocodeCompletionBlock(bool withReGeocode, void completionBlock(CLLocation location, AMapLocationReGeocode regeocode, NSError error)) async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::requestLocationWithReGeocode([\'withReGeocode\':$withReGeocode])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::requestLocationWithReGeocodeCompletionBlock', {"withReGeocode": withReGeocode, "refId": refId});
  
  
    // 接受原生回调
    MethodChannel('AMapLocationManager::requestLocationWithReGeocodeCompletionBlock::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::AMapLocatingCompletionBlock::AMapLocatingCompletionBlock':
              // 日志打印
        
        
                // 调用回调方法
              completionBlock(CLLocation()..refId = (args['location']), AMapLocationReGeocode()..refId = (args['regeocode']), NSError()..refId = (args['error']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> startUpdatingLocation() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::startUpdatingLocation([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> stopUpdatingLocation() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::stopUpdatingLocation([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}