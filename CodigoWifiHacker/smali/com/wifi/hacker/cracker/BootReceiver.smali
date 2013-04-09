.class public Lcom/wifi/hacker/cracker/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;,
        Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;,
        Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;,
        Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;,
        Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;
    }
.end annotation


# static fields
.field public static AIRPUSH_APIKEY:Ljava/lang/String;

.field public static AIRPUSH_APPID:Ljava/lang/String;

.field public static CHARTBOOST_APPID:Ljava/lang/String;

.field public static CHARTBOOST_APPSIG:Ljava/lang/String;

.field public static DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR:J

.field public static DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS:J

.field public static KEY_DISCLAIMER:Ljava/lang/String;

.field public static KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

.field public static KEY_INSTALL_TIME:Ljava/lang/String;

.field public static KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

.field public static KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

.field public static KEY_INTERSTITIAL_START:Ljava/lang/String;

.field public static KEY_INTERSTITIAL_TABVIEW:Ljava/lang/String;

.field public static KEY_LAST_ICON_TITLE:Ljava/lang/String;

.field public static KEY_LAST_ICON_URL:Ljava/lang/String;

.field public static KEY_LAST_NOTIFICATION_DESCRIPTION:Ljava/lang/String;

.field public static KEY_LAST_NOTIFICATION_PACKAGE:Ljava/lang/String;

.field public static KEY_LAST_NOTIFICATION_TITLE:Ljava/lang/String;

.field public static KEY_LETANG_OPTIONS:Ljava/lang/String;

.field public static KEY_LETANG_TIME:Ljava/lang/String;

.field public static KEY_NUM_REVMOB_CLICKED:Ljava/lang/String;

.field public static KEY_NUM_REVMOB_DISMISSED:Ljava/lang/String;

.field public static KEY_NUM_REVMOB_SHOWN:Ljava/lang/String;

.field public static KEY_PARSE_ERROR_INTERVAL:Ljava/lang/String;

.field public static KEY_PARSE_LOADED:Ljava/lang/String;

.field public static KEY_PARSE_UPDATE_INTERVAL:Ljava/lang/String;

.field public static KEY_PUSH_NOTIFICATION:Ljava/lang/String;

.field public static KEY_RATE_POPUP:Ljava/lang/String;

.field public static LEADBOLT_ICONS_SECTIONID:Ljava/lang/String;

.field public static LEADBOLT_INTERSTITIAL_SECTIONID:Ljava/lang/String;

.field public static LEADBOLT_NOTIFICATIONS_SECTIONID:Ljava/lang/String;

.field public static LEADBOLT_OFFERWALL_SECTIONID:Ljava/lang/String;

.field public static MOPUB_BANNERID:Ljava/lang/String;

.field public static MOPUB_INTERSTITIALID:Ljava/lang/String;

.field public static MOPUB_MEDIUMID:Ljava/lang/String;

.field public static PARSE_APPID:Ljava/lang/String;

.field public static PARSE_CLIENTKEY:Ljava/lang/String;

.field public static RATE_ME_REQUEST_CODE:I

.field public static RATE_POPUP_MESSAGE:Ljava/lang/String;

.field public static REVMOB_ID:Ljava/lang/String;

.field private static activityToMoPubInterstitialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private static mAirpush:Lcom/airpush/android/Airpush;

.field private static mLoadingDialog:Landroid/app/ProgressDialog;

.field public static numTimesExitPressed:I

