import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {

  AdWidget getBannerAdWidget(int width, int height) {
    AdSize adSize = AdSize(
      width: width,
      height: height
    );
    BannerAd bannerAd = BannerAd(
      adUnitId: bannerAdUnitId,
      size: adSize,
      request: const AdRequest(),
      listener: bannerAdListener(),
    );
    bannerAd.load();
    return AdWidget(ad: bannerAd);
  }

  BannerAdListener bannerAdListener() {
    return BannerAdListener(
      // success.
      onAdLoaded: (Ad ad) => print('Ad successfully loaded.'),
      // failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.
        ad.dispose();
        print('Ad failed to load: $error');
      },
      // opened
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // removed from the scene
      onAdClosed: (Ad ad) => print('Ad closed.'),
      // impression occurred
      onAdImpression: (Ad ad) => print('Ad impression.'),
    );
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      // test ad
      return "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9085522828855425/7385871125";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}