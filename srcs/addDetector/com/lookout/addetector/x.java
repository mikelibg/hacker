package com.lookout.addetector;

import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import com.lookout.c.h;
import com.lookout.d.a.a.a;
import com.lookout.d.a.a.b;
import com.lookout.d.a.a.c;
import com.lookout.d.a.a.f;
import com.lookout.d.a.a.g;
import java.util.HashMap;
import java.util.List;

public final class x
{
  private static final c a = c.a("Security", 1);
  private static final f b = f.a("Warn", 1);
  private static final g c = g.a("Adware", 10);
  private static final HashMap d = new HashMap();

  public static final Intent a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    if (Integer.parseInt(Build.VERSION.SDK) >= 9)
    {
      localIntent.setClassName("com.android.settings", "com.android.settings.applications.InstalledAppDetails");
      localIntent.setData(Uri.parse("package:" + paramString));
      return localIntent;
    }
    localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
    localIntent.putExtra("com.android.settings.ApplicationPkgName", paramString);
    localIntent.putExtra("pkg", paramString);
    return localIntent;
  }

  static final h a()
  {
    j localj = new j();
    a(localj, "com.airpush.android.PushService", "Airpush");
    a(localj, "com.Leadbolt.AdNotification", "Leadbolt");
    a(localj, "com.Leadbolt.AdEncryption", "Leadbolt v3");
    a(localj, "com.appenda.AppNotify", "Appenda");
    a(localj, "com.moolah.NotificationService", "MoolahMedia");
    a(localj, "com.tapit.adview.notif.AdService", "TapIt");
    a(localj, "com.apperhand.device.android.AndroidSDKProvider", "Apperhand");
    a(localj, "com.urbanairship.push.PushService", "Urban Airship");
    a(localj, "com.admia.android.BootReceiver", "Admia");
    a(localj, "com.admia.android.PushService", "Admia");
    a(localj, "com.sellaring.sdk.PhoneStateReceiver", "SellARing");
    a(localj, "com.adfonic.android.AdActivity", "AdFonic");
    a(localj, "com.adknowledge.superrewards.ui.activites.SRWebViewActivity", "AdKnowledge");
    a(localj, "com.adknowledge.superrewards.ui.activities.SRPaymentMethodsActivity", "AdKnowledge");
    a(localj, "com.adknowledge.superrewards.ui.activities.SRDirectMethodsActivity", "AdKnowledge");
    a(localj, "com.adknowledge.superrewards.ui.activities.SROfferMethodsActivity", "AdKnowledge");
    a(localj, "com.aduru.sdk.receivers.AduruInstallReceiver", "Aduru");
    a(localj, "com.google.ads.Ad", "AdMob");
    a(localj, "com.google.ads.AdView", "AdMob");
    a(localj, "com.google.ads.AdListener", "AdMob");
    a(localj, "com.google.ads.AdActivity", "AdMob");
    a(localj, "com.google.ads.AdRequest", "AdMob");
    a(localj, "com.admob.andorid.ads.AdListener", "AdMob");
    a(localj, "com.admob.andorid.ads.AdManager", "AdMob");
    a(localj, "com.admob.andorid.ads.AdView", "AdMob");
    a(localj, "com.admob.andorid.ads.SimpleAdListener", "AdMob");
    a(localj, "com.mt.airad.AirAD", "AirAd");
    a(localj, "com.mt.airad.AirAdListener", "AirAd");
    a(localj, "com.burstly.lib.component.networkcomponent.burstly.BurstlyFullscreenActivity", "Burstly");
    a(localj, "com.burstly.lib.ui.BurstlyView", "Burstly");
    a(localj, "buzzcity.android.sdk.SplashBanner", "BuzzCity");
    a(localj, "buzzcity.android.sdk.SplashAds", "BuzzCity");
    a(localj, "buzzcity.android.sdk.ImgBanner", "BuzzCity");
    a(localj, "buzzcity.android.sdk.BCAdsClientBanner", "BuzzCity");
    a(localj, "buzzcity.android.sdk.TxtBanner", "BuzzCity");
    a(localj, "com.casee.adsdk.CaseeAdView", "Casee");
    a(localj, "com.casee.update.UpdateApp", "Casee");
    a(localj, "com.casee.update.UpdateListener", "Casee");
    a(localj, "com.casee.apptrack.AppInfo", "Casee");
    a(localj, "com.casee.apptrack.VersionTracker", "Casee");
    a(localj, "com.cauly.android.ad.AdView", "Cauly");
    a(localj, "com.cauly.android.ad.AdWebView", "Cauly");
    a(localj, "com.cauly.android.ad.AdInfo", "Cauly");
    a(localj, "com.cauly.android.ad.AdListener", "Cauly");
    a(localj, "com.everbadge.connect.Everbadge", "EverBadge");
    a(localj, "com.everbadge.connect.Installation", "EverBadge");
    a(localj, "com.everbadge.connect.Utils", "EverBadge");
    a(localj, "com.google.ads.AdResponse", "Google Ads");
    a(localj, "com.google.ads.AdSpec", "Google Ads");
    a(localj, "com.google.ads.AdUtil", "Google Ads");
    a(localj, "com.google.ads.AdViewListener", "Google Ads");
    a(localj, "com.google.ads.GoogleAdView", "Google Ads");
    a(localj, "com.greystripe.android.sdk.AdContentProvider", "GreyStripe");
    a(localj, "com.greystripe.android.sdk.AdView", "GreyStripe");
    a(localj, "com.inmobi.androidsdk.IMAdInterstitial", "InMobi");
    a(localj, "com.inmobi.androidsdk.IMAdInterstitialListener", "InMobi");
    a(localj, "com.inmobi.androidsdk.IMAdListener", "InMobi");
    a(localj, "com.inmobi.androidsdk.IMAdRequest", "InMobi");
    a(localj, "com.inmobi.androidsdk.IMAdView", "InMobi");
    a(localj, "com.jumptap.adtag.JTAppReport", "JumpTap");
    a(localj, "com.jumptap.adtag.JtAdView", "JumpTap");
    a(localj, "com.jumptap.adtag.JtAdViewListener", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.AdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.BrowserAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.CallAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.MapAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.StoreAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.VideoAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.actions.YouTubeAdAction", "JumpTap");
    a(localj, "com.jumptap.adtag.activity.JTVideo", "JumpTap");
    a(localj, "com.jumptap.adtag.activity.JtVideoAdView", "JumpTap");
    a(localj, "com.LogiaGroup.AdCore.LogiaAdManager", "LogiaAd");
    a(localj, "com.LogiaGroup.AdCore.LogiaAdView", "LogiaAd");
    a(localj, "com.LogiaGroup.AdCore.LogiaAdManager.LocationRequestType", "LogiaAd");
    a(localj, "com.mdotm.android.ads.MdotMManager", "MDotM");
    a(localj, "com.mdotm.android.ads.MdotMView", "MDotM");
    a(localj, "com.mdotm.android.ads.MdotmLandingPage", "MDotM");
    a(localj, "com.medialets.advertising.AdManagerService", "Medialets");
    a(localj, "com.millennialmedia.android.MMAdViewOverlayActivity", "Millennial");
    a(localj, "com.millennialmedia.android.VideoPlayer", "Millennial");
    a(localj, "com.millennialmedia.android.MMAdView.MMAdListener", "Millennial");
    a(localj, "com.millennialmedia.android.MMAdView", "Millennial");
    a(localj, "com.mobfox.sdk.InAppWebView", "MobFox");
    a(localj, "com.mobfox.sdk.BannerListener", "MobFox");
    a(localj, "com.mobfox.sdk.MobFoxView", "MobFox");
    a(localj, "com.mobfox.sdk.Mode", "MobFox");
    a(localj, "com.mobfox.sdk.RequestException", "MobFox");
    a(localj, "com.adserver.adview.AdServerView", "MOcean");
    a(localj, "com.adserver.adview.AdServerInterstitialView", "MOcean");
    a(localj, "com.adserver.adview.AdServerViewCore.OnAdClickListener", "MOcean");
    a(localj, "com.adserver.adview.AdServerViewCore.OnAdDownload", "MOcean");
    a(localj, "com.mopub.mobileads.MoPubView", "MoPub");
    a(localj, "com.mopub.mobileads.MoPubConversionTracker", "MoPub");
    a(localj, "com.mopub.mobileads.MoPubActivity", "MoPub");
    a(localj, "com.mopub.mobileads.AdView", "MoPub");
    a(localj, "com.smaato.SOMA.AdDownloader", "Smaato");
    a(localj, "com.smaato.SOMA.AdDownloader.MediaType", "Smaato");
    a(localj, "com.smaato.SOMA.AdListener", "Smaato");
    a(localj, "com.smaato.SOMA.ErrorCode", "Smaato");
    a(localj, "com.smaato.SOMA.SOMABanner", "Smaato");
    a(localj, "com.smaato.SOMA.SOMAVideo", "Smaato");
    a(localj, "com.smaato.SOMA.VideoListener", "Smaato");
    a(localj, "com.smaato.SOMA.SOMABanner.AnimationType", "Smaato");
    a(localj, "com.smaato.SOMA.SOMAReceivedBanner", "Smaato");
    a(localj, "com.smaato.SOMA.SOMAVideoBanner", "Smaato");
    a(localj, "com.smaato.SOMA.AdDownloader", "Smaato");
    a(localj, "com.vdopia.client.android.VDO", "VDopia");
    a(localj, "com.vdopia.client.android.VDOView", "VDopia");
    a(localj, "com.vdopia.client.android.VDOActivity", "VDopia");
    a(localj, "com.vdopia.client.android.VDOAdController", "VDopia");
    a(localj, "com.vdopia.client.android.VDOAdObject", "VDopia");
    a(localj, "com.vdopia.client.android.VDOBannerView", "VDopia");
    a(localj, "com.vdopia.client.android.VDOWebActivity", "VDopia");
    a(localj, "com.vdopia.client.android.VDOWebViewClient", "VDopia");
    a(localj, "com.vdopia.client.android.VDOParser", "VDopia");
    a(localj, "mobi.vserv.android.adengine.VservAdManager", "VServ");
    a(localj, "mobi.vserv.android.adengine.VservAgent", "VServ");
    a(localj, "mobi.vserv.android.adengine.VservConstants", "VServ");
    a(localj, "net.youmi.android.AdManager", "Youmi");
    a(localj, "net.youmi.android.AdView", "Youmi");
    a(localj, "net.youmi.android.AdActivity", "Youmi");
    a(localj, "net.youmi.android.AdViewListener", "Youmi");
    a(localj, "com.zestadz.android.ZestadzAd", "ZestAdz");
    a(localj, "com.zestadz.android.AdManager", "ZestAdz");
    a(localj, "com.zestadz.android.ZestADZAdView", "ZestAdz");
    a(localj, "com.zestadz.android.ZestadzAd", "ZestAdz");
    a(localj, "com.adwhirl.AdWhirlManager", "AdWhirl");
    a(localj, "com.adwhirl.AdWhirlTargeting", "AdWhirl");
    a(localj, "com.adwhirl.AdWhirlLayout", "AdWhirl");
    a(localj, "com.mobclix.android.sdk.MobclixBrowserActivity", "MobClix");
    a(localj, "com.mobclix.android.sdk.Mobclix", "MobClix");
    a(localj, "com.pontiflex.mobile.sdk.activities.RegistrationActivity", "Pontiflex");
    a(localj, "com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity", "Pontiflex");
    a(localj, "com.tapjoy.TapjoyConnectCore", "TapJoy");
    a(localj, "com.tapjoy.TapjoyConnect", "TapJoy");
    return localj;
  }

  private static void a(j paramj, String paramString1, String paramString2)
  {
    k localk = new k();
    localk.a(paramString1);
    localk.a().add(d.get(paramString2));
    paramj.b().add(localk);
  }

  static final void b()
  {
    b("Airpush");
    b("Leadbolt");
    b("Leadbolt v3");
    b("Appenda");
    b("MoolahMedia");
    b("TapIt");
    b("Apperhand");
    b("Urban Airship");
    b("Admia");
    b("AdFonic");
    b("AdKnowledge");
    b("AdMob");
    b("Aduru");
    b("AirAd");
    b("Burstly");
    b("BuzzCity");
    b("Casee");
    b("Cauly");
    b("EverBadge");
    b("Google Ads");
    b("GreyStripe");
    b("InMobi");
    b("JumpTap");
    b("LogiaAd");
    b("MDotM");
    b("Medialets");
    b("Millennial");
    b("MobFox");
    b("MOcean");
    b("MoPub");
    b("Smaato");
    b("VDopia");
    b("VServ");
    b("Youmi");
    b("ZestAdz");
    b("SellARing");
    b("AdWhirl");
    b("MobClix");
    b("Pontiflex");
    b("TapJoy");
  }

  private static void b(String paramString)
  {
    com.lookout.d.a.a.e locale = com.lookout.d.a.a.e.a();
    int i = locale.b();
    locale.a(new a(i, b.a(), a, paramString, c, "Android", paramString, "a", b, "", ""));
    d.put(paramString, new com.lookout.c.e(i));
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.x
 * JD-Core Version:    0.5.3
 */