.field public static revmob:Lcom/revmob/RevMob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "We hope you found this app very useful! If you want to say thanks, you can rate it 5 stars :)"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_POPUP_MESSAGE:Ljava/lang/String;

    .line 71
    const-string v0, "779332564"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_NOTIFICATIONS_SECTIONID:Ljava/lang/String;

    .line 72
    const-string v0, "270169407"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_ICONS_SECTIONID:Ljava/lang/String;

    .line 73
    const-string v0, "0"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_INTERSTITIAL_SECTIONID:Ljava/lang/String;

    .line 74
    const-string v0, "0"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_OFFERWALL_SECTIONID:Ljava/lang/String;

    .line 75
    const-string v0, "77745"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->AIRPUSH_APPID:Ljava/lang/String;

    .line 76
    const-string v0, "airpush"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->AIRPUSH_APIKEY:Ljava/lang/String;

    .line 78
    const-string v0, "5087517317ba473852000018"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->CHARTBOOST_APPID:Ljava/lang/String;

    .line 79
    const-string v0, "d8f23908414d89ea03bfbd14bc0cbdceb98a69ec"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->CHARTBOOST_APPSIG:Ljava/lang/String;

    .line 82
    const-string v0, "0"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_BANNERID:Ljava/lang/String;

    .line 83
    const-string v0, "0"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_INTERSTITIALID:Ljava/lang/String;

    .line 84
    const-string v0, "0"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_MEDIUMID:Ljava/lang/String;

    .line 85
    const-string v0, "5087517b3763c07c00000025"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    .line 86
    const-string v0, "hn5m8vPBQNBAFthghlYBky4EjsOZWs1rg32IuOb1"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->PARSE_APPID:Ljava/lang/String;

    .line 87
    const-string v0, "KN3jwiJrFcahCgx21vuFu2aJTv34pC6IdKVq5Qep"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->PARSE_CLIENTKEY:Ljava/lang/String;

    .line 89
    sput-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->mAirpush:Lcom/airpush/android/Airpush;

    .line 91
    const-string v0, "a"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_RATE_POPUP:Ljava/lang/String;

    .line 92
    const-string v0, "b"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_SHOWN:Ljava/lang/String;

    .line 93
    const-string v0, "c"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_DISMISSED:Ljava/lang/String;

    .line 94
    const-string v0, "d"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_CLICKED:Ljava/lang/String;

    .line 95
    const-string v0, "f"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_DISCLAIMER:Ljava/lang/String;

    .line 97
    const-string v0, "h"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_LOADED:Ljava/lang/String;

    .line 98
    const-string v0, "i"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INSTALL_TIME:Ljava/lang/String;

    .line 99
    const-string v0, "j"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_TIME:Ljava/lang/String;

    .line 101
    const-string v0, "k"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_TITLE:Ljava/lang/String;

    .line 102
    const-string v0, "l"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_TITLE:Ljava/lang/String;

    .line 103
    const-string v0, "m"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_PACKAGE:Ljava/lang/String;

    .line 104
    const-string v0, "n"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_DESCRIPTION:Ljava/lang/String;

    .line 105
    const-string v0, "o"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_URL:Ljava/lang/String;

    .line 108
    const-string v0, "interstitial_start"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_START:Ljava/lang/String;

    .line 109
    const-string v0, "interstitial_exit"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

    .line 110
    const-string v0, "interstitial_tabview"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_TABVIEW:Ljava/lang/String;

    .line 111
    const-string v0, "interstitial_letang"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    .line 112
    const-string v0, "letang_options"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_OPTIONS:Ljava/lang/String;

    .line 113
    const-string v0, "parse_update_interval"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_UPDATE_INTERVAL:Ljava/lang/String;

    .line 114
    const-string v0, "parse_error_interval"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_ERROR_INTERVAL:Ljava/lang/String;

    .line 117
    const-string v0, "grabos_interstitial"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    .line 118
    const-string v0, "push_notification"

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PUSH_NOTIFICATION:Ljava/lang/String;

    .line 121
    const/16 v0, 0x175

    sput v0, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_ME_REQUEST_CODE:I

    .line 122
    sput-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 126
    const-wide/16 v0, 0x2760

    sput-wide v0, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS:J

    .line 127
    const-wide/16 v0, 0x870

    sput-wide v0, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR:J

    .line 1555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->activityToMoPubInterstitialMap:Ljava/util/HashMap;

    .line 2208
    const/4 v0, 0x0

    sput v0, Lcom/wifi/hacker/cracker/BootReceiver;->numTimesExitPressed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2101
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->startNotificationAds(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowInterstitial(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultMoreApps(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/Activity;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/wifi/hacker/cracker/BootReceiver;->doPostDisclaimerStuff(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowMoreApps(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowLandingPage(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowPopupAd(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowPopupAd(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobDirectLink(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->leadboltShowMoreApps(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostShowInterstitial(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostShowMoreApps(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static airpushShowInterstitial(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2012
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2013
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2015
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 2016
    .local v0, airpush:Lcom/airpush/android/Airpush;
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startSmartWallAd()V

    .line 2020
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2021
    :cond_1
    return-void
.end method

.method private static airpushShowLandingPage(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2048
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2049
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2050
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 2051
    .local v0, airpush:Lcom/airpush/android/Airpush;
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startLandingPageAd()V

    .line 2055
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2056
    :cond_1
    return-void
.end method

.method private static airpushShowMoreApps(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2037
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2038
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2039
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 2040
    .local v0, airpush:Lcom/airpush/android/Airpush;
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startSmartWallAd()V

    .line 2044
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2045
    :cond_1
    return-void
.end method

.method private static airpushShowPopupAd(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2024
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2025
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 2028
    .local v0, airpush:Lcom/airpush/android/Airpush;
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startDialogAd()V

    .line 2032
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2033
    :cond_1
    return-void
.end method

.method private static airpushStartIcons(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1843
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 1844
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 1846
    .local v0, airpush:Lcom/airpush/android/Airpush;
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startIconAd()V

    .line 1849
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    return-void
.end method

.method private static airpushStartNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1834
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 1835
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1836
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;

    move-result-object v0

    .line 1837
    .local v0, airpush:Lcom/airpush/android/Airpush;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airpush/android/Airpush;->startPushNotification(Z)V

    .line 1840
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    :cond_0
    return-void
.end method

.method public static applovinShowInterstitial(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1580
    if-eqz p1, :cond_0

    .line 1582
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowInterstitial(Landroid/app/Activity;Z)V

    .line 1586
    :goto_0
    return-void

    .line 1584
    :cond_0
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static chartboostOnStart(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1707
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1709
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    .line 1710
    .local v0, _cb:Lcom/chartboost/sdk/ChartBoost;
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->CHARTBOOST_APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    .line 1711
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->CHARTBOOST_APPSIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    .line 1712
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 1714
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->install()V

    .line 1716
    .end local v0           #_cb:Lcom/chartboost/sdk/ChartBoost;
    :cond_0
    return-void
.end method

.method private static chartboostShowInterstitial(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1729
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    .line 1731
    .local v0, _cb:Lcom/chartboost/sdk/ChartBoost;
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;

    invoke-direct {v1, p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 1732
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->showInterstitial()V

    .line 1734
    .end local v0           #_cb:Lcom/chartboost/sdk/ChartBoost;
    :cond_0
    return-void
.end method

.method private static chartboostShowMoreApps(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1720
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1721
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    .line 1722
    .local v0, _cb:Lcom/chartboost/sdk/ChartBoost;
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;

    invoke-direct {v1, p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 1723
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->showMoreApps()V

    .line 1725
    .end local v0           #_cb:Lcom/chartboost/sdk/ChartBoost;
    :cond_0
    return-void
.end method

.method private static doPostDisclaimerStuff(Landroid/app/Activity;ZZ)V
    .locals 5
    .parameter "activity"
    .parameter "showRateMePopup"
    .parameter "showInterstitialAd"

    .prologue
    .line 1275
    if-eqz p0, :cond_2

    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, showedRateMe:Z
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->hasRatedApp(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    invoke-static {p0, p2}, Lcom/wifi/hacker/cracker/BootReceiver;->showRatePopup(Landroid/app/Activity;Z)V

    .line 1282
    const/4 v0, 0x1

    .line 1288
    :cond_0
    if-nez v0, :cond_1

    .line 1289
    if-eqz p2, :cond_1

    .line 1290
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->showStartInterstitial(Landroid/app/Activity;)V

    .line 1295
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/wifi/hacker/cracker/BootReceiver$19;

    invoke-direct {v2, p0}, Lcom/wifi/hacker/cracker/BootReceiver$19;-><init>(Landroid/app/Activity;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1301
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->startappStart(Landroid/app/Activity;)V

    .line 1303
    .end local v0           #showedRateMe:Z
    :cond_2
    return-void
.end method

.method public static exit(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 345
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wifi/hacker/cracker/MyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, in:Landroid/content/Intent;
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 352
    .end local v0           #in:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static exitApp(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 2281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2282
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2283
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2284
    return-void
.end method

.method private static getAirpush(Landroid/content/Context;)Lcom/airpush/android/Airpush;
    .locals 3
    .parameter "context"

    .prologue
    .line 1827
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mAirpush:Lcom/airpush/android/Airpush;

    if-nez v0, :cond_0

    .line 1828
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->AIRPUSH_APPID:Ljava/lang/String;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->AIRPUSH_APIKEY:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mAirpush:Lcom/airpush/android/Airpush;

    .line 1830
    :cond_0
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mAirpush:Lcom/airpush/android/Airpush;

    return-object v0
.end method

.method public static getAppName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 2269
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2270
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2271
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 2272
    .local v1, appName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2273
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #appName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 2275
    .restart local v1       #appName:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getDefaultTabViewShowAdMethod()Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;
    .locals 1

    .prologue
    .line 906
    new-instance v0, Lcom/wifi/hacker/cracker/BootReceiver$17;

    invoke-direct {v0}, Lcom/wifi/hacker/cracker/BootReceiver$17;-><init>()V

    return-object v0
.end method

.method public static getDisclaimerStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 2362
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_DISCLAIMER:Ljava/lang/String;

    const-string v1, "notshown"

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorInterval(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 319
    sget-wide v1, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR:J

    .line 320
    .local v1, errorIntervalMinutes:J
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_ERROR_INTERVAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, errorInterval:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 328
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 329
    sget-wide v1, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR:J

    .line 331
    :cond_1
    return-wide v1

    .line 324
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getRandomIcon()I
    .locals 4

    .prologue
    .line 927
    const/4 v3, 0x5

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 928
    .local v1, icons:[I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 929
    .local v0, generator:Ljava/util/Random;
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 930
    .local v2, rnd:I
    aget v3, v1, v2

    return v3

    .line 927
    nop

    :array_0
    .array-data 0x4
        0x2bt 0x0t 0x8t 0x1t
        0xct 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
        0x73t 0x0t 0x8t 0x1t
        0xbt 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public static getRandomIconIcon()I
    .locals 4

    .prologue
    .line 934
    const/16 v3, 0xc

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 935
    .local v1, icons:[I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 936
    .local v0, generator:Ljava/util/Random;
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 937
    .local v2, rnd:I
    aget v3, v1, v2

    return v3

    .line 934
    :array_0
    .array-data 0x4
        0x8et 0x0t 0x8t 0x1t
        0x77t 0x0t 0x8t 0x1t
        0x68t 0x0t 0x8t 0x1t
        0x6bt 0x0t 0x8t 0x1t
        0x5et 0x0t 0x8t 0x1t
        0x59t 0x0t 0x8t 0x1t
        0x53t 0x0t 0x8t 0x1t
        0x48t 0x0t 0x8t 0x1t
        0x3ft 0x0t 0x8t 0x1t
        0x34t 0x0t 0x8t 0x1t
        0x24t 0x0t 0x8t 0x1t
        0x28t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public static getRandomIconTabView()I
    .locals 4

    .prologue
    .line 941
    const/16 v3, 0xe

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 942
    .local v1, icons:[I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 943
    .local v0, generator:Ljava/util/Random;
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 944
    .local v2, rnd:I
    aget v3, v1, v2

    return v3

    .line 941
    :array_0
    .array-data 0x4
        0x39t 0x0t 0x8t 0x1t
        0x9bt 0x0t 0x8t 0x1t
        0x2at 0x0t 0x8t 0x1t
        0x47t 0x0t 0x8t 0x1t
        0x48t 0x0t 0x8t 0x1t
        0x57t 0x0t 0x8t 0x1t
        0x20t 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
        0x80t 0x0t 0x8t 0x1t
        0x7et 0x0t 0x8t 0x1t
        0x8at 0x0t 0x8t 0x1t
        0x5et 0x0t 0x8t 0x1t
        0x49t 0x0t 0x8t 0x1t
        0x33t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public static getSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 2406
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2407
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2408
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 2410
    .end local p2
    :cond_0
    return p2
.end method

.method public static getSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 2397
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2398
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2399
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 2401
    .end local p2
    :cond_0
    return-wide p2
.end method

.method public static getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 2388
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2389
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2390
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2392
    .end local p2
    :cond_0
    return-object p2
.end method

.method public static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 2339
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateInterval(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 303
    sget-wide v1, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS:J

    .line 304
    .local v1, updateIntervalMinutes:J
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_UPDATE_INTERVAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, updateInterval:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 312
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 313
    sget-wide v1, Lcom/wifi/hacker/cracker/BootReceiver;->DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS:J

    .line 315
    :cond_1
    return-wide v1

    .line 308
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static grabosShowDirect(Landroid/app/Activity;Z)V
    .locals 8
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1981
    sget-object v6, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, grabosInterstitialSettings:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1984
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v6, "package"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1986
    .local v1, grabosPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1987
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seen_direct_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1989
    .local v5, seenPackageKey:Ljava/lang/String;
    const-string v6, "true"

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v6, "http:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1993
    :cond_0
    move-object v2, v1

    .line 1998
    .local v2, grabosUrl:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v4, localIntent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2000
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    .end local v1           #grabosPackage:Ljava/lang/String;
    .end local v2           #grabosUrl:Ljava/lang/String;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #localIntent:Landroid/content/Intent;
    .end local v5           #seenPackageKey:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2008
    :cond_2
    return-void

    .line 1995
    .restart local v1       #grabosPackage:Ljava/lang/String;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    .restart local v5       #seenPackageKey:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2       #grabosUrl:Ljava/lang/String;
    goto :goto_0

    .line 2002
    .end local v1           #grabosPackage:Ljava/lang/String;
    .end local v2           #grabosUrl:Ljava/lang/String;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #seenPackageKey:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static grabosShowInterstitial(Landroid/app/Activity;ZZ)V
    .locals 11
    .parameter "activity"
    .parameter "isLetangInterstitial"
    .parameter "isTabViewInterstitial"

    .prologue
    .line 1855
    sget-object v8, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1856
    .local v2, grabosInterstitialSettings:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1858
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v8, "title"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1860
    .local v4, grabosTitle:Ljava/lang/String;
    const-string v8, "description"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    .local v1, grabosDescription:Ljava/lang/String;
    const-string v8, "package"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1864
    .local v3, grabosPackage:Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 1865
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "seen_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1867
    .local v7, seenPackageKey:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1868
    .local v6, localAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1869
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1870
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1872
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1873
    :cond_0
    const-string v8, "Install"

    new-instance v9, Lcom/wifi/hacker/cracker/BootReceiver$21;

    invoke-direct {v9, p0, v7, v3, p1}, Lcom/wifi/hacker/cracker/BootReceiver$21;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1894
    const-string v8, "No Thanks"

    new-instance v9, Lcom/wifi/hacker/cracker/BootReceiver$22;

    invoke-direct {v9, p1, p0}, Lcom/wifi/hacker/cracker/BootReceiver$22;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1950
    :goto_0
    if-eqz p1, :cond_3

    .line 1951
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIcon()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1955
    :goto_1
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1958
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1959
    .local v0, acceptButton:Landroid/widget/Button;
    const-string v8, "<b>Install</b>"

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1960
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v9, -0x55ff0100

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1973
    .end local v0           #acceptButton:Landroid/widget/Button;
    .end local v1           #grabosDescription:Ljava/lang/String;
    .end local v3           #grabosPackage:Ljava/lang/String;
    .end local v4           #grabosTitle:Ljava/lang/String;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #localAlertDialog:Landroid/app/AlertDialog;
    .end local v7           #seenPackageKey:Ljava/lang/String;
    :goto_2
    return-void

    .line 1906
    .restart local v1       #grabosDescription:Ljava/lang/String;
    .restart local v3       #grabosPackage:Ljava/lang/String;
    .restart local v4       #grabosTitle:Ljava/lang/String;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #localAlertDialog:Landroid/app/AlertDialog;
    .restart local v7       #seenPackageKey:Ljava/lang/String;
    :cond_1
    const-string v8, "Install"

    new-instance v9, Lcom/wifi/hacker/cracker/BootReceiver$23;

    invoke-direct {v9, p0, v7, v3}, Lcom/wifi/hacker/cracker/BootReceiver$23;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1925
    const-string v8, "Later"

    new-instance v9, Lcom/wifi/hacker/cracker/BootReceiver$24;

    invoke-direct {v9}, Lcom/wifi/hacker/cracker/BootReceiver$24;-><init>()V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1934
    const-string v8, "Don\'t Remind"

    new-instance v9, Lcom/wifi/hacker/cracker/BootReceiver$25;

    invoke-direct {v9, p0, v7}, Lcom/wifi/hacker/cracker/BootReceiver$25;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1965
    .end local v1           #grabosDescription:Ljava/lang/String;
    .end local v3           #grabosPackage:Ljava/lang/String;
    .end local v4           #grabosTitle:Ljava/lang/String;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #localAlertDialog:Landroid/app/AlertDialog;
    .end local v7           #seenPackageKey:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1972
    :cond_2
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V

    goto :goto_2

    .line 1953
    .restart local v1       #grabosDescription:Ljava/lang/String;
    .restart local v3       #grabosPackage:Ljava/lang/String;
    .restart local v4       #grabosTitle:Ljava/lang/String;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #localAlertDialog:Landroid/app/AlertDialog;
    .restart local v7       #seenPackageKey:Ljava/lang/String;
    :cond_3
    const v8, 0x7f02000e

    :try_start_1
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setIcon(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static hasDisclaimerBeenShownYet(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2375
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerDeclined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasParseLoaded(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2354
    const-string v0, "true"

    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_LOADED:Ljava/lang/String;

    const-string v2, "false"

    invoke-static {p0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasRatedApp(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 2327
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2328
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2329
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_RATE_POPUP:Ljava/lang/String;

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2331
    .local v0, hasRated:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2333
    .end local v0           #hasRated:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static hideLoader()V
    .locals 1

    .prologue
    .line 2449
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2450
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2451
    const/4 v0, 0x0

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 2453
    :cond_0
    return-void
.end method

.method protected static imageByter(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .parameter "ctx"
    .parameter "iconUrl"

    .prologue
    const/4 v7, 0x0

    .line 610
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 611
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 612
    .local v2, connection:Ljava/net/URLConnection;
    const/16 v8, 0x1b58

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 613
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 614
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 616
    .local v0, buffer:[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    .local v5, output:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 618
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 621
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 624
    :goto_1
    return-object v7

    .line 620
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v2       #connection:Ljava/net/URLConnection;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_1

    .line 623
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .end local v6           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 624
    .local v3, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static isAirpushOn()Z
    .locals 1

    .prologue
    .line 1369
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->AIRPUSH_APPID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApplovinOn()Z
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    return v0
.end method

.method public static isChartboostOn()Z
    .locals 1

    .prologue
    .line 1379
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->CHARTBOOST_APPID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDisclaimerAccepted(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2379
    const-string v0, "accepted"

    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getDisclaimerStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDisclaimerDeclined(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2383
    const-string v0, "declined"

    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getDisclaimerStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGrabosDirectOn(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 1458
    sget-object v7, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, grabosInterstitialSettings:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v6

    .line 1464
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v7, "package"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1466
    .local v4, packageName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "seen_direct_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1470
    .local v5, seenPackageKey:Ljava/lang/String;
    const-string v7, "true"

    const-string v8, "false"

    invoke-static {p0, v5, v8}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1472
    .local v2, hasSeenPackageAlready:Z
    if-nez v2, :cond_0

    .line 1479
    const/4 v6, 0x1

    goto :goto_0

    .line 1476
    .end local v2           #hasSeenPackageAlready:Z
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #seenPackageKey:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1477
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isGrabosOn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 1424
    sget-object v8, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, grabosInterstitialSettings:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return v7

    .line 1430
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v8, "title"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1432
    .local v6, title:Ljava/lang/String;
    const-string v8, "package"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, packageName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "seen_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1437
    .local v5, seenPackageKey:Ljava/lang/String;
    const-string v8, "true"

    const-string v9, "false"

    invoke-static {p0, v5, v9}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1439
    .local v2, hasSeenPackageAlready:Z
    if-nez v2, :cond_0

    .line 1446
    const/4 v7, 0x1

    goto :goto_0

    .line 1443
    .end local v2           #hasSeenPackageAlready:Z
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #seenPackageKey:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1444
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isLeadboltIconsOn()Z
    .locals 1

    .prologue
    .line 1365
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_ICONS_SECTIONID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLeadboltInterstitialOn()Z
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_INTERSTITIAL_SECTIONID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLeadboltNotificationsOn()Z
    .locals 1

    .prologue
    .line 1361
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_NOTIFICATIONS_SECTIONID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLeadboltOfferwallOn()Z
    .locals 1

    .prologue
    .line 1413
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_OFFERWALL_SECTIONID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMopubBannerOn()Z
    .locals 1

    .prologue
    .line 1389
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_BANNERID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMopubInterstitialOn()Z
    .locals 1

    .prologue
    .line 1397
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_INTERSTITIALID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMopubMediumOn()Z
    .locals 1

    .prologue
    .line 1393
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_MEDIUMID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 400
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 401
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 402
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 404
    .local v2, isOnline:Z
    :goto_0
    return v2

    .line 402
    .end local v2           #isOnline:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRevmobOn()Z
    .locals 1

    .prologue
    .line 1401
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->isStringOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStringOn(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 1348
    if-nez p0, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static leadboltShowInterstitial(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2188
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 2189
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltInterstitialOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2191
    new-instance v0, Lcom/pad/android/iappad/AdController;

    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_INTERSTITIAL_SECTIONID:Ljava/lang/String;

    new-instance v2, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;

    invoke-direct {v2, p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, p0, v1, v2}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdListener;)V

    .line 2192
    .local v0, controller:Lcom/pad/android/iappad/AdController;
    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->loadAd()V

    .line 2195
    .end local v0           #controller:Lcom/pad/android/iappad/AdController;
    :cond_0
    return-void
.end method

.method private static leadboltShowMoreApps(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2198
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 2199
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltOfferwallOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    new-instance v0, Lcom/pad/android/iappad/AdController;

    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_OFFERWALL_SECTIONID:Ljava/lang/String;

    new-instance v2, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;

    invoke-direct {v2, p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, p0, v1, v2}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdListener;)V

    .line 2202
    .local v0, controller:Lcom/pad/android/iappad/AdController;
    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->loadAd()V

    .line 2205
    .end local v0           #controller:Lcom/pad/android/iappad/AdController;
    :cond_0
    return-void
.end method

.method private static leadboltStartIcons(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2092
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 2093
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltIconsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
    new-instance v0, Lcom/pad/android/xappad/AdController;

    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_ICONS_SECTIONID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2096
    .local v0, iconsController:Lcom/pad/android/xappad/AdController;
    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadIcon()V

    .line 2099
    .end local v0           #iconsController:Lcom/pad/android/xappad/AdController;
    :cond_0
    return-void
.end method

.method private static leadboltStartNotifications(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 2074
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 2077
    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2078
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2079
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SD_APP_OPTIN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2080
    const-string v3, "SD_APP_OPTIN_SHOWN"

    const-string v4, "1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2081
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2084
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltNotificationsOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2085
    new-instance v1, Lcom/pad/android/xappad/AdController;

    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->LEADBOLT_NOTIFICATIONS_SECTIONID:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2086
    .local v1, myController:Lcom/pad/android/xappad/AdController;
    invoke-virtual {v1}, Lcom/pad/android/xappad/AdController;->loadNotification()V

    .line 2089
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #myController:Lcom/pad/android/xappad/AdController;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static loadParseAdSettings(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 3
    .parameter "context"
    .parameter "calledFromReloadSettings"
    .parameter "tabViewOnLoadListener"

    .prologue
    .line 1027
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1028
    if-eqz p1, :cond_0

    .line 1030
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getErrorInterval(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->scheduleNextReloadSettings(Landroid/content/Context;J)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "AdSettings"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, query:Lcom/parse/ParseQuery;
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/wifi/hacker/cracker/BootReceiver$18;-><init>(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->getFirstInBackground(Lcom/parse/GetCallback;)V

    goto :goto_0
.end method

.method private static makeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "title"
    .parameter "url"
    .parameter "iconUrl"

    .prologue
    .line 1166
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1168
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1170
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconIcon()I

    move-result v1

    .line 1172
    .local v1, icon:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1173
    .local v2, shortcutIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1177
    .local v0, addIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1178
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1181
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1185
    .end local v0           #addIntent:Landroid/content/Intent;
    .end local v1           #icon:I
    .end local v2           #shortcutIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private makeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "context"
    .parameter "title"
    .parameter "description"
    .parameter "url"
    .parameter "iconUrl"

    .prologue
    .line 1191
    invoke-static/range {p1 .. p1}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1194
    :try_start_0
    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1196
    const/16 v12, 0x64

    .line 1199
    .local v12, notification_id:I
    new-instance v11, Landroid/content/Intent;

    const-class v13, Lcom/wifi/hacker/cracker/BootReceiver;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1200
    .local v11, notificationIntent:Landroid/content/Intent;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".PUSH_NOTIFICATION_CLICK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const-string v13, "url"

    move-object/from16 v0, p4

    invoke-virtual {v11, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v13, v11, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1207
    .local v4, contentIntent:Landroid/app/PendingIntent;
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f030008

    invoke-direct {v10, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1211
    .local v10, localRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIcon()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 1212
    .local v6, icon:I
    const/4 v7, 0x0

    .line 1214
    .local v7, iconSet:Z
    if-eqz p5, :cond_0

    :try_start_1
    const-string v13, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1215
    const-string v13, "self"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1216
    const v13, 0x7f070017

    const v14, 0x7f02000e

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1217
    const/4 v7, 0x1

    .line 1232
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    const v13, 0x7f070017

    :try_start_2
    invoke-virtual {v10, v13, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1235
    :cond_1
    const v13, 0x7f070018

    move-object/from16 v0, p2

    invoke-virtual {v10, v13, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1236
    const v13, 0x7f070019

    move-object/from16 v0, p3

    invoke-virtual {v10, v13, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x40

    if-lt v13, v14, :cond_4

    .line 1241
    const v13, 0x7f070018

    const-string v14, "setTextSize"

    const/high16 v15, 0x4150

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 1242
    const v13, 0x7f070019

    const-string v14, "setTextSize"

    const/high16 v15, 0x4120

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 1252
    :goto_1
    new-instance v8, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p2

    invoke-direct {v8, v6, v0, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1253
    .local v8, localNotification:Landroid/app/Notification;
    iget v13, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 1254
    iget v13, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v8, Landroid/app/Notification;->defaults:I

    .line 1255
    iput-object v10, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1256
    iput-object v4, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1259
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1260
    .local v9, localNotificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v9, v12, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1269
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #icon:I
    .end local v7           #iconSet:Z
    .end local v8           #localNotification:Landroid/app/Notification;
    .end local v9           #localNotificationManager:Landroid/app/NotificationManager;
    .end local v10           #localRemoteViews:Landroid/widget/RemoteViews;
    .end local v11           #notificationIntent:Landroid/content/Intent;
    .end local v12           #notification_id:I
    :cond_2
    :goto_2
    return-void

    .line 1218
    .restart local v4       #contentIntent:Landroid/app/PendingIntent;
    .restart local v6       #icon:I
    .restart local v7       #iconSet:Z
    .restart local v10       #localRemoteViews:Landroid/widget/RemoteViews;
    .restart local v11       #notificationIntent:Landroid/content/Intent;
    .restart local v12       #notification_id:I
    :cond_3
    :try_start_3
    const-string v13, "http"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1219
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->imageByter(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    .line 1220
    .local v3, bytes:[B
    if-eqz v3, :cond_0

    .line 1221
    const/4 v13, 0x0

    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1222
    .local v2, bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1223
    const v13, 0x7f070017

    invoke-virtual {v10, v13, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1224
    const/4 v7, 0x1

    goto :goto_0

    .line 1229
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v3           #bytes:[B
    :catch_0
    move-exception v5

    .line 1230
    .local v5, eecc:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1246
    .end local v5           #eecc:Ljava/lang/Exception;
    :cond_4
    const v13, 0x7f070018

    :try_start_4
    const-string v14, "setTextSize"

    const/high16 v15, 0x4170

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 1247
    const v13, 0x7f070019

    const-string v14, "setTextSize"

    const/high16 v15, 0x4160

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1265
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #icon:I
    .end local v7           #iconSet:Z
    .end local v10           #localRemoteViews:Landroid/widget/RemoteViews;
    .end local v11           #notificationIntent:Landroid/content/Intent;
    .end local v12           #notification_id:I
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method private static mopubShowBannerAd(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter "activity"
    .parameter "bannerView"

    .prologue
    .line 1488
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isMopubBannerOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    if-eqz p0, :cond_0

    .line 1490
    if-eqz p1, :cond_0

    .line 1492
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    move-object v1, v0

    .line 1493
    .local v1, mAdView:Lcom/mopub/mobileads/MoPubView;
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_BANNERID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    .end local v1           #mAdView:Lcom/mopub/mobileads/MoPubView;
    :cond_0
    :goto_0
    return-void

    .line 1495
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static mopubShowInterstitial(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1560
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isMopubInterstitialOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 1563
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->activityToMoPubInterstitialMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1564
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->activityToMoPubInterstitialMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1571
    .local v0, interstitial:Lcom/mopub/mobileads/MoPubInterstitial;
    :goto_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 1573
    .end local v0           #interstitial:Lcom/mopub/mobileads/MoPubInterstitial;
    :cond_0
    return-void

    .line 1566
    :cond_1
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_INTERSTITIALID:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1567
    .restart local v0       #interstitial:Lcom/mopub/mobileads/MoPubInterstitial;
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;

    invoke-direct {v1, p0, v0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;-><init>(Landroid/app/Activity;Lcom/mopub/mobileads/MoPubInterstitial;Z)V

    .line 1568
    .local v1, miListener:Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setListener(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;)V

    .line 1569
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->activityToMoPubInterstitialMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static mopubShowMediumAd(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter "activity"
    .parameter "mediumView"

    .prologue
    .line 1505
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isMopubMediumOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1506
    if-eqz p0, :cond_0

    .line 1507
    if-eqz p1, :cond_0

    .line 1509
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    move-object v1, v0

    .line 1510
    .local v1, mAdView:Lcom/mopub/mobileads/MoPubView;
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->MOPUB_MEDIUMID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    .end local v1           #mAdView:Lcom/mopub/mobileads/MoPubView;
    :cond_0
    :goto_0
    return-void

    .line 1512
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1155
    sget v0, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_ME_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    .line 1158
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->showStartInterstitial(Landroid/app/Activity;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public static processRatePopupMessage(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "activity"
    .parameter "popupMessage"

    .prologue
    .line 2256
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAppName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, appName:Ljava/lang/String;
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_POPUP_MESSAGE:Ljava/lang/String;

    .line 2258
    .local v1, msg:Ljava/lang/String;
    const-string v2, "{appname}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2259
    if-nez v0, :cond_1

    .line 2260
    const-string v2, "{appname}"

    const-string v3, "this app"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2265
    :cond_0
    :goto_0
    return-object v1

    .line 2262
    :cond_1
    const-string v2, "{appname}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static putSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2424
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2425
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2426
    .local v1, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 2427
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2428
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2430
    :cond_0
    return-void
.end method

.method public static putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2433
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2434
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2435
    .local v1, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 2436
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2437
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2439
    :cond_0
    return-void
.end method

.method public static putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2415
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2416
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2417
    .local v1, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 2418
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2419
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2421
    :cond_0
    return-void
.end method

.method public static rateApp(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 2246
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2247
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2248
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2250
    sget v2, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_ME_REQUEST_CODE:I

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2252
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static revmobDirectLink(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1681
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 1683
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    .line 1685
    :cond_0
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-eqz v0, :cond_1

    .line 1686
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    invoke-virtual {v0, p0}, Lcom/revmob/RevMob;->openAdLink(Landroid/app/Activity;)V

    .line 1689
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1690
    :cond_2
    return-void
.end method

.method private static revmobOnStart(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1591
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    .line 1594
    :cond_0
    return-void
.end method

.method public static revmobShowBannerAd(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "activity"
    .parameter "revmobBannerView"

    .prologue
    .line 1664
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-nez v1, :cond_0

    .line 1666
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v1

    sput-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    .line 1668
    :cond_0
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-eqz v1, :cond_1

    .line 1670
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    invoke-virtual {v1, p0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;)Lcom/revmob/ads/banner/Banner;

    move-result-object v0

    .line 1673
    .local v0, banner:Lcom/revmob/ads/banner/Banner;
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1674
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1677
    .end local v0           #banner:Lcom/revmob/ads/banner/Banner;
    :cond_1
    return-void
.end method

.method public static revmobShowInterstitial(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1598
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1602
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-nez v2, :cond_0

    .line 1603
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v2

    sput-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    .line 1605
    :cond_0
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-eqz v2, :cond_1

    .line 1606
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    invoke-virtual {v2, p0}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;)Lcom/revmob/ads/fullscreen/Fullscreen;

    move-result-object v0

    .line 1607
    .local v0, fs:Lcom/revmob/ads/fullscreen/Fullscreen;
    new-instance v1, Lcom/wifi/hacker/cracker/BootReceiver$20;

    invoke-direct {v1, v0, p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver$20;-><init>(Lcom/revmob/ads/fullscreen/Fullscreen;Landroid/app/Activity;Z)V

    .line 1643
    .local v1, revmobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/Fullscreen;->setRevMobListener(Lcom/revmob/ads/RevMobAdsListener;)V

    .line 1647
    .end local v0           #fs:Lcom/revmob/ads/fullscreen/Fullscreen;
    .end local v1           #revmobListener:Lcom/revmob/ads/RevMobAdsListener;
    :cond_1
    return-void
.end method

.method private static revmobShowPopupAd(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1650
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 1652
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->REVMOB_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    .line 1654
    :cond_0
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    if-eqz v0, :cond_1

    .line 1655
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->revmob:Lcom/revmob/RevMob;

    invoke-virtual {v0, p0}, Lcom/revmob/RevMob;->showPopup(Landroid/app/Activity;)V

    .line 1658
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1659
    :cond_2
    return-void
.end method

.method public static scheduleMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "notificationTitle"
    .parameter "iconTitle"
    .parameter "notificationPackage"
    .parameter "notificationDescription"
    .parameter "delayMillis"
    .parameter "iconUrl"

    .prologue
    const/4 v5, 0x0

    .line 513
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 517
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_TITLE:Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_TITLE:Ljava/lang/String;

    invoke-static {p0, v3, p2}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v3, p3}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_DESCRIPTION:Ljava/lang/String;

    invoke-static {p0, v3, p4}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_URL:Ljava/lang/String;

    invoke-static {p0, v3, p7}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/wifi/hacker/cracker/BootReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v0, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".MAKE_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v3, "notification_title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v3, "icon_title"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v3, "notification_package"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v3, "notification_description"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 532
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 533
    .local v1, localAlarmManager1:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 536
    const-wide/16 v3, 0x1f4

    cmp-long v3, p5, v3

    if-gtz v3, :cond_0

    .line 537
    const-wide/16 p5, 0x1f4

    .line 539
    :cond_0
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 541
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #localAlarmManager1:Landroid/app/AlarmManager;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public static scheduleNextReloadSettings(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "timeToNextNotificationInMinutes"

    .prologue
    .line 1010
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/wifi/hacker/cracker/BootReceiver;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    .local v0, intent:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".RELOAD_SETTINGS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1013
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1014
    .local v1, localAlarmManager1:Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1015
    const-wide/32 v5, 0xea60

    mul-long/2addr v5, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v2, v5, v7

    .line 1016
    .local v2, nextAbsoluteTime:J
    const-string v5, "NEXT_ABSOLUTE_UPDATE_SETTINGS_TIME"

    invoke-static {p0, v5, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1017
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #localAlarmManager1:Landroid/app/AlarmManager;
    .end local v2           #nextAbsoluteTime:J
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static setDisclaimerAccepted(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2366
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_DISCLAIMER:Ljava/lang/String;

    const-string v1, "accepted"

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    return-void
.end method

.method public static setDisclaimerDeclined(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2371
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_DISCLAIMER:Ljava/lang/String;

    const-string v1, "declined"

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    return-void
.end method

.method public static setParseLoaded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2358
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PARSE_LOADED:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    return-void
.end method

.method public static shouldMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "notificationTitle"
    .parameter "iconTitle"
    .parameter "notificationPackage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 490
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v3, v4

    .line 505
    :cond_1
    :goto_0
    return v3

    .line 493
    :cond_2
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_TITLE:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, lastNotificationTitle:Ljava/lang/String;
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_TITLE:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, lastIconTitle:Ljava/lang/String;
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, lastNotificationPackage:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 505
    goto :goto_0
.end method

.method public static shouldShowLetang(Landroid/content/Context;)Z
    .locals 25
    .parameter "context"

    .prologue
    .line 545
    invoke-static/range {p0 .. p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 547
    const/16 v21, 0x0

    .line 605
    :goto_0
    return v21

    .line 549
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 550
    .local v4, currentTime:J
    sget-object v21, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_TIME:Ljava/lang/String;

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v12

    .line 551
    .local v12, lastLetangTime:J
    sget-object v21, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INSTALL_TIME:Ljava/lang/String;

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v10

    .line 552
    .local v10, installTime:J
    const-wide/16 v21, 0x0

    cmp-long v21, v10, v21

    if-nez v21, :cond_2

    .line 554
    move-wide v10, v4

    .line 555
    sget-object v21, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INSTALL_TIME:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4, v5}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 605
    :cond_1
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .line 559
    :cond_2
    sget-object v21, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_OPTIONS:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 560
    .local v17, letangOptionsString:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 562
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 564
    .local v16, letangOptionsObj:Lorg/json/JSONObject;
    const-string v21, "initial_delay"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 566
    .local v9, initialDelayMinutes:Ljava/lang/Long;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_1

    .line 567
    const-wide/32 v21, 0xea60

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    mul-long v7, v21, v23

    .line 569
    .local v7, initialDelayMillis:J
    sub-long v21, v4, v10

    cmp-long v21, v21, v7

    if-ltz v21, :cond_1

    .line 571
    const-string v21, "min_interval"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 573
    .local v20, minIntervalMinutes:Ljava/lang/Long;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_1

    .line 574
    const-wide/32 v21, 0xea60

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    mul-long v18, v21, v23

    .line 575
    .local v18, minIntervalMillis:J
    sub-long v21, v4, v12

    cmp-long v21, v21, v18

    if-ltz v21, :cond_1

    .line 579
    sget-object v21, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 580
    .local v15, letangInterstitialString:Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 581
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 584
    :cond_4
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 585
    .local v14, letangInterstitialObj:Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 586
    .local v6, i:I
    if-lez v6, :cond_1

    .line 587
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 600
    .end local v6           #i:I
    .end local v7           #initialDelayMillis:J
    .end local v9           #initialDelayMinutes:Ljava/lang/Long;
    .end local v14           #letangInterstitialObj:Lorg/json/JSONArray;
    .end local v15           #letangInterstitialString:Ljava/lang/String;
    .end local v16           #letangOptionsObj:Lorg/json/JSONObject;
    .end local v18           #minIntervalMillis:J
    .end local v20           #minIntervalMinutes:Ljava/lang/Long;
    :catch_0
    move-exception v21

    goto/16 :goto_1
.end method

.method public static showBannerAd(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 4
    .parameter "activity"
    .parameter "bannerView"

    .prologue
    .line 409
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 411
    .local v1, numChildren:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 412
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 413
    .local v2, revmobBannerView:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    .line 415
    .local v0, mopubBannerView:Lcom/mopub/mobileads/MoPubView;
    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isMopubBannerOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    invoke-static {p0, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->mopubShowBannerAd(Landroid/app/Activity;Landroid/view/View;)V

    .line 421
    :cond_0
    if-eqz v2, :cond_1

    .line 422
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    invoke-static {p0, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowBannerAd(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 429
    .end local v0           #mopubBannerView:Lcom/mopub/mobileads/MoPubView;
    .end local v1           #numChildren:I
    .end local v2           #revmobBannerView:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private static showDefaultInterstitial(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 983
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowInterstitial(Landroid/app/Activity;Z)V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 987
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private static showDefaultMoreApps(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 999
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowMoreApps(Landroid/app/Activity;Z)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1003
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static showDisclaimer(Landroid/app/Activity;ZZ)V
    .locals 6
    .parameter "activity"
    .parameter "showRateMePopup"
    .parameter "showInterstitialAdWithDisclaimer"

    .prologue
    .line 2457
    const-string v1, "This software is protected by international copyright and intellectual property laws. "

    .line 2458
    .local v1, licenseAgreement:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "We have put a lot of time and thought into this application and hope you will enjoy using it. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "In order to keep the App 100% free, it includes monetization platforms by StartApp, LeadBolt, and Airpush. You can opt-out of their ads by following the opt-out instructions <a href=\'http://www.leadbolt.com/opt/app/\'>here</a>, <a href=\'http://m.airpush.com/optout\'>here</a>, and <a href=\'http://www.searchmobileonline.com/static/eula_more.html\'>here</a> or by deleting this app. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "You will receive the following:<br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Search bookmark in your browser<br />-Search homepage in your browser<br />-Display advertisements within app<br />-Icons on your home screen<br />-Notification messages including offers in your status bar<br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Full Terms of Use for StartApp can be viewed here: <a href=\'http://www.searchmobileonline.com/static/eula_more.html\'>Full Terms</a>. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "If you agree to these terms, tap the \'Accept\' button below. We hope you enjoy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->getAppName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2465
    const-string v2, "Decline"

    const-string v3, "Accept"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wifi/hacker/cracker/BootReceiver;->userOptOutDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2466
    return-void
.end method

.method public static showExitInterstitial(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 443
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 444
    return-void
.end method

.method public static showExitPopup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "quitMessage"
    .parameter "moreMessage"

    .prologue
    .line 2214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2216
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2217
    new-instance v2, Lcom/wifi/hacker/cracker/BootReceiver$26;

    invoke-direct {v2, p0}, Lcom/wifi/hacker/cracker/BootReceiver$26;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2223
    const-string v2, "Exit"

    new-instance v3, Lcom/wifi/hacker/cracker/BootReceiver$28;

    invoke-direct {v3, p0}, Lcom/wifi/hacker/cracker/BootReceiver$28;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/wifi/hacker/cracker/BootReceiver$27;

    invoke-direct {v4}, Lcom/wifi/hacker/cracker/BootReceiver$27;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2239
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 2240
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2241
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2242
    return-void
.end method

.method public static showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 29
    .parameter "activity"
    .parameter "adsKey"
    .parameter "tabViewOnLoadListener"

    .prologue
    .line 636
    if-eqz p0, :cond_3

    .line 637
    invoke-static/range {p0 .. p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 639
    const/16 v18, 0x0

    .line 640
    .local v18, isLetangInterstitial:Z
    if-eqz p1, :cond_1

    sget-object v25, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    sget-object v25, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    :cond_0
    const/16 v18, 0x1

    .line 642
    :cond_1
    sget-object v25, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_TABVIEW:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    if-eqz p2, :cond_4

    const/16 v20, 0x1

    .line 645
    .local v20, isTabViewInterstitial:Z
    :goto_0
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 648
    .local v10, adsString:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 651
    :cond_2
    if-eqz v18, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 903
    .end local v10           #adsString:Ljava/lang/String;
    .end local v18           #isLetangInterstitial:Z
    .end local v20           #isTabViewInterstitial:Z
    :cond_3
    :goto_1
    return-void

    .line 642
    .restart local v18       #isLetangInterstitial:Z
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .line 656
    .restart local v10       #adsString:Ljava/lang/String;
    .restart local v20       #isTabViewInterstitial:Z
    :cond_5
    :try_start_0
    new-instance v21, Lorg/json/JSONArray;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 658
    .local v21, jsonArray:Lorg/json/JSONArray;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v25

    if-nez v25, :cond_7

    .line 660
    if-eqz v18, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 868
    .end local v21           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v25

    .line 876
    :cond_6
    if-eqz v20, :cond_28

    const-string v25, "Fun Game"

    const-string v26, ""

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getDefaultTabViewShowAdMethod()Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    goto :goto_1

    .line 664
    .restart local v21       #jsonArray:Lorg/json/JSONArray;
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/32 v27, 0xea60

    div-long v11, v25, v27

    .line 667
    .local v11, currentMinutes:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 668
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 669
    .local v5, adNetwork:Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 672
    .local v9, adNetworkName:Ljava/lang/String;
    if-eqz v9, :cond_27

    .line 675
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_time"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, adNetworkLastRunTimeKey:Ljava/lang/String;
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 677
    .local v7, adNetworkMinIntervalMinutes:J
    const-wide/16 v25, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v6, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v23

    .line 679
    .local v23, lastRunTimeMinutes:J
    sub-long v25, v11, v23

    cmp-long v25, v25, v7

    if-ltz v25, :cond_27

    .line 682
    const/16 v19, 0x0

    .line 685
    .local v19, isShowInterstitialRun:Z
    const-string v25, "airpush"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 686
    if-eqz v20, :cond_9

    const-string v25, "Cool App"

    const-string v26, "This is a really fun game. I think you would enjoy it :)"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$2;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$2;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 693
    :goto_3
    const/16 v19, 0x1

    .line 859
    :cond_8
    :goto_4
    if-eqz v19, :cond_27

    .line 860
    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v12}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 692
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowInterstitial(Landroid/app/Activity;Z)V

    goto :goto_3

    .line 694
    :cond_a
    const-string v25, "airpush_offerwall"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 695
    if-eqz v20, :cond_b

    const-string v25, "Top Apps"

    const-string v26, "Top Apps"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$3;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$3;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 702
    :goto_5
    const/16 v19, 0x1

    goto :goto_4

    .line 701
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowMoreApps(Landroid/app/Activity;Z)V

    goto :goto_5

    .line 703
    :cond_c
    const-string v25, "airpush_direct"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 704
    if-eqz v20, :cond_d

    const-string v25, "Cool App"

    const-string v26, "This is a really fun game. I think you would enjoy it :)"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$4;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$4;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 711
    :goto_6
    const/16 v19, 0x1

    goto :goto_4

    .line 710
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowLandingPage(Landroid/app/Activity;Z)V

    goto :goto_6

    .line 712
    :cond_e
    const-string v25, "airpush_alert"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 714
    if-eqz v20, :cond_f

    const-string v25, "Great Offer"

    const-string v26, "Here\'s a great offer for Android users!"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$5;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$5;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 721
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 720
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowPopupAd(Landroid/app/Activity;Z)V

    goto :goto_7

    .line 722
    :cond_10
    const-string v25, "revmob"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 723
    if-eqz v20, :cond_11

    const-string v25, "Cool Game"

    const-string v26, "Play this new free game. It\'s really fun!"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$6;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$6;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 730
    :goto_8
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 729
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowInterstitial(Landroid/app/Activity;Z)V

    goto :goto_8

    .line 731
    :cond_12
    const-string v25, "revmob_alert"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 732
    if-eqz v20, :cond_13

    const-string v25, "Cool Game"

    const-string v26, "Play this new free game. It\'s really fun!"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$7;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$7;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 739
    :goto_9
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 738
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowPopupAd(Landroid/app/Activity;Z)V

    goto :goto_9

    .line 740
    :cond_14
    const-string v25, "revmob_direct"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 741
    if-eqz v20, :cond_15

    const-string v25, "Cool Game"

    const-string v26, "Play this new free game. It\'s really fun!"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$8;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$8;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 748
    :goto_a
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 747
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobDirectLink(Landroid/app/Activity;Z)V

    goto :goto_a

    .line 749
    :cond_16
    const-string v25, "applovin"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isApplovinOn()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 750
    if-eqz v20, :cond_17

    const-string v25, "Awesome"

    const-string v26, "This is a really fun game. I think you would enjoy it :)"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$9;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$9;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 757
    :goto_b
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 756
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->applovinShowInterstitial(Landroid/app/Activity;Z)V

    goto :goto_b

    .line 758
    :cond_18
    const-string v25, "grabos"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isGrabosOn(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    if-eqz v25, :cond_1a

    .line 760
    :try_start_2
    sget-object v25, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 761
    .local v14, grabosInterstitialSettings:Ljava/lang/String;
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v22, jsonObj:Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 763
    .local v16, grabosTitle:Ljava/lang/String;
    const-string v25, "description"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 764
    .local v13, grabosDescription:Ljava/lang/String;
    const-string v25, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 767
    .local v15, grabosPackage:Ljava/lang/String;
    if-eqz v16, :cond_8

    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    .line 769
    if-eqz v20, :cond_19

    const-string v25, ""

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v26

    new-instance v27, Lcom/wifi/hacker/cracker/BootReceiver$10;

    invoke-direct/range {v27 .. v27}, Lcom/wifi/hacker/cracker/BootReceiver$10;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 777
    :goto_c
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 776
    :cond_19
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->grabosShowInterstitial(Landroid/app/Activity;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    .line 779
    .end local v13           #grabosDescription:Ljava/lang/String;
    .end local v14           #grabosInterstitialSettings:Ljava/lang/String;
    .end local v15           #grabosPackage:Ljava/lang/String;
    .end local v16           #grabosTitle:Ljava/lang/String;
    .end local v22           #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v25

    goto/16 :goto_4

    .line 782
    :cond_1a
    :try_start_3
    const-string v25, "grabos_direct"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isGrabosDirectOn(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v25

    if-eqz v25, :cond_1c

    .line 784
    :try_start_4
    sget-object v25, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 785
    .restart local v14       #grabosInterstitialSettings:Ljava/lang/String;
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 786
    .restart local v22       #jsonObj:Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 787
    .restart local v16       #grabosTitle:Ljava/lang/String;
    const-string v25, "description"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 788
    .restart local v13       #grabosDescription:Ljava/lang/String;
    const-string v25, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 791
    .restart local v15       #grabosPackage:Ljava/lang/String;
    if-eqz v16, :cond_8

    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    .line 793
    if-eqz v20, :cond_1b

    const-string v25, ""

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v26

    new-instance v27, Lcom/wifi/hacker/cracker/BootReceiver$11;

    invoke-direct/range {v27 .. v27}, Lcom/wifi/hacker/cracker/BootReceiver$11;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 801
    :goto_d
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 800
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->grabosShowDirect(Landroid/app/Activity;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    .line 803
    .end local v13           #grabosDescription:Ljava/lang/String;
    .end local v14           #grabosInterstitialSettings:Ljava/lang/String;
    .end local v15           #grabosPackage:Ljava/lang/String;
    .end local v16           #grabosTitle:Ljava/lang/String;
    .end local v22           #jsonObj:Lorg/json/JSONObject;
    :catch_2
    move-exception v25

    goto/16 :goto_4

    .line 806
    :cond_1c
    :try_start_5
    const-string v25, "leadbolt"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltInterstitialOn()Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 808
    if-eqz v20, :cond_1d

    const-string v25, "Awesome"

    const-string v26, "This is a really fun game. I think you would enjoy it :)"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$12;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$12;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 815
    :goto_e
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 814
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->leadboltShowInterstitial(Landroid/app/Activity;Z)V

    goto :goto_e

    .line 816
    :cond_1e
    const-string v25, "leadbolt_offerwall"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isLeadboltOfferwallOn()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 818
    if-eqz v20, :cond_1f

    const-string v25, "Top Apps"

    const-string v26, "Top Apps"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$13;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$13;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 825
    :goto_f
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 824
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->leadboltShowMoreApps(Landroid/app/Activity;Z)V

    goto :goto_f

    .line 826
    :cond_20
    const-string v25, "chartboost"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 828
    if-eqz v20, :cond_21

    const-string v25, "Top Game"

    const-string v26, "I highly recommend this really fun and addictive game. It will not disappoint =D"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$14;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$14;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 835
    :goto_10
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 834
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostShowInterstitial(Landroid/app/Activity;Z)V

    goto :goto_10

    .line 836
    :cond_22
    const-string v25, "chartboost_offerwall"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_24

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 837
    if-eqz v20, :cond_23

    const-string v25, "Top Apps"

    const-string v26, "Top Apps"

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$15;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$15;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 844
    :goto_11
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 843
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostShowMoreApps(Landroid/app/Activity;Z)V

    goto :goto_11

    .line 845
    :cond_24
    const-string v25, "nothing"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 846
    if-eqz v20, :cond_26

    const-string v25, ""

    const-string v26, ""

    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->getRandomIconTabView()I

    move-result v27

    new-instance v28, Lcom/wifi/hacker/cracker/BootReceiver$16;

    invoke-direct/range {v28 .. v28}, Lcom/wifi/hacker/cracker/BootReceiver$16;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;->onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V

    .line 853
    :cond_25
    :goto_12
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 852
    :cond_26
    if-eqz v18, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_12

    .line 667
    .end local v6           #adNetworkLastRunTimeKey:Ljava/lang/String;
    .end local v7           #adNetworkMinIntervalMinutes:J
    .end local v19           #isShowInterstitialRun:Z
    .end local v23           #lastRunTimeMinutes:J
    :cond_27
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 877
    .end local v5           #adNetwork:Lorg/json/JSONObject;
    .end local v9           #adNetworkName:Ljava/lang/String;
    .end local v11           #currentMinutes:J
    .end local v17           #i:I
    .end local v21           #jsonArray:Lorg/json/JSONArray;
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V

    goto/16 :goto_1
.end method

.method public static showLetangInterstitial(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    .line 456
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 458
    .local v0, currentTime:J
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_TIME:Ljava/lang/String;

    invoke-static {p0, v5, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 462
    sget-object v5, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LETANG_OPTIONS:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, letangOptionsString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 465
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, letangOptionsObj:Lorg/json/JSONObject;
    const-string v5, "show_appname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, showAppName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 468
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    .end local v2           #letangOptionsObj:Lorg/json/JSONObject;
    .end local v4           #showAppName:Ljava/lang/String;
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v5

    .line 480
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "By: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/wifi/hacker/cracker/BootReceiver;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showLoader(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 2442
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2443
    const-string v0, ""

    const-string v1, "Loading..."

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 2444
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2446
    :cond_0
    return-void
.end method

.method public static showMediumAd(Landroid/app/Activity;Lcom/mopub/mobileads/MoPubView;)V
    .locals 1
    .parameter "activity"
    .parameter "mediumView"

    .prologue
    .line 916
    if-eqz p1, :cond_0

    .line 917
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isMopubMediumOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    invoke-static {p0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->mopubShowMediumAd(Landroid/app/Activity;Landroid/view/View;)V

    .line 923
    :cond_0
    return-void
.end method

.method public static showMoreApps(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 962
    if-eqz p0, :cond_0

    .line 963
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isChartboostOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    invoke-static {p0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostShowMoreApps(Landroid/app/Activity;Z)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-static {p0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowMoreApps(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public static showPopupAd(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 950
    if-eqz p0, :cond_0

    .line 951
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isRevmobOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    invoke-static {p0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowPopupAd(Landroid/app/Activity;Z)V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->isAirpushOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {p0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushShowPopupAd(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public static showRatePopup(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 2288
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->showRatePopup(Landroid/app/Activity;Z)V

    .line 2289
    return-void
.end method

.method public static showRatePopup(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "showInterstitialAd"

    .prologue
    .line 2295
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_RATE_POPUP:Ljava/lang/String;

    const-string v4, "true"

    invoke-static {p0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2299
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->RATE_POPUP_MESSAGE:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->processRatePopupMessage(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Do Not Rate"

    new-instance v5, Lcom/wifi/hacker/cracker/BootReceiver$30;

    invoke-direct {v5, p1, p0}, Lcom/wifi/hacker/cracker/BootReceiver$30;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Rate Now"

    new-instance v5, Lcom/wifi/hacker/cracker/BootReceiver$29;

    invoke-direct {v5, p0}, Lcom/wifi/hacker/cracker/BootReceiver$29;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2317
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2318
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2321
    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2322
    .local v0, acceptButton:Landroid/widget/Button;
    const-string v3, "<b>Rate Now</b>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2323
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, -0x55ff0100

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2324
    return-void
.end method

.method public static showStartInterstitial(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 437
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_START:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 439
    return-void
.end method

.method public static showTabViewInterstitial(Landroid/app/Activity;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 1
    .parameter "activity"
    .parameter "tabViewOnLoadListener"

    .prologue
    .line 450
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_TABVIEW:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/wifi/hacker/cracker/BootReceiver;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 451
    return-void
.end method

.method public static start(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "showRateMePopup"

    .prologue
    .line 336
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->start(Landroid/app/Activity;ZZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 337
    return-void
.end method

.method public static start(Landroid/app/Activity;ZZ)V
    .locals 1
    .parameter "activity"
    .parameter "showRateMePopup"
    .parameter "showInterstitialAdWithDisclaimer"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->start(Landroid/app/Activity;ZZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 356
    return-void
.end method

.method public static start(Landroid/app/Activity;ZZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 3
    .parameter "activity"
    .parameter "showRateMePopup"
    .parameter "showInterstitialAdWithDisclaimer"
    .parameter "tabViewOnLoadListener"

    .prologue
    .line 359
    if-eqz p0, :cond_2

    .line 364
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->hasDisclaimerBeenShownYet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    invoke-static {p0, p1, p2}, Lcom/wifi/hacker/cracker/BootReceiver;->showDisclaimer(Landroid/app/Activity;ZZ)V

    .line 366
    sget-object v0, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INSTALL_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 372
    :goto_0
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->hasParseLoaded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-static {p0, v0, p3}, Lcom/wifi/hacker/cracker/BootReceiver;->loadParseAdSettings(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->chartboostOnStart(Landroid/app/Activity;)V

    .line 380
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->revmobOnStart(Landroid/app/Activity;)V

    .line 384
    :cond_1
    if-eqz p3, :cond_2

    .line 385
    invoke-static {p0, p3}, Lcom/wifi/hacker/cracker/BootReceiver;->showTabViewInterstitial(Landroid/app/Activity;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 388
    :cond_2
    return-void

    .line 368
    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->doPostDisclaimerStuff(Landroid/app/Activity;ZZ)V

    goto :goto_0
.end method

.method private static startNotificationAds(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 1313
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1314
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1315
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushStartNotifications(Landroid/content/Context;)V

    .line 1316
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->airpushStartIcons(Landroid/content/Context;)V

    .line 1318
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->leadboltStartNotifications(Landroid/content/Context;)V

    .line 1319
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->leadboltStartIcons(Landroid/content/Context;)V

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/wifi/hacker/cracker/BootReceiver;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".RETRY_NOTIFICATION_ADS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1326
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1327
    .local v1, localAlarmManager1:Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1328
    const-wide/32 v5, 0x927c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v2, v5, v7

    .line 1329
    .local v2, nextAbsoluteTime:J
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1330
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #localAlarmManager1:Landroid/app/AlarmManager;
    .end local v2           #nextAbsoluteTime:J
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static startappStart(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1306
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->isDisclaimerAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->initSDK(Landroid/content/Context;Z)V

    .line 1309
    :cond_0
    return-void
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 2529
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2530
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2531
    return-void
.end method

.method public static userOptOutDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "activity"
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramString3"
    .parameter "showRateMePopup"
    .parameter "showInterstitialAdWithDisclaimer"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 2471
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2472
    .local v2, localAlertDialog:Landroid/app/AlertDialog;
    const-string v4, "<b>License Agreement and Privacy Policy</b>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2475
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2476
    .local v3, s:Landroid/text/SpannableString;
    const/16 v4, 0xf

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 2479
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2480
    new-instance v4, Lcom/wifi/hacker/cracker/BootReceiver$31;

    invoke-direct {v4, p0, p4, p5}, Lcom/wifi/hacker/cracker/BootReceiver$31;-><init>(Landroid/app/Activity;ZZ)V

    invoke-virtual {v2, v7, p2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2495
    new-instance v4, Lcom/wifi/hacker/cracker/BootReceiver$32;

    invoke-direct {v4, p0, p4, p5}, Lcom/wifi/hacker/cracker/BootReceiver$32;-><init>(Landroid/app/Activity;ZZ)V

    invoke-virtual {v2, v6, p3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2506
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2507
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2511
    const v4, 0x102000b

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2517
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 2518
    .local v1, declineButton:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2521
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2522
    .local v0, acceptButton:Landroid/widget/Button;
    const-string v4, "<b>Accept</b>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, -0x55ff0100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2526
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    .line 136
    .local v23, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 137
    .local v28, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".PUSH_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 138
    .local v18, ACTION_PUSH_NOTIFICATION:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".UPDATE_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 139
    .local v22, ACTION_UPDATE_SETTINGS:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".PUSH_NOTIFICATION_CLICK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 140
    .local v19, ACTION_PUSH_NOTIFICATION_CLICK:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".MAKE_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 141
    .local v17, ACTION_MAKE_NOTIFICATION:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".RELOAD_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 142
    .local v20, ACTION_RELOAD_SETTINGS:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".RETRY_NOTIFICATION_ADS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 144
    .local v21, ACTION_RETRY_NOTIFICATION_ADS:Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 145
    const-string v3, "USER_PRESENT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/wifi/hacker/cracker/BootReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/wifi/hacker/cracker/BootReceiver;->shouldShowLetang(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/wifi/hacker/cracker/MyActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v24, in:Landroid/content/Intent;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v3, 0x1000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const v3, 0x8000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v17           #ACTION_MAKE_NOTIFICATION:Ljava/lang/String;
    .end local v18           #ACTION_PUSH_NOTIFICATION:Ljava/lang/String;
    .end local v19           #ACTION_PUSH_NOTIFICATION_CLICK:Ljava/lang/String;
    .end local v20           #ACTION_RELOAD_SETTINGS:Ljava/lang/String;
    .end local v21           #ACTION_RETRY_NOTIFICATION_ADS:Ljava/lang/String;
    .end local v22           #ACTION_UPDATE_SETTINGS:Ljava/lang/String;
    .end local v23           #action:Ljava/lang/String;
    .end local v24           #in:Landroid/content/Intent;
    .end local v28           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v17       #ACTION_MAKE_NOTIFICATION:Ljava/lang/String;
    .restart local v18       #ACTION_PUSH_NOTIFICATION:Ljava/lang/String;
    .restart local v19       #ACTION_PUSH_NOTIFICATION_CLICK:Ljava/lang/String;
    .restart local v20       #ACTION_RELOAD_SETTINGS:Ljava/lang/String;
    .restart local v21       #ACTION_RETRY_NOTIFICATION_ADS:Ljava/lang/String;
    .restart local v22       #ACTION_UPDATE_SETTINGS:Ljava/lang/String;
    .restart local v23       #action:Ljava/lang/String;
    .restart local v28       #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_TITLE:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, notificationTitle:Ljava/lang/String;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_TITLE:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, iconTitle:Ljava/lang/String;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, notificationPackage:Ljava/lang/String;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_NOTIFICATION_DESCRIPTION:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, notificationDescription:Ljava/lang/String;
    sget-object v3, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_LAST_ICON_URL:Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, iconUrl:Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    .line 176
    const-string v3, "http:"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https:"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    :cond_2
    move-object v7, v12

    .line 182
    .local v7, notificationUrl:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/wifi/hacker/cracker/BootReceiver;->makeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p1

    invoke-static {v0, v11, v7, v8}, Lcom/wifi/hacker/cracker/BootReceiver;->makeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v5           #notificationTitle:Ljava/lang/String;
    .end local v6           #notificationDescription:Ljava/lang/String;
    .end local v7           #notificationUrl:Ljava/lang/String;
    .end local v8           #iconUrl:Ljava/lang/String;
    .end local v11           #iconTitle:Ljava/lang/String;
    .end local v12           #notificationPackage:Ljava/lang/String;
    .end local v17           #ACTION_MAKE_NOTIFICATION:Ljava/lang/String;
    .end local v18           #ACTION_PUSH_NOTIFICATION:Ljava/lang/String;
    .end local v19           #ACTION_PUSH_NOTIFICATION_CLICK:Ljava/lang/String;
    .end local v20           #ACTION_RELOAD_SETTINGS:Ljava/lang/String;
    .end local v21           #ACTION_RETRY_NOTIFICATION_ADS:Ljava/lang/String;
    .end local v22           #ACTION_UPDATE_SETTINGS:Ljava/lang/String;
    .end local v23           #action:Ljava/lang/String;
    .end local v28           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 179
    .restart local v5       #notificationTitle:Ljava/lang/String;
    .restart local v6       #notificationDescription:Ljava/lang/String;
    .restart local v8       #iconUrl:Ljava/lang/String;
    .restart local v11       #iconTitle:Ljava/lang/String;
    .restart local v12       #notificationPackage:Ljava/lang/String;
    .restart local v17       #ACTION_MAKE_NOTIFICATION:Ljava/lang/String;
    .restart local v18       #ACTION_PUSH_NOTIFICATION:Ljava/lang/String;
    .restart local v19       #ACTION_PUSH_NOTIFICATION_CLICK:Ljava/lang/String;
    .restart local v20       #ACTION_RELOAD_SETTINGS:Ljava/lang/String;
    .restart local v21       #ACTION_RETRY_NOTIFICATION_ADS:Ljava/lang/String;
    .restart local v22       #ACTION_UPDATE_SETTINGS:Ljava/lang/String;
    .restart local v23       #action:Ljava/lang/String;
    .restart local v28       #packageName:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #notificationUrl:Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v5           #notificationTitle:Ljava/lang/String;
    .end local v6           #notificationDescription:Ljava/lang/String;
    .end local v7           #notificationUrl:Ljava/lang/String;
    .end local v8           #iconUrl:Ljava/lang/String;
    .end local v11           #iconTitle:Ljava/lang/String;
    .end local v12           #notificationPackage:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    new-instance v27, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.parse.Data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v27, notificationData:Lorg/json/JSONObject;
    const-string v3, "notification_title"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    .restart local v5       #notificationTitle:Ljava/lang/String;
    const-string v3, "description"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .restart local v6       #notificationDescription:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .restart local v12       #notificationPackage:Ljava/lang/String;
    const-string v3, "icon_title"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 205
    .restart local v11       #iconTitle:Ljava/lang/String;
    const-string v3, "icon_url"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    const-string v3, "icon_url"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .restart local v8       #iconUrl:Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    .line 214
    move-object/from16 v0, p1

    invoke-static {v0, v5, v11, v12}, Lcom/wifi/hacker/cracker/BootReceiver;->shouldMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const-wide/16 v14, 0x0

    .local v14, delayMillis:J
    move-object/from16 v9, p1

    move-object v10, v5

    move-object v13, v6

    move-object/from16 v16, v8

    .line 217
    invoke-static/range {v9 .. v16}, Lcom/wifi/hacker/cracker/BootReceiver;->scheduleMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v8           #iconUrl:Ljava/lang/String;
    .end local v14           #delayMillis:J
    :cond_5
    const-string v8, ""

    .restart local v8       #iconUrl:Ljava/lang/String;
    goto :goto_2

    .line 222
    .end local v5           #notificationTitle:Ljava/lang/String;
    .end local v6           #notificationDescription:Ljava/lang/String;
    .end local v8           #iconUrl:Ljava/lang/String;
    .end local v11           #iconTitle:Ljava/lang/String;
    .end local v12           #notificationPackage:Ljava/lang/String;
    .end local v27           #notificationData:Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 224
    new-instance v25, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.parse.Data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v25, jsonObject:Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v26

    .line 227
    .local v26, myIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    :try_start_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 230
    .local v30, setting:Ljava/lang/String;
    if-eqz v30, :cond_7

    const-string v3, "action"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 231
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 232
    .local v31, settingValue:Ljava/lang/String;
    if-eqz v31, :cond_7

    .line 233
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 237
    .end local v30           #setting:Ljava/lang/String;
    .end local v31           #settingValue:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 245
    .end local v25           #jsonObject:Lorg/json/JSONObject;
    .end local v26           #myIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 248
    const-string v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 249
    .local v32, url:Ljava/lang/String;
    if-eqz v32, :cond_0

    .line 250
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v29, redirectIntent:Landroid/content/Intent;
    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    const/high16 v3, 0x1000

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 256
    .end local v29           #redirectIntent:Landroid/content/Intent;
    .end local v32           #url:Ljava/lang/String;
    :cond_9
    const-string v3, "BOOT_COMPLETED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 260
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/wifi/hacker/cracker/BootReceiver$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver$1;-><init>(Lcom/wifi/hacker/cracker/BootReceiver;Landroid/content/Context;)V

    const-wide/16 v9, 0xfa0

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 281
    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 284
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->loadParseAdSettings(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    goto/16 :goto_0

    .line 285
    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-static/range {p1 .. p1}, Lcom/wifi/hacker/cracker/BootReceiver;->startNotificationAds(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
