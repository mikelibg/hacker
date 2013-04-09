.class public Lcom/pad/android/iappad/AdController;
.super Ljava/lang/Object;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/iappad/AdController$AdShakeListener;,
        Lcom/pad/android/iappad/AdController$Dimensions;,
        Lcom/pad/android/iappad/AdController$OfferPolling;,
        Lcom/pad/android/iappad/AdController$PlayerProperties;,
        Lcom/pad/android/iappad/AdController$Polling;,
        Lcom/pad/android/iappad/AdController$Properties;,
        Lcom/pad/android/iappad/AdController$ReflectedParcelable;
    }
.end annotation


# static fields
.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "boolean"

.field public static final EXIT:Ljava/lang/String; = "exit"

.field private static final FLOAT_TYPE:Ljava/lang/String; = "float"

.field public static final FULL_SCREEN:Ljava/lang/String; = "fullscreen"

.field private static final INT_TYPE:Ljava/lang/String; = "int"

.field public static final LB_LOG:Ljava/lang/String; = "LBAdController"

.field private static final NAVIGATION_TYPE:Ljava/lang/String; = "class com.pad.android.util.AdNavigationStringEnum"

.field public static final SDK_LEVEL:Ljava/lang/String; = "00"

.field public static final SDK_VERSION:Ljava/lang/String; = "4"

.field private static final STRING_TYPE:Ljava/lang/String; = "class java.lang.String"

.field public static final STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final TRANSITION_TYPE:Ljava/lang/String; = "class com.pad.android.util.AdTransitionStringEnum"


# instance fields
.field private final FILE_NAME:Ljava/lang/String;

.field private final LB_MAX_POLL:I

.field private final LB_SET_MANUAL_AFTER:I

.field private activity:Landroid/app/Activity;

.field private adDestroyed:Z

.field private adDisplayInterval:Ljava/lang/String;

.field private adLoaded:Z

.field private adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

.field private adTask:Lcom/pad/android/iappad/AdTask;

.field private additionalDockingMargin:I

.field private am:Landroid/media/AudioManager;

.field private audioAdLoaded:Z

.field private audioAdsStream:Ljava/io/FileInputStream;

.field private audioListener:Lcom/pad/android/listener/AdAudioListener;

.field private backBtn:Landroid/widget/Button;

.field private backgroundLoad:Z

.field private closeBtn:Landroid/widget/Button;

.field private completed:Z

.field protected context:Landroid/content/Context;

.field private footer:Landroid/view/View;

.field private footerTitle:Landroid/widget/TextView;

.field private fwdBtn:Landroid/widget/Button;

.field private homeBtn:Landroid/widget/Button;

.field private homeLoaded:Z

.field private initialized:Z

.field private isAudioAd:Z

.field private isRichMedia:Z

.field private layout:Landroid/widget/RelativeLayout;

.field private linkClicked:Z

.field private listener:Lcom/pad/android/listener/AdListener;

.field private loadAd:Z

.field private loadProgress:Ljava/lang/Runnable;

.field private loadUrl:Ljava/lang/String;

.field private loading:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private lpC:Landroid/widget/RelativeLayout$LayoutParams;

.field private mForce:F

.field private mForceCurrent:F

.field private mForceLast:F

.field private mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field protected mView:Lcom/pad/android/richmedia/view/AdView;

.field private mainView:Landroid/webkit/WebView;

.field private mainViewParent:Landroid/view/ViewGroup;

.field private mask:Landroid/view/View;

.field private mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mp:Landroid/media/MediaPlayer;

.field private nativeOpen:Z

.field private oldVolumeLevel:I

.field private onAdLoaded:Z

.field private pollBtn:Landroid/widget/Button;

.field private pollCount:I

.field private pollManual:I

.field private pollMax:I

.field private pollingHandler:Landroid/os/Handler;

.field private pollingInitialized:Z

.field private progressHandler:Landroid/os/Handler;

.field private progressInterval:I

.field private refreshBtn:Landroid/widget/Button;

.field private results:Lorg/json/JSONObject;

.field private sHeight:I

.field private sWidth:I

.field private sectionid:Ljava/lang/String;

.field private subid:Ljava/lang/String;

.field private task:Lcom/pad/android/iappad/AdAudioTask;

.field private title:Landroid/widget/TextView;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/view/View;

.field private useLocation:Z

.field private webview:Lcom/pad/android/iappad/AdWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "sid"

    .prologue
    .line 193
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "act"
    .parameter "sid"
    .parameter "w"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_MAX_POLL:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_SET_MANUAL_AFTER:I

    .line 94
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    .line 95
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 96
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 99
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 100
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->useLocation:Z

    .line 101
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->nativeOpen:Z

    .line 105
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->initialized:Z

    .line 123
    iput v1, p0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    .line 130
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController;->loadAd:Z

    .line 131
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    .line 135
    iput v1, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    .line 138
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 139
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 140
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollCount:I

    .line 141
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollMax:I

    .line 142
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollManual:I

    .line 143
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    .line 158
    const-string v0, "audioads.mp3"

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->FILE_NAME:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    .line 170
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 173
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    .line 174
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    .line 175
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    .line 176
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    .line 179
    new-instance v0, Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-direct {v0, p0, v2}, Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 207
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    .line 208
    iput-object p2, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4
    .parameter "act"
    .parameter "sid"
    .parameter "ly"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_MAX_POLL:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_SET_MANUAL_AFTER:I

    .line 94
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    .line 95
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 96
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 99
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 100
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->useLocation:Z

    .line 101
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->nativeOpen:Z

    .line 105
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->initialized:Z

    .line 123
    iput v1, p0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    .line 130
    iput-boolean v3, p0, Lcom/pad/android/iappad/AdController;->loadAd:Z

    .line 131
    iput-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    .line 135
    iput v1, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    .line 138
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 139
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 140
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollCount:I

    .line 141
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollMax:I

    .line 142
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollManual:I

    .line 143
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    .line 158
    const-string v0, "audioads.mp3"

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->FILE_NAME:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    .line 170
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 173
    iput-boolean v3, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    .line 174
    iput-object v2, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    .line 175
    iput-object v2, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    .line 176
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    .line 179
    new-instance v0, Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-direct {v0, p0, v3}, Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 254
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    .line 255
    iput-object p2, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    .line 256
    if-nez p3, :cond_0

    .line 258
    new-instance p3, Landroid/widget/RelativeLayout;

    .end local p3
    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .restart local p3
    :cond_0
    iput-object p3, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    .line 261
    iput-object v2, p0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdAudioListener;)V
    .locals 1
    .parameter "act"
    .parameter "sid"
    .parameter "lt"

    .prologue
    .line 239
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    .line 240
    iput-object p3, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdListener;)V
    .locals 1
    .parameter "act"
    .parameter "sid"
    .parameter "lt"

    .prologue
    .line 224
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    .line 225
    iput-object p3, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    .line 226
    return-void
.end method

.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 4
    .parameter "adView"
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_MAX_POLL:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/pad/android/iappad/AdController;->LB_SET_MANUAL_AFTER:I

    .line 94
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    .line 95
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 96
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 99
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 100
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->useLocation:Z

    .line 101
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->nativeOpen:Z

    .line 105
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->initialized:Z

    .line 123
    iput v1, p0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    .line 130
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController;->loadAd:Z

    .line 131
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    .line 135
    iput v1, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    .line 138
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 139
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 140
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollCount:I

    .line 141
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollMax:I

    .line 142
    iput v1, p0, Lcom/pad/android/iappad/AdController;->pollManual:I

    .line 143
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    .line 158
    const-string v0, "audioads.mp3"

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->FILE_NAME:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    .line 170
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 173
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    .line 174
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    .line 175
    iput-object v3, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    .line 176
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    .line 179
    new-instance v0, Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-direct {v0, p0, v2}, Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 267
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    .line 268
    iput-object p2, p0, Lcom/pad/android/iappad/AdController;->context:Landroid/content/Context;

    .line 269
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/iappad/AdController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/iappad/AdController;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pad/android/iappad/AdController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    return-void
.end method

.method static synthetic access$11(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2097
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    return-void
.end method

.method static synthetic access$12(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pad/android/iappad/AdController;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pad/android/iappad/AdController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    return-void
.end method

.method static synthetic access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pad/android/iappad/AdController;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pad/android/iappad/AdController;)F
    .locals 1
    .parameter

    .prologue
    .line 165
    iget v0, p0, Lcom/pad/android/iappad/AdController;->mForceCurrent:F

    return v0
.end method

.method static synthetic access$18(Lcom/pad/android/iappad/AdController;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/pad/android/iappad/AdController;->mForceLast:F

    return-void
.end method

.method static synthetic access$19(Lcom/pad/android/iappad/AdController;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput p1, p0, Lcom/pad/android/iappad/AdController;->mForceCurrent:F

    return-void
.end method

.method static synthetic access$2(Lcom/pad/android/iappad/AdController;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/pad/android/iappad/AdController;->pollCount:I

    return v0
.end method

.method static synthetic access$20(Lcom/pad/android/iappad/AdController;)F
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/pad/android/iappad/AdController;->mForceLast:F

    return v0
.end method

.method static synthetic access$21(Lcom/pad/android/iappad/AdController;)F
    .locals 1
    .parameter

    .prologue
    .line 164
    iget v0, p0, Lcom/pad/android/iappad/AdController;->mForce:F

    return v0
.end method

.method static synthetic access$22(Lcom/pad/android/iappad/AdController;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/pad/android/iappad/AdController;->mForce:F

    return-void
.end method

.method static synthetic access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$24(Lcom/pad/android/iappad/AdController;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$25(Lcom/pad/android/iappad/AdController;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pad/android/iappad/AdController;)I
    .locals 1
    .parameter

    .prologue
    .line 167
    iget v0, p0, Lcom/pad/android/iappad/AdController;->oldVolumeLevel:I

    return v0
.end method

.method static synthetic access$27(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->displayAd()V

    return-void
.end method

.method static synthetic access$28(Lcom/pad/android/iappad/AdController;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    return v0
.end method

.method static synthetic access$29(Lcom/pad/android/iappad/AdController;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pad/android/iappad/AdController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/pad/android/iappad/AdController;->pollCount:I

    return-void
.end method

.method static synthetic access$30(Lcom/pad/android/iappad/AdController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$31(Lcom/pad/android/iappad/AdController;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$32(Lcom/pad/android/iappad/AdController;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    return v0
.end method

.method static synthetic access$33(Lcom/pad/android/iappad/AdController;)Z
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    return v0
.end method

.method static synthetic access$34(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2224
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->goForward()V

    return-void
.end method

.method static synthetic access$35(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2209
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->goBack()V

    return-void
.end method

.method static synthetic access$36(Lcom/pad/android/iappad/AdController;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$37(Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdController$OfferPolling;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    return-void
.end method

.method static synthetic access$38(Lcom/pad/android/iappad/AdController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pad/android/iappad/AdController;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/pad/android/iappad/AdController;->pollMax:I

    return v0
.end method

.method static synthetic access$40(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdWebView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    return-object v0
.end method

.method static synthetic access$41(Lcom/pad/android/iappad/AdController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$42(Lcom/pad/android/iappad/AdController;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/pad/android/iappad/AdController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$44(Lcom/pad/android/iappad/AdController;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$45(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$46(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$47(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$48(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->refreshBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$49(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pad/android/iappad/AdController;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/pad/android/iappad/AdController;->pollManual:I

    return v0
.end method

.method static synthetic access$50(Lcom/pad/android/iappad/AdController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$51(Lcom/pad/android/iappad/AdController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    return-void
.end method

.method static synthetic access$52(Lcom/pad/android/iappad/AdController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->loading:Z

    return-void
.end method

.method static synthetic access$6(Lcom/pad/android/iappad/AdController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdController$OfferPolling;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pad/android/iappad/AdController;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->showManualPoll()V

    return-void
.end method

.method private closeUnlocker()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2099
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->getAdVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2207
    :goto_0
    return-void

    .line 2104
    :cond_0
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    if-nez v2, :cond_1

    .line 2108
    :try_start_0
    const-string v2, "LBAdController"

    const-string v3, "onAdClosed triggered"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v2}, Lcom/pad/android/listener/AdListener;->onAdClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2121
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v2}, Lcom/pad/android/iappad/AdWebView;->stopLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2125
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->stopLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 2130
    :goto_3
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    if-eqz v2, :cond_2

    .line 2132
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    invoke-virtual {v2, v5}, Lcom/pad/android/iappad/AdTask;->cancel(Z)Z

    .line 2134
    :cond_2
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    if-eqz v2, :cond_3

    .line 2136
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    invoke-virtual {v2, v5}, Lcom/pad/android/iappad/AdAudioTask;->cancel(Z)Z

    .line 2138
    :cond_3
    iput-boolean v5, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 2139
    const-string v2, "LBAdController"

    const-string v3, "closeUnlocker called"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    iput-boolean v4, p0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 2141
    iput-boolean v4, p0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 2142
    iput-boolean v4, p0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 2143
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 2145
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2150
    :cond_4
    :try_start_3
    const-string v2, "android.webkit.WebView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPause"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2156
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/pad/android/iappad/AdController$14;

    invoke-direct {v3, p0}, Lcom/pad/android/iappad/AdController$14;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2187
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_5

    .line 2189
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2199
    :cond_5
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2200
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2202
    .end local v1           #vg:Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    .line 2204
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2205
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when trying to remove layout - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2111
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2113
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    const-string v3, "error when onAdClosed triggered"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 2192
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2195
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseUnlocker error - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2152
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 2126
    :catch_4
    move-exception v2

    goto/16 :goto_3

    .line 2122
    :catch_5
    move-exception v2

    goto/16 :goto_2
.end method

.method private destroyAudioShakeAd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1116
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdAudioListener;->onAdClosed()V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/AdTask;->cancel(Z)Z

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/AdAudioTask;->cancel(Z)Z

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->destroySensor()V

    .line 1132
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1139
    :cond_3
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    .line 1142
    :cond_4
    return-void
.end method

.method private displayAd()V
    .locals 53

    .prologue
    .line 1201
    const-string v48, "LBAdController"

    const-string v49, "displayAd called"

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    if-nez v48, :cond_1

    .line 1204
    const-string v48, "LBAdController"

    const-string v49, "Results are null - no ad will be loaded"

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    :try_start_0
    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v49, v0

    const-string v50, "adurl"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->loadUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    .line 1213
    :goto_1
    const/16 v30, 0x0

    .line 1216
    .local v30, loadHTML:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "adhtml"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-result-object v30

    .line 1220
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    if-eqz v48, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    move/from16 v48, v0

    if-nez v48, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3

    .line 1222
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->loadUrl:Ljava/lang/String;

    move-object/from16 v48, v0

    if-eqz v48, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->loadUrl:Ljava/lang/String;

    move-object/from16 v48, v0

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_16

    .line 1224
    const-string v48, "LBAdController"

    const-string v49, "WebView is not null - going to load data here"

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->loadUrl:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/iappad/AdWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->loadUrl:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/iappad/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 1227
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 1248
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    move/from16 v48, v0

    if-nez v48, :cond_0

    .line 1256
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "useclickwindow"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v48

    if-nez v48, :cond_4

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "useclickwindow"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, "1"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_4

    .line 1260
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 1261
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 1262
    const-string v48, "LBAdController"

    const-string v49, "Going to use click window - cancel out of here..."

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->linkClicked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1268
    :catch_0
    move-exception v14

    .line 1270
    .local v14, e:Ljava/lang/Exception;
    const-string v48, "LBAdController"

    move-object/from16 v0, v48

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1271
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Exception when using ClickWindow - "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .end local v14           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    move/from16 v48, v0

    if-nez v48, :cond_0

    .line 1276
    const-string v48, "LBAdController"

    const-string v49, "Going to load the Ad now..."

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 1278
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 1281
    const/16 v48, 0x1

    :try_start_3
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "show"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    const-string v49, "1"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->destroyAudioShakeAd()V

    .line 1285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->completed:Z

    move/from16 v48, v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v48, :cond_1a

    .line 1292
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1298
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->refreshBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    if-eqz v48, :cond_5

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1318
    :cond_5
    :goto_5
    :try_start_6
    new-instance v48, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v48, v0

    const/high16 v49, -0x100

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "maskalpha"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v48

    const-wide v50, 0x406fe00000000000L

    mul-double v5, v48, v50

    .line 1326
    .local v5, alpha:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v48

    double-to-int v0, v5

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v48, v0

    new-instance v49, Lcom/pad/android/iappad/AdController$6;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$6;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1334
    .end local v5           #alpha:D
    :goto_6
    :try_start_7
    new-instance v32, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v48, -0x1

    const/16 v49, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1335
    .local v32, mM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1336
    new-instance v31, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v31 .. v32}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1339
    .local v31, mL:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowy"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 1340
    .local v47, windowYPos:I
    const-string v13, "Middle"
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1343
    .local v13, docking:Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowdockingy"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v13

    .line 1346
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titlevisible"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    if-nez v48, :cond_8

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v48, :cond_6

    .line 1356
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowtransparency"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, "1"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_6

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/iappad/AdWebView;->setBackgroundColor(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    .line 1367
    :cond_6
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v48, v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v48, :cond_7

    .line 1371
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowtransparency"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, "1"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_7

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/richmedia/view/AdView;->setBackgroundColor(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    .line 1383
    :cond_7
    :goto_9
    :try_start_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    move/from16 v48, v0

    if-lez v48, :cond_8

    const-string v48, "Middle"

    move-object/from16 v0, v48

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_8

    .line 1384
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Additional Docking is set, adjusting banner by "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "px"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v48, "Top"

    move-object/from16 v0, v48

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 1388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    move/from16 v48, v0

    add-int v47, v47, v48

    .line 1402
    :cond_8
    :goto_a
    new-instance v46, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowwidth"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v49, v0

    const-string v50, "windowheight"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1403
    .local v46, wM:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "windowx"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v48

    move/from16 v2, v47

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1404
    new-instance v45, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v45 .. v46}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1407
    .local v45, wL:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titlex"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 1408
    .local v40, toolbarx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titley"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 1409
    .local v41, toolbary:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titlewidth"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 1410
    .local v39, toolbarwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titleheight"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 1411
    .local v38, toolbarheight:I
    new-instance v34, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v34

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1412
    .local v34, tM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1413
    new-instance v33, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v33 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1414
    .local v33, tL:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v48, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titlecolor"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1416
    .local v12, clr:Ljava/lang/String;
    const-string v48, ""

    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_9

    if-nez v12, :cond_a

    .line 1418
    :cond_9
    const-string v12, "#E6E6E6"

    .line 1420
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v48, v0

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1423
    new-instance v48, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v49, v0

    const-string v50, "titletext"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titletextcolor"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1426
    .local v9, clk:Ljava/lang/String;
    const-string v48, ""

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_b

    if-nez v9, :cond_c

    .line 1428
    :cond_b
    const-string v9, "#E6E6E6"

    .line 1430
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titletextheight"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 1432
    .local v35, titletextheight:I
    new-instance v43, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titletextwidth"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    move-object/from16 v0, v43

    move/from16 v1, v48

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1433
    .local v43, tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v36, v40, 0x14

    .line 1434
    .local v36, titlex:I
    sub-int v48, v38, v35

    div-int/lit8 v48, v48, 0x2

    add-int v48, v48, v41

    add-int/lit8 v37, v48, 0x4

    .line 1435
    .local v37, titley:I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1436
    new-instance v42, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v42 .. v43}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1439
    .local v42, tvl:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footerx"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1440
    .local v24, footerx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footery"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1441
    .local v25, footery:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footerheight"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1442
    .local v22, footerheight:I
    new-instance v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footerwidth"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    move-object/from16 v0, v18

    move/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1443
    .local v18, fM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1444
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v17 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1445
    .local v17, fL:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v48, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footercolor"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1447
    .local v16, fClr:Ljava/lang/String;
    const-string v48, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_d

    if-nez v16, :cond_e

    .line 1449
    :cond_d
    const-string v16, "#E6E6E6"

    .line 1451
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v48, v0

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1454
    new-instance v48, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v49, v0

    const-string v50, "footertext"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v48, v0

    const/high16 v49, 0x4120

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footertextheight"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1458
    .local v23, footertextheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footertextcolor"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1459
    .local v21, fclk:Ljava/lang/String;
    const-string v48, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_f

    if-nez v21, :cond_10

    .line 1461
    :cond_f
    const-string v21, "#E6E6E6"

    .line 1463
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1464
    new-instance v29, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footertextwidth"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    move-object/from16 v0, v29

    move/from16 v1, v48

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1465
    .local v29, fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v19, v24, 0x14

    .line 1466
    .local v19, fTitlex:I
    sub-int v48, v22, v23

    div-int/lit8 v48, v48, 0x2

    add-int v20, v25, v48

    .line 1467
    .local v20, fTitley:I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1468
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1472
    .local v28, fvl:Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v48, v38, -0x5

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1473
    .local v8, buttonHeight:I
    div-int/lit8 v48, v8, 0x2

    move/from16 v0, v48

    int-to-float v7, v0

    .line 1474
    .local v7, buttonFont:F
    new-instance v48, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    const-string v49, "X"

    invoke-virtual/range {v48 .. v49}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/Button;->setTextColor(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual/range {v48 .. v52}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v48, v0

    new-instance v49, Lcom/pad/android/iappad/AdController$7;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$7;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v48 .. v49}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    new-instance v48, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v49, 0x37

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1488
    add-int v48, v39, v40

    add-int/lit8 v48, v48, -0x37

    add-int/lit8 v10, v48, -0x5

    .line 1489
    .local v10, closex:I
    sub-int v48, v38, v8

    div-int/lit8 v48, v48, 0x2

    add-int v48, v48, v41

    add-int/lit8 v11, v48, 0x2

    .line 1490
    .local v11, closey:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1491
    new-instance v48, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v49, v0

    invoke-direct/range {v48 .. v49}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->lpC:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v48, v0

    if-eqz v48, :cond_11

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v48

    check-cast v48, Landroid/view/ViewGroup;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->mainViewParent:Landroid/view/ViewGroup;

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainViewParent:Landroid/view/ViewGroup;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1500
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "maskvisible"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_12

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v48, v0

    if-eqz v48, :cond_12

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mainView:Landroid/webkit/WebView;

    move-object/from16 v48, v0

    new-instance v49, Lcom/pad/android/iappad/AdController$8;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$8;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v48 .. v49}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1515
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    move/from16 v48, v0

    if-eqz v48, :cond_18

    .line 1517
    const-string v48, "LBAdController"

    const-string v49, "Going to add mView to layout now..."

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titlevisible"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_14

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "titletext"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_13

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1534
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "showclose"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_14

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->lpC:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v50, v0

    invoke-virtual/range {v48 .. v50}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footervisible"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_15

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "footertext"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_15

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    :cond_15
    new-instance v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->sWidth:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->sHeight:I

    move/from16 v49, v0

    move-object/from16 v0, v26

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1549
    .local v26, full:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1550
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1553
    .local v27, fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2

    .line 1570
    :goto_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v48, v0

    const-string v49, "pollenable"

    invoke-virtual/range {v48 .. v49}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    move/from16 v48, v0

    if-nez v48, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollMax:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollManual:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_19

    .line 1572
    const-string v48, "LBAdController"

    const-string v49, "Polling going to be set..."

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 1574
    new-instance v48, Lcom/pad/android/iappad/AdController$OfferPolling;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$OfferPolling;-><init>(Lcom/pad/android/iappad/AdController;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    .line 1575
    new-instance v48, Landroid/os/Handler;

    invoke-direct/range {v48 .. v48}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 1578
    :try_start_10
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Polling initialized every "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v50, v0

    const-string v51, "pollinterval"

    invoke-virtual/range {v50 .. v51}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "s"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v50, v0

    const-string v51, "pollinterval"

    invoke-virtual/range {v50 .. v51}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v50

    move/from16 v0, v50

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    invoke-virtual/range {v48 .. v51}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_0

    .line 1581
    :catch_1
    move-exception v14

    .line 1582
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_11
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Error in initializing polling - "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v48, "LBAdController"

    move-object/from16 v0, v48

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_0

    .line 1625
    .end local v7           #buttonFont:F
    .end local v8           #buttonHeight:I
    .end local v9           #clk:Ljava/lang/String;
    .end local v10           #closex:I
    .end local v11           #closey:I
    .end local v12           #clr:Ljava/lang/String;
    .end local v13           #docking:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v16           #fClr:Ljava/lang/String;
    .end local v17           #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18           #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v19           #fTitlex:I
    .end local v20           #fTitley:I
    .end local v21           #fclk:Ljava/lang/String;
    .end local v22           #footerheight:I
    .end local v23           #footertextheight:I
    .end local v24           #footerx:I
    .end local v25           #footery:I
    .end local v26           #full:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v27           #fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v31           #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v33           #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v34           #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v35           #titletextheight:I
    .end local v36           #titlex:I
    .end local v37           #titley:I
    .end local v38           #toolbarheight:I
    .end local v39           #toolbarwidth:I
    .end local v40           #toolbarx:I
    .end local v41           #toolbary:I
    .end local v42           #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v43           #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v45           #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v46           #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v47           #windowYPos:I
    :catch_2
    move-exception v14

    .line 1627
    .local v14, e:Lorg/json/JSONException;
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    .line 1628
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "JSONException - "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    .end local v14           #e:Lorg/json/JSONException;
    :cond_16
    if-eqz v30, :cond_3

    const-string v48, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_3

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    const-string v49, "text/html"

    const-string v50, "utf-8"

    move-object/from16 v0, v48

    move-object/from16 v1, v30

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/pad/android/iappad/AdWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1294
    :catch_3
    move-exception v14

    .line 1296
    .local v14, e:Ljava/lang/Exception;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_4

    .line 1313
    .end local v14           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v48

    goto/16 :goto_5

    .line 1362
    .restart local v13       #docking:Ljava/lang/String;
    .restart local v31       #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v32       #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v47       #windowYPos:I
    :catch_5
    move-exception v14

    .line 1364
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/iappad/AdWebView;->setBackgroundColor(I)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_8

    .line 1630
    .end local v13           #docking:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v31           #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v47           #windowYPos:I
    :catch_6
    move-exception v14

    .line 1632
    .restart local v14       #e:Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    .line 1633
    const-string v48, "LBAdController"

    move-object/from16 v0, v48

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1634
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Exception - "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v13       #docking:Ljava/lang/String;
    .restart local v31       #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v32       #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v47       #windowYPos:I
    :catch_7
    move-exception v14

    .line 1379
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/pad/android/richmedia/view/AdView;->setBackgroundColor(I)V

    goto/16 :goto_9

    .line 1390
    .end local v14           #e:Ljava/lang/Exception;
    :cond_17
    const-string v48, "Bottom"

    move-object/from16 v0, v48

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_8

    .line 1392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    move/from16 v48, v0

    sub-int v47, v47, v48

    .line 1393
    if-gez v47, :cond_8

    .line 1395
    const/16 v47, 0x0

    goto/16 :goto_a

    .line 1522
    .restart local v7       #buttonFont:F
    .restart local v8       #buttonHeight:I
    .restart local v9       #clk:Ljava/lang/String;
    .restart local v10       #closex:I
    .restart local v11       #closey:I
    .restart local v12       #clr:Ljava/lang/String;
    .restart local v16       #fClr:Ljava/lang/String;
    .restart local v17       #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v18       #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v19       #fTitlex:I
    .restart local v20       #fTitley:I
    .restart local v21       #fclk:Ljava/lang/String;
    .restart local v22       #footerheight:I
    .restart local v23       #footertextheight:I
    .restart local v24       #footerx:I
    .restart local v25       #footery:I
    .restart local v28       #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v29       #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v33       #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v34       #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v35       #titletextheight:I
    .restart local v36       #titlex:I
    .restart local v37       #titley:I
    .restart local v38       #toolbarheight:I
    .restart local v39       #toolbarwidth:I
    .restart local v40       #toolbarx:I
    .restart local v41       #toolbary:I
    .restart local v42       #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v43       #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v45       #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v46       #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_18
    const-string v48, "LBAdController"

    const-string v49, "Going to add webview to layout now..."

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_b

    .line 1555
    .restart local v26       #full:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v27       #fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_8
    move-exception v15

    .line 1559
    .local v15, ex:Ljava/lang/Exception;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    check-cast v44, Landroid/view/ViewGroup;

    .line 1560
    .local v44, vg:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_c

    .line 1563
    .end local v44           #vg:Landroid/view/ViewGroup;
    :catch_9
    move-exception v14

    .line 1565
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_16
    const-string v48, "LBAdController"

    move-object/from16 v0, v48

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1566
    const-string v48, "LBAdController"

    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "Issue attaching layout to activity - "

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1586
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #ex:Ljava/lang/Exception;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollMax:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollManual:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    .line 1588
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 1589
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->showManualPoll()V

    goto/16 :goto_0

    .line 1594
    .end local v7           #buttonFont:F
    .end local v8           #buttonHeight:I
    .end local v9           #clk:Ljava/lang/String;
    .end local v10           #closex:I
    .end local v11           #closey:I
    .end local v12           #clr:Ljava/lang/String;
    .end local v13           #docking:Ljava/lang/String;
    .end local v16           #fClr:Ljava/lang/String;
    .end local v17           #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18           #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v19           #fTitlex:I
    .end local v20           #fTitley:I
    .end local v21           #fclk:Ljava/lang/String;
    .end local v22           #footerheight:I
    .end local v23           #footertextheight:I
    .end local v24           #footerx:I
    .end local v25           #footery:I
    .end local v26           #full:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v27           #fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v31           #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v33           #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v34           #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v35           #titletextheight:I
    .end local v36           #titlex:I
    .end local v37           #titley:I
    .end local v38           #toolbarheight:I
    .end local v39           #toolbarwidth:I
    .end local v40           #toolbarx:I
    .end local v41           #toolbary:I
    .end local v42           #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v43           #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v45           #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v46           #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v47           #windowYPos:I
    :cond_1a
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 1595
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    goto/16 :goto_0

    .line 1601
    :cond_1b
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v48, v0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    if-eqz v48, :cond_1c

    .line 1608
    :try_start_17
    const-string v48, "LBAdController"

    const-string v49, "onAdFailed triggered"

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/pad/android/listener/AdListener;->onAdFailed()V

    .line 1610
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->adLoaded:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_2

    .line 1618
    :cond_1c
    :goto_d
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/pad/android/listener/AdAudioListener;->onAdFailed()V

    .line 1621
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    goto/16 :goto_0

    .line 1612
    :catch_a
    move-exception v14

    .line 1614
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v48, "LBAdController"

    const-string v49, "Error while calling onAdFailed"

    invoke-static/range {v48 .. v49}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v48, "LBAdController"

    move-object/from16 v0, v48

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_d

    .line 1345
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v13       #docking:Ljava/lang/String;
    .restart local v31       #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v32       #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v47       #windowYPos:I
    :catch_b
    move-exception v48

    goto/16 :goto_7

    .line 1332
    .end local v13           #docking:Ljava/lang/String;
    .end local v31           #mL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #mM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v47           #windowYPos:I
    :catch_c
    move-exception v48

    goto/16 :goto_6

    .line 1218
    :catch_d
    move-exception v48

    goto/16 :goto_2

    .line 1212
    .end local v30           #loadHTML:Ljava/lang/String;
    :catch_e
    move-exception v48

    goto/16 :goto_1
.end method

.method private getAdVisibility()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdWebView;->getVisibility()I

    move-result v0

    .line 557
    :goto_0
    return v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 557
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected static getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 2638
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/reflect/Field;

    .line 2639
    .local v3, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2640
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 2642
    .local v7, obj:Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v3

    if-lt v4, v11, :cond_0

    .line 2690
    return-object v7

    .line 2643
    :cond_0
    aget-object v2, v3, v4

    .line 2644
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2645
    .local v6, name:Ljava/lang/String;
    const/16 v11, 0x5f

    const/16 v12, 0x2d

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2646
    .local v0, JSONName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 2647
    .local v8, type:Ljava/lang/reflect/Type;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2649
    .local v9, typeStr:Ljava/lang/String;
    :try_start_0
    const-string v11, "int"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2650
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 2651
    .local v10, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2652
    .local v5, iVal:I
    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_3

    .line 2653
    const/4 v5, -0x1

    .line 2655
    :try_start_1
    const-string v11, "#0x"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2656
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 2668
    :goto_1
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2642
    .end local v5           #iVal:I
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2659
    .restart local v5       #iVal:I
    .restart local v10       #value:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    :try_start_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    goto :goto_1

    .line 2661
    :catch_0
    move-exception v1

    .line 2662
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v11, "LBAdController"

    invoke-static {v11, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2685
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #iVal:I
    .end local v10           #value:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2686
    .local v1, e:Lorg/json/JSONException;
    const-string v11, "LBAdController"

    invoke-static {v11, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 2666
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v5       #iVal:I
    .restart local v10       #value:Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 2669
    .end local v5           #iVal:I
    .end local v10           #value:Ljava/lang/String;
    :cond_4
    const-string v11, "class java.lang.String"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2670
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2671
    .restart local v10       #value:Ljava/lang/String;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2672
    .end local v10           #value:Ljava/lang/String;
    :cond_5
    const-string v11, "boolean"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2673
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 2674
    .local v10, value:Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2675
    .end local v10           #value:Z
    :cond_6
    const-string v11, "float"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2676
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 2677
    .local v10, value:F
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2678
    .end local v10           #value:F
    :cond_7
    const-string v11, "class com.pad.android.util.AdNavigationStringEnum"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2679
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pad/android/util/AdNavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/pad/android/util/AdNavigationStringEnum;

    move-result-object v10

    .line 2680
    .local v10, value:Lcom/pad/android/util/AdNavigationStringEnum;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2681
    .end local v10           #value:Lcom/pad/android/util/AdNavigationStringEnum;
    :cond_8
    const-string v11, "class com.pad.android.util.AdTransitionStringEnum"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2682
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pad/android/util/AdTransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/pad/android/util/AdTransitionStringEnum;

    move-result-object v10

    .line 2683
    .local v10, value:Lcom/pad/android/util/AdTransitionStringEnum;
    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 2211
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->goBack()V

    .line 2222
    :cond_0
    :goto_0
    return-void

    .line 2218
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdWebView;->goBack()V

    goto :goto_0
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->goForward()V

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdWebView;->goForward()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 825
    iget-boolean v4, p0, Lcom/pad/android/iappad/AdController;->loadAd:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/pad/android/iappad/AdController;->adShowStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 827
    const-string v2, "LBAdController"

    const-string v3, "Ad paused, will not show"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v2, :cond_0

    .line 833
    :try_start_0
    const-string v2, "LBAdController"

    const-string v3, "onAdPaused triggered"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v2}, Lcom/pad/android/listener/AdListener;->onAdPaused()V

    .line 835
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v2}, Lcom/pad/android/listener/AdListener;->onAdHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    const-string v3, "Error while calling onAdPaused"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 845
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "LBAdController"

    const-string v5, "initializing..."

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v1, 0x1

    .line 848
    .local v1, makeReq:Z
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    if-eqz v4, :cond_2

    .line 850
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    invoke-virtual {v4}, Lcom/pad/android/iappad/AdTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 852
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 854
    new-instance v5, Lcom/pad/android/iappad/AdTask;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    if-eqz v4, :cond_4

    const-string v4, "audio"

    :goto_2
    invoke-direct {v5, p0, v6, v7, v4}, Lcom/pad/android/iappad/AdTask;-><init>(Lcom/pad/android/iappad/AdController;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    .line 855
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->subid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pad/android/iappad/AdTask;->setSubId(Ljava/lang/String;)V

    .line 856
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->tokens:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/pad/android/iappad/AdTask;->setTokens(Ljava/util/List;)V

    .line 857
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    iget-boolean v5, p0, Lcom/pad/android/iappad/AdController;->useLocation:Z

    invoke-virtual {v4, v5}, Lcom/pad/android/iappad/AdTask;->setUseLocation(Z)V

    .line 858
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->adTask:Lcom/pad/android/iappad/AdTask;

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v2

    invoke-virtual {v4, v3}, Lcom/pad/android/iappad/AdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 850
    goto :goto_1

    .line 854
    :cond_4
    const-string v4, "ad"

    goto :goto_2
.end method

.method private linkClicked()V
    .locals 58

    .prologue
    .line 1641
    const-string v53, "LBAdController"

    const-string v54, "linkClicked called"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->destroyAudioShakeAd()V

    .line 1645
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    move/from16 v53, v0

    if-nez v53, :cond_16

    .line 1647
    const-string v53, "LBAdController"

    new-instance v54, Ljava/lang/StringBuilder;

    const-string v55, "Loading window..."

    invoke-direct/range {v54 .. v55}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->loading:Z

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 1649
    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    .line 1650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->loading:Z

    move/from16 v53, v0

    if-nez v53, :cond_16

    .line 1652
    const-string v53, "LBAdController"

    const-string v54, "remove the views if required first..."

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1666
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->refreshBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    if-eqz v53, :cond_0

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1683
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickwindowx"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v51

    .line 1684
    .local v51, windowx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickwindowy"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v52

    .line 1685
    .local v52, windowy:I
    new-instance v50, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickwindowwidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v54, v0

    const-string v55, "clickwindowheight"

    invoke-virtual/range {v54 .. v55}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v54

    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1686
    .local v50, wM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v50 .. v54}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1687
    new-instance v49, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v49 .. v50}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1690
    .local v49, wL:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitlewidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 1691
    .local v44, toolbarwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitleheight"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 1692
    .local v43, toolbarheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitlex"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 1693
    .local v45, toolbarx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitley"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v46

    .line 1694
    .local v46, toolbary:I
    new-instance v38, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1695
    .local v38, tM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1696
    new-instance v37, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v37 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1698
    .local v37, tL:Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1701
    :goto_2
    :try_start_4
    new-instance v53, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitlecolor"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1703
    .local v12, clr:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1

    if-nez v12, :cond_2

    .line 1705
    :cond_1
    const-string v12, "#E6E6E6"

    .line 1707
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1711
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/widget/TextView;->invalidate()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1714
    :goto_3
    :try_start_6
    new-instance v53, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v54, v0

    const-string v55, "clicktitletext"

    invoke-virtual/range {v54 .. v55}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitletextcolor"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1718
    .local v9, clk:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3

    if-nez v9, :cond_4

    .line 1720
    :cond_3
    const-string v9, "#000000"

    .line 1723
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v53, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1724
    new-instance v48, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitletextwidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    add-int/lit8 v54, v43, -0x2

    move-object/from16 v0, v48

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1725
    .local v48, tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v41, v45, 0x14

    .line 1726
    .local v41, titlex:I
    add-int/lit8 v42, v46, 0x8

    .line 1727
    .local v42, titley:I
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1729
    new-instance v47, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v47 .. v48}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1732
    .local v47, tvl:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfooterx"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1733
    .local v24, footerx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootery"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1734
    .local v25, footery:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfooterheight"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1735
    .local v23, footerheight:I
    new-instance v19, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfooterwidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v19

    move/from16 v1, v53

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1736
    .local v19, fM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1737
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v18 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1738
    .local v18, fL:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v53, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootercolor"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1740
    .local v17, fClr:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_5

    if-nez v17, :cond_6

    .line 1742
    :cond_5
    const-string v17, "#E6E6E6"

    .line 1744
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1747
    new-instance v53, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v54, v0

    const-string v55, "clickfootertext"

    invoke-virtual/range {v54 .. v55}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v53, v0

    const/high16 v54, 0x4120

    invoke-virtual/range {v53 .. v54}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootertextcolor"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1751
    .local v16, fClk:Ljava/lang/String;
    const-string v53, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7

    if-nez v16, :cond_8

    .line 1753
    :cond_7
    const-string v16, "#000000"

    .line 1755
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v53, v0

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1756
    new-instance v29, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootertextwidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v54, v0

    const-string v55, "clickfootertextheight"

    invoke-virtual/range {v54 .. v55}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v54

    move-object/from16 v0, v29

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1757
    .local v29, fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v20, v24

    .line 1758
    .local v20, fTitlex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "shownavigation"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_17

    .line 1760
    add-int/lit8 v20, v20, 0x46

    .line 1766
    :goto_4
    add-int/lit8 v21, v25, 0x5

    .line 1767
    .local v21, fTitley:I
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1768
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1771
    .local v28, fvl:Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v53, v43, -0x5

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1772
    .local v40, titleBtnHeight:I
    div-int/lit8 v53, v40, 0x2

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v39, v0

    .line 1773
    .local v39, titleBtnFont:F
    const/high16 v53, 0x4120

    cmpl-float v53, v39, v53

    if-lez v53, :cond_9

    .line 1775
    const/high16 v39, 0x4120

    .line 1777
    :cond_9
    add-int/lit8 v53, v23, -0x5

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1778
    .local v35, navBtnHeight:I
    div-int/lit8 v53, v35, 0x2

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v34, v0

    .line 1779
    .local v34, navBtnFont:F
    const/high16 v53, 0x4120

    cmpl-float v53, v34, v53

    if-lez v53, :cond_a

    .line 1781
    const/high16 v34, 0x4120

    .line 1785
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    if-eqz v53, :cond_b

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/widget/Button;->invalidate()V

    .line 1789
    :cond_b
    new-instance v53, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const-string v54, "Back"

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setTextColor(I)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v53 .. v57}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    new-instance v54, Lcom/pad/android/iappad/AdController$9;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$9;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    if-eqz v53, :cond_c

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/widget/Button;->invalidate()V

    .line 1804
    :cond_c
    new-instance v53, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const-string v54, "X"

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setTextColor(I)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v53 .. v57}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    new-instance v54, Lcom/pad/android/iappad/AdController$10;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$10;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    new-instance v53, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const-string v54, ">"

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setTextColor(I)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v53 .. v57}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    new-instance v54, Lcom/pad/android/iappad/AdController$11;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$11;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    if-eqz v53, :cond_d

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/widget/Button;->invalidate()V

    .line 1833
    :cond_d
    new-instance v53, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const-string v54, "<"

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setTextColor(I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v53 .. v57}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v53, v0

    new-instance v54, Lcom/pad/android/iappad/AdController$12;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$12;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual/range {v53 .. v54}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1845
    new-instance v33, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v53, 0x1e

    move-object/from16 v0, v33

    move/from16 v1, v53

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1846
    .local v33, nB:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfooterheight"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    sub-int v53, v53, v35

    div-int/lit8 v53, v53, 0x2

    add-int v53, v53, v25

    add-int/lit8 v8, v53, 0x3

    .line 1847
    .local v8, btny:I
    add-int/lit8 v53, v24, 0x5

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1848
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1849
    .local v5, bB:Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v53, v24, 0x5

    add-int/lit8 v53, v53, 0x1e

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1850
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1854
    .local v15, fB:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    move/from16 v53, v0

    if-eqz v53, :cond_18

    .line 1856
    const-string v53, "LBAdController"

    const-string v54, "Going to add mView click window"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v53, v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v53, :cond_e

    .line 1872
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "useclickwindow"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v53

    const-string v54, "1"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_e

    .line 1874
    const-string v53, "LBAdController"

    const-string v54, "onAdClicked triggered"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v53, v0

    invoke-interface/range {v53 .. v53}, Lcom/pad/android/listener/AdListener;->onAdClicked()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1885
    :cond_e
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitlevisible"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_10

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clicktitletext"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, ""

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_f

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1892
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "showclose"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_10

    .line 1894
    new-instance v53, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v54, 0x37

    move-object/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1895
    add-int v53, v44, v45

    add-int/lit8 v53, v53, -0x37

    add-int/lit8 v10, v53, -0x5

    .line 1896
    .local v10, closex:I
    sub-int v53, v43, v40

    div-int/lit8 v53, v53, 0x2

    add-int v53, v53, v46

    add-int/lit8 v11, v53, 0x2

    .line 1897
    .local v11, closey:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1898
    new-instance v53, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mlpC:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v54, v0

    invoke-direct/range {v53 .. v54}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->lpC:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->lpC:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v55, v0

    invoke-virtual/range {v53 .. v55}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1903
    .end local v10           #closex:I
    .end local v11           #closey:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootervisible"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_13

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfootertext"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, ""

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_11

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1910
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "shownavigation"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_12

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1915
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "showback"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_13

    .line 1917
    new-instance v30, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v53, 0x37

    move-object/from16 v0, v30

    move/from16 v1, v53

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1918
    .local v30, hB:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "clickfooterwidth"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1919
    .local v22, footerW:I
    add-int v53, v22, v24

    add-int/lit8 v53, v53, -0x37

    add-int/lit8 v6, v53, -0x5

    .line 1920
    .local v6, backX:I
    sub-int v53, v23, v35

    div-int/lit8 v53, v53, 0x2

    add-int v53, v53, v25

    add-int/lit8 v7, v53, 0x2

    .line 1921
    .local v7, backY:I
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1922
    new-instance v31, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1923
    .local v31, hL:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1928
    .end local v6           #backX:I
    .end local v7           #backY:I
    .end local v22           #footerW:I
    .end local v30           #hB:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v31           #hL:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "useclickwindow"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v53

    const-string v54, "1"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v53

    if-eqz v53, :cond_14

    .line 1945
    :try_start_9
    new-instance v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->sWidth:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->sHeight:I

    move/from16 v54, v0

    move-object/from16 v0, v26

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1946
    .local v26, full:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1947
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1948
    .local v27, fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1957
    .end local v26           #full:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v27           #fullParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    :goto_7
    :try_start_a
    const-string v53, "LBAdController"

    new-instance v54, Ljava/lang/StringBuilder;

    const-string v55, "pE = "

    invoke-direct/range {v54 .. v55}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v55, v0

    const-string v56, "pollenable"

    invoke-virtual/range {v55 .. v56}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pI = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pC = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pM = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollMax:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pMl = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollManual:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const/16 v32, 0x0

    .line 1959
    .local v32, iP:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v53, v0

    const-string v54, "pollenable"

    invoke-virtual/range {v53 .. v54}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 1960
    .local v36, pE:I
    const/16 v53, 0x1

    move/from16 v0, v36

    move/from16 v1, v53

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    move/from16 v53, v0

    if-nez v53, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v53, v0

    if-lez v53, :cond_19

    .line 1962
    const/16 v32, 0x1

    .line 1973
    :cond_15
    :goto_8
    if-eqz v32, :cond_1b

    .line 1975
    const-string v53, "LBAdController"

    const-string v54, "Polling to be initialized in linkClicked"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 1977
    new-instance v53, Lcom/pad/android/iappad/AdController$OfferPolling;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$OfferPolling;-><init>(Lcom/pad/android/iappad/AdController;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    .line 1978
    new-instance v53, Landroid/os/Handler;

    invoke-direct/range {v53 .. v53}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    .line 1981
    :try_start_b
    const-string v53, "LBAdController"

    new-instance v54, Ljava/lang/StringBuilder;

    const-string v55, "Polling initialized every "

    invoke-direct/range {v54 .. v55}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v55, v0

    const-string v56, "pollinterval"

    invoke-virtual/range {v55 .. v56}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "s"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v55, v0

    const-string v56, "pollinterval"

    invoke-virtual/range {v55 .. v56}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v55

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v55, v0

    invoke-virtual/range {v53 .. v56}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    .line 1999
    .end local v5           #bB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #btny:I
    .end local v9           #clk:Ljava/lang/String;
    .end local v12           #clr:Ljava/lang/String;
    .end local v15           #fB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #fClk:Ljava/lang/String;
    .end local v17           #fClr:Ljava/lang/String;
    .end local v18           #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19           #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20           #fTitlex:I
    .end local v21           #fTitley:I
    .end local v23           #footerheight:I
    .end local v24           #footerx:I
    .end local v25           #footery:I
    .end local v28           #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v32           #iP:Z
    .end local v33           #nB:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v34           #navBtnFont:F
    .end local v35           #navBtnHeight:I
    .end local v36           #pE:I
    .end local v37           #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v38           #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v39           #titleBtnFont:F
    .end local v40           #titleBtnHeight:I
    .end local v41           #titlex:I
    .end local v42           #titley:I
    .end local v43           #toolbarheight:I
    .end local v44           #toolbarwidth:I
    .end local v45           #toolbarx:I
    .end local v46           #toolbary:I
    .end local v47           #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v48           #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v49           #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v50           #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v51           #windowx:I
    .end local v52           #windowy:I
    :cond_16
    :goto_9
    return-void

    .line 1662
    :catch_0
    move-exception v13

    .line 1664
    .local v13, e:Ljava/lang/Exception;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 1680
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v53

    goto/16 :goto_1

    .line 1764
    .restart local v9       #clk:Ljava/lang/String;
    .restart local v12       #clr:Ljava/lang/String;
    .restart local v16       #fClk:Ljava/lang/String;
    .restart local v17       #fClr:Ljava/lang/String;
    .restart local v18       #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19       #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v20       #fTitlex:I
    .restart local v23       #footerheight:I
    .restart local v24       #footerx:I
    .restart local v25       #footery:I
    .restart local v29       #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v37       #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v38       #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v41       #titlex:I
    .restart local v42       #titley:I
    .restart local v43       #toolbarheight:I
    .restart local v44       #toolbarwidth:I
    .restart local v45       #toolbarx:I
    .restart local v46       #toolbary:I
    .restart local v47       #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v48       #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v49       #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v50       #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v51       #windowx:I
    .restart local v52       #windowy:I
    :cond_17
    add-int/lit8 v20, v20, 0x14

    goto/16 :goto_4

    .line 1861
    .restart local v5       #bB:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8       #btny:I
    .restart local v15       #fB:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v21       #fTitley:I
    .restart local v28       #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v33       #nB:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v34       #navBtnFont:F
    .restart local v35       #navBtnHeight:I
    .restart local v39       #titleBtnFont:F
    .restart local v40       #titleBtnHeight:I
    :cond_18
    :try_start_d
    const-string v53, "LBAdController"

    const-string v54, "Going to add webview click window"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v54, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_5

    .line 1993
    .end local v5           #bB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #btny:I
    .end local v9           #clk:Ljava/lang/String;
    .end local v12           #clr:Ljava/lang/String;
    .end local v15           #fB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #fClk:Ljava/lang/String;
    .end local v17           #fClr:Ljava/lang/String;
    .end local v18           #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19           #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20           #fTitlex:I
    .end local v21           #fTitley:I
    .end local v23           #footerheight:I
    .end local v24           #footerx:I
    .end local v25           #footery:I
    .end local v28           #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v33           #nB:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v34           #navBtnFont:F
    .end local v35           #navBtnHeight:I
    .end local v37           #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v38           #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v39           #titleBtnFont:F
    .end local v40           #titleBtnHeight:I
    .end local v41           #titlex:I
    .end local v42           #titley:I
    .end local v43           #toolbarheight:I
    .end local v44           #toolbarwidth:I
    .end local v45           #toolbarx:I
    .end local v46           #toolbary:I
    .end local v47           #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v48           #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v49           #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v50           #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v51           #windowx:I
    .end local v52           #windowy:I
    :catch_2
    move-exception v14

    .line 1994
    .local v14, ex:Lorg/json/JSONException;
    const-string v53, "LBAdController"

    move-object/from16 v0, v53

    invoke-static {v0, v14}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1995
    const-string v53, "LBAdController"

    new-instance v54, Ljava/lang/StringBuilder;

    const-string v55, "JSON Exception - "

    invoke-direct/range {v54 .. v55}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1878
    .end local v14           #ex:Lorg/json/JSONException;
    .restart local v5       #bB:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8       #btny:I
    .restart local v9       #clk:Ljava/lang/String;
    .restart local v12       #clr:Ljava/lang/String;
    .restart local v15       #fB:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16       #fClk:Ljava/lang/String;
    .restart local v17       #fClr:Ljava/lang/String;
    .restart local v18       #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19       #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v20       #fTitlex:I
    .restart local v21       #fTitley:I
    .restart local v23       #footerheight:I
    .restart local v24       #footerx:I
    .restart local v25       #footery:I
    .restart local v28       #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v29       #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v33       #nB:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v34       #navBtnFont:F
    .restart local v35       #navBtnHeight:I
    .restart local v37       #tL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v38       #tM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v39       #titleBtnFont:F
    .restart local v40       #titleBtnHeight:I
    .restart local v41       #titlex:I
    .restart local v42       #titley:I
    .restart local v43       #toolbarheight:I
    .restart local v44       #toolbarwidth:I
    .restart local v45       #toolbarx:I
    .restart local v46       #toolbary:I
    .restart local v47       #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v48       #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v49       #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v50       #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v51       #windowx:I
    .restart local v52       #windowy:I
    :catch_3
    move-exception v13

    .line 1880
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_e
    const-string v53, "LBAdController"

    const-string v54, "error when onAdClicked triggered"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v53, "LBAdController"

    move-object/from16 v0, v53

    invoke-static {v0, v13}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 1950
    .end local v13           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v13

    .line 1952
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v53, "LBAdController"

    new-instance v54, Ljava/lang/StringBuilder;

    const-string v55, "Error adding click window layout - "

    invoke-direct/range {v54 .. v55}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1964
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v32       #iP:Z
    .restart local v36       #pE:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollMax:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-gt v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollManual:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_1a

    .line 1966
    const/16 v32, 0x1

    goto/16 :goto_8

    .line 1968
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollMax:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollCount:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pad/android/iappad/AdController;->pollManual:I

    move/from16 v54, v0

    move/from16 v0, v53

    move/from16 v1, v54

    if-lt v0, v1, :cond_15

    .line 1970
    const/16 v32, 0x0

    goto/16 :goto_8

    .line 1988
    :cond_1b
    const-string v53, "LBAdController"

    const-string v54, "Manual Polling in linkClicked"

    invoke-static/range {v53 .. v54}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 1990
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->showManualPoll()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_9

    .line 1984
    :catch_5
    move-exception v53

    goto/16 :goto_9

    .line 1712
    .end local v5           #bB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #btny:I
    .end local v9           #clk:Ljava/lang/String;
    .end local v15           #fB:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #fClk:Ljava/lang/String;
    .end local v17           #fClr:Ljava/lang/String;
    .end local v18           #fL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19           #fM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20           #fTitlex:I
    .end local v21           #fTitley:I
    .end local v23           #footerheight:I
    .end local v24           #footerx:I
    .end local v25           #footery:I
    .end local v28           #fvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #fvp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v32           #iP:Z
    .end local v33           #nB:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v34           #navBtnFont:F
    .end local v35           #navBtnHeight:I
    .end local v36           #pE:I
    .end local v39           #titleBtnFont:F
    .end local v40           #titleBtnHeight:I
    .end local v41           #titlex:I
    .end local v42           #titley:I
    .end local v47           #tvl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v48           #tvp:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_6
    move-exception v53

    goto/16 :goto_3

    .line 1699
    .end local v12           #clr:Ljava/lang/String;
    :catch_7
    move-exception v53

    goto/16 :goto_2
.end method

.method private playAudioAd()V
    .locals 11

    .prologue
    .line 1011
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 1013
    const-string v5, "LBAdController"

    const-string v6, "Results are null - no audio will be played"

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    if-nez v5, :cond_0

    .line 1021
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 1025
    :try_start_0
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v6, "audioads.mp3"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/pad/android/iappad/AdController;->audioAdsStream:Ljava/io/FileInputStream;

    .line 1026
    const-string v5, "LBAdController"

    const-string v6, "found audio ad"

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1035
    :goto_1
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    .line 1036
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/pad/android/iappad/AdController$5;

    invoke-direct {v6, p0}, Lcom/pad/android/iappad/AdController$5;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1054
    :try_start_1
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->audioAdsStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1055
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 1057
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iput v5, p0, Lcom/pad/android/iappad/AdController;->oldVolumeLevel:I

    .line 1060
    iget v4, p0, Lcom/pad/android/iappad/AdController;->oldVolumeLevel:I

    .line 1061
    .local v4, newVolumeLevel:I
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1064
    .local v1, max:I
    :try_start_2
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "advolumelevel"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    int-to-double v2, v5

    .line 1065
    .local v2, newLevel:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v2, v5

    if-lez v5, :cond_2

    .line 1067
    int-to-double v5, v1

    mul-double/2addr v5, v2

    double-to-int v4, v5

    .line 1078
    .end local v2           #newLevel:D
    :cond_2
    :goto_2
    if-le v4, v1, :cond_3

    .line 1080
    move v4, v1

    .line 1083
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    if-eqz v5, :cond_4

    .line 1085
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    invoke-interface {v5}, Lcom/pad/android/listener/AdAudioListener;->onAdLoaded()V

    .line 1088
    :cond_4
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1090
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 1091
    const-string v5, "LBAdController"

    const-string v6, "playing audio ad"

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-virtual {v5}, Lcom/pad/android/iappad/AdController$AdShakeListener;->enableShakeDetection()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1097
    :try_start_4
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "audioclicktrigger"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pad/android/iappad/AdController$AdShakeListener;->setShakeTime(I)V

    .line 1098
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "audioclickdetectionwindow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/pad/android/iappad/AdController$AdShakeListener;->setValidTimes(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1105
    :goto_3
    :try_start_5
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-virtual {v5}, Lcom/pad/android/iappad/AdController$AdShakeListener;->setupAudioAdHandler()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1107
    .end local v1           #max:I
    .end local v4           #newVolumeLevel:I
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LBAdController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when trying to play Audio - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v5, "LBAdController"

    invoke-static {v5, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1028
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1031
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "LBAdController"

    const-string v6, "audio ad not found in internal storage"

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v5, "LBAdController"

    invoke-static {v5, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1070
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #max:I
    .restart local v4       #newVolumeLevel:I
    :catch_2
    move-exception v0

    .line 1073
    .local v0, e:Lorg/json/JSONException;
    int-to-double v5, v4

    int-to-double v7, v4

    const-wide v9, 0x3fc999999999999aL

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v4, v5

    goto/16 :goto_2

    .line 1100
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "clicktrigger"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pad/android/iappad/AdController$AdShakeListener;->setShakeTime(I)V

    .line 1103
    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    iget-object v6, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "clickdetectionwindow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/pad/android/iappad/AdController$AdShakeListener;->setValidTimes(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 1075
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto/16 :goto_2
.end method

.method private showManualPoll()V
    .locals 19

    .prologue
    .line 2005
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfootervisible"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_1

    .line 2095
    :cond_0
    :goto_0
    return-void

    .line 2010
    :catch_0
    move-exception v14

    .line 2012
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/pad/android/iappad/AdController;->pollingInitialized:Z

    .line 2013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    if-eqz v14, :cond_2

    .line 2015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2017
    :cond_2
    new-instance v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    .line 2018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    const-string v15, "Refresh"

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2020
    const/4 v13, 0x0

    .line 2021
    .local v13, pollBtnHeight:I
    const-string v4, "#E6E6E6"

    .line 2022
    .local v4, clr:Ljava/lang/String;
    const-string v3, "#000000"

    .line 2023
    .local v3, clk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    if-eqz v14, :cond_6

    .line 2027
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfooterheight"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x5

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2028
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfootercolor"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clicktitletextcolor"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2030
    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    if-nez v4, :cond_4

    .line 2032
    :cond_3
    const-string v4, "#E6E6E6"

    .line 2034
    :cond_4
    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    if-nez v3, :cond_6

    .line 2036
    :cond_5
    const-string v3, "#000000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2042
    :cond_6
    :goto_1
    div-int/lit8 v14, v13, 0x2

    int-to-float v12, v14

    .line 2043
    .local v12, pollBtnFont:F
    const/high16 v14, 0x4120

    cmpl-float v14, v12, v14

    if-lez v14, :cond_7

    .line 2045
    const/high16 v12, 0x4120

    .line 2048
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    new-instance v15, Lcom/pad/android/iappad/AdController$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pad/android/iappad/AdController$13;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2073
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    if-eqz v14, :cond_0

    .line 2078
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfooterx"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2079
    .local v8, footerx:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfootery"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2080
    .local v9, footery:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfooterheight"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2081
    .local v7, footerheight:I
    new-instance v10, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v14, 0x37

    invoke-direct {v10, v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2082
    .local v10, hB:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v15, "clickfooterwidth"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2083
    .local v6, footerW:I
    add-int v14, v6, v8

    add-int/lit8 v1, v14, -0x78

    .line 2084
    .local v1, backX:I
    sub-int v14, v7, v13

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    add-int/lit8 v2, v14, 0x2

    .line 2085
    .local v2, backY:I
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v1, v2, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2086
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2087
    .local v11, hL:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/iappad/AdController;->pollBtn:Landroid/widget/Button;

    invoke-virtual {v14, v15, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2089
    .end local v1           #backX:I
    .end local v2           #backY:I
    .end local v6           #footerW:I
    .end local v7           #footerheight:I
    .end local v8           #footerx:I
    .end local v9           #footery:I
    .end local v10           #hB:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #hL:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v5

    .line 2091
    .local v5, e:Ljava/lang/Exception;
    const-string v14, "LBAdController"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error (add Manual Poll btn before click): "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const-string v14, "LBAdController"

    invoke-static {v14, v5}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2039
    .end local v5           #e:Ljava/lang/Exception;
    .end local v12           #pollBtnFont:F
    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method


# virtual methods
.method public adShowStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    .line 456
    .local v1, toUse:Landroid/content/Context;
    :goto_0
    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SD_ADSTATUS_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 455
    .end local v0           #pref:Landroid/content/SharedPreferences;
    .end local v1           #toUse:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public audioAdRetrieved(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->playAudioAd()V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdAudioListener;->onAdFailed()V

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    goto :goto_0
.end method

.method public checkForAudioAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "adaudiourl"
    .parameter "adurl"

    .prologue
    const v2, 0x411ce80a

    .line 2389
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2391
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "adaudiourl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "adaudiourl"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2396
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "adurl"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2400
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "adaudiourl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2402
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    if-nez v0, :cond_1

    .line 2404
    new-instance v0, Lcom/pad/android/iappad/AdController$AdShakeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    .line 2408
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    .line 2409
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2410
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/AdController;->mForce:F

    .line 2411
    iput v2, p0, Lcom/pad/android/iappad/AdController;->mForceCurrent:F

    .line 2412
    iput v2, p0, Lcom/pad/android/iappad/AdController;->mForceLast:F

    .line 2414
    :cond_2
    invoke-virtual {p0}, Lcom/pad/android/iappad/AdController;->retrieveAudioAd()V

    .line 2421
    :cond_3
    :goto_1
    return-void

    .line 2419
    :cond_4
    const-string v0, "LBAdController"

    const-string v1, "No audio component"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2397
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroyAd()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "LBAdController"

    const-string v1, "destroyAd called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 368
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->destroyAudioShakeAd()V

    .line 369
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->closeUnlocker()V

    .line 370
    return-void
.end method

.method public getAdDestroyed()Z
    .locals 1

    .prologue
    .line 2353
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    return v0
.end method

.method public getAdLoaded()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    return v0
.end method

.method public getLoadInBackground()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    return v0
.end method

.method public getOnAdLoaded()Z
    .locals 1

    .prologue
    .line 2358
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    return v0
.end method

.method public hideAd()V
    .locals 0

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/pad/android/iappad/AdController;->pauseAd()V

    .line 442
    return-void
.end method

.method public initialized()V
    .locals 23

    .prologue
    .line 609
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->initialized:Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 614
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "show"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 619
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/pad/android/listener/AdListener;->onAdFailed()V

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 624
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/pad/android/listener/AdAudioListener;->onAdFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v19

    .line 632
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 635
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 636
    .local v6, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 638
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 639
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    .line 640
    .local v18, win:Landroid/view/Window;
    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 641
    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 642
    .local v15, statusBarHeight:I
    const v19, 0x1020002

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    .line 643
    .local v5, contentViewTop:I
    if-le v5, v15, :cond_6

    sub-int v17, v5, v15

    .line 645
    .local v17, titleBarHeight:I
    :goto_1
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->sWidth:I

    .line 646
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    sub-int v19, v19, v15

    sub-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->sHeight:I

    .line 652
    .end local v5           #contentViewTop:I
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #statusBarHeight:I
    .end local v17           #titleBarHeight:I
    .end local v18           #win:Landroid/view/Window;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "pollmaxcount"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->pollMax:I

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "pollmanualafter"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 654
    .local v11, pMA:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "pollinterval"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 655
    .local v12, pollInterval:I
    if-lez v12, :cond_7

    .line 657
    mul-int/lit8 v19, v11, 0x3c

    div-int v19, v19, v12

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->pollManual:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 672
    .end local v11           #pMA:I
    .end local v12           #pollInterval:I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "usenative"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 674
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->nativeOpen:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 680
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const-string v20, "Preference"

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 681
    .local v13, pref:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 684
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "SD_"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "displayinterval"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 700
    :goto_4
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "invalidateoptin"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 706
    const-string v10, "0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 709
    .local v10, invalidate:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "invalidateoptin"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v10

    .line 711
    :goto_5
    :try_start_6
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 713
    const-string v19, "SD_APP_OPTIN_SHOWN"

    const-string v20, "invalid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 719
    .end local v10           #invalidate:Ljava/lang/String;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->retrieveAudioAd()V

    goto/16 :goto_0

    .line 643
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #pref:Landroid/content/SharedPreferences;
    .restart local v5       #contentViewTop:I
    .restart local v6       #dm:Landroid/util/DisplayMetrics;
    .restart local v14       #rect:Landroid/graphics/Rect;
    .restart local v15       #statusBarHeight:I
    .restart local v18       #win:Landroid/view/Window;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 661
    .end local v5           #contentViewTop:I
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #statusBarHeight:I
    .end local v18           #win:Landroid/view/Window;
    .restart local v11       #pMA:I
    .restart local v12       #pollInterval:I
    :cond_7
    const/16 v19, 0xa

    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->pollManual:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 664
    .end local v11           #pMA:I
    .end local v12           #pollInterval:I
    :catch_1
    move-exception v7

    .line 666
    .local v7, e:Ljava/lang/Exception;
    const/16 v19, 0x1f4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->pollMax:I

    .line 667
    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pad/android/iappad/AdController;->pollManual:I

    goto/16 :goto_2

    .line 687
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v13       #pref:Landroid/content/SharedPreferences;
    :catch_2
    move-exception v7

    .line 689
    .restart local v7       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->adDisplayInterval:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->adDisplayInterval:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 691
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "SD_"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->adDisplayInterval:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 696
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "SD_"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 728
    .end local v7           #e:Ljava/lang/Exception;
    :cond_9
    new-instance v19, Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController;->nativeOpen:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pad/android/iappad/AdWebView;-><init>(Landroid/app/Activity;Lcom/pad/android/iappad/AdController;ZLcom/pad/android/listener/AdListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/pad/android/iappad/AdWebView;->setResults(Lorg/json/JSONObject;)V

    .line 731
    new-instance v19, Lcom/pad/android/richmedia/view/AdView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/pad/android/richmedia/view/AdView;-><init>(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    .line 737
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "pollresult"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/pad/android/listener/AdListener;->onAdAlreadyCompleted()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 773
    :catch_3
    move-exception v7

    .line 776
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->displayAd()V

    goto/16 :goto_0

    .line 745
    .end local v7           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "pollresult"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v19

    if-nez v19, :cond_1

    .line 749
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "timeopen"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    if-lez v19, :cond_b

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "timeopen"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    .line 752
    .local v16, time:I
    const-string v19, "LBAdController"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Tease Time used - ad will load after "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 754
    .local v9, handl:Landroid/os/Handler;
    new-instance v19, Lcom/pad/android/iappad/AdController$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pad/android/iappad/AdController$2;-><init>(Lcom/pad/android/iappad/AdController;)V

    .line 758
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 754
    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 766
    .end local v9           #handl:Landroid/os/Handler;
    .end local v16           #time:I
    :catch_4
    move-exception v7

    .line 769
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->displayAd()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 763
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/iappad/AdController;->displayAd()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    .line 783
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #pref:Landroid/content/SharedPreferences;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 785
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/pad/android/listener/AdListener;->onAdFailed()V

    .line 788
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 790
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/pad/android/listener/AdAudioListener;->onAdFailed()V

    goto/16 :goto_0

    .line 717
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v13       #pref:Landroid/content/SharedPreferences;
    :catch_5
    move-exception v19

    goto/16 :goto_6

    .line 710
    .restart local v10       #invalidate:Ljava/lang/String;
    :catch_6
    move-exception v19

    goto/16 :goto_5

    .line 677
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #invalidate:Ljava/lang/String;
    .end local v13           #pref:Landroid/content/SharedPreferences;
    :catch_7
    move-exception v19

    goto/16 :goto_3
.end method

.method public loadAd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 870
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v5, "Preference"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 871
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v4, "SD_APP_OPTIN_SHOWN"

    const-string v5, "notset"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, optinShowed:Ljava/lang/String;
    const-string v4, "SD_APP_OPTIN"

    const-string v5, "notset"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, optin:Ljava/lang/String;
    const-string v4, "notset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 878
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "SD_APP_OPTIN_SHOWN"

    const-string v5, "invalid"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 879
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v4, "LBAdController"

    const-string v5, "loadAd called"

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iput-boolean v7, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    .line 884
    iget-boolean v4, p0, Lcom/pad/android/iappad/AdController;->initialized:Z

    if-nez v4, :cond_3

    .line 886
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pad/android/iappad/AdController;->loadAd:Z

    .line 887
    iput-boolean v7, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 888
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->initialize()V

    .line 894
    :goto_0
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    if-lez v4, :cond_2

    .line 896
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 898
    new-instance v4, Lcom/pad/android/iappad/AdController$3;

    invoke-direct {v4, p0}, Lcom/pad/android/iappad/AdController$3;-><init>(Lcom/pad/android/iappad/AdController;)V

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    .line 918
    :cond_1
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    if-nez v4, :cond_2

    .line 921
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    .line 922
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    iget v6, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    :cond_2
    return-void

    .line 892
    :cond_3
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->displayAd()V

    goto :goto_0
.end method

.method public loadAudioAd()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x411ce80a

    .line 936
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v5, "Preference"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 942
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v4, "SD_APP_OPTIN_SHOWN"

    const-string v5, "notset"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, optinShowed:Ljava/lang/String;
    const-string v4, "SD_APP_OPTIN"

    const-string v5, "notset"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, optin:Ljava/lang/String;
    const-string v4, "notset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 949
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "SD_APP_OPTIN_SHOWN"

    const-string v5, "invalid"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 950
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 953
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v4, "LBAdController"

    const-string v5, "loadAudioAd called"

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-boolean v4, p0, Lcom/pad/android/iappad/AdController;->initialized:Z

    if-nez v4, :cond_5

    .line 956
    iput-boolean v8, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z

    .line 958
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v4, :cond_3

    .line 960
    new-instance v4, Lcom/pad/android/iappad/AdController$AdShakeListener;

    invoke-direct {v4, p0, v8}, Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->mSensorEventListener:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 962
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;

    .line 963
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 964
    const/4 v4, 0x0

    iput v4, p0, Lcom/pad/android/iappad/AdController;->mForce:F

    .line 965
    iput v7, p0, Lcom/pad/android/iappad/AdController;->mForceCurrent:F

    .line 966
    iput v7, p0, Lcom/pad/android/iappad/AdController;->mForceLast:F

    .line 969
    :cond_3
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->initialize()V

    .line 975
    :goto_1
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    if-lez v4, :cond_0

    .line 977
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    if-nez v4, :cond_4

    .line 979
    new-instance v4, Lcom/pad/android/iappad/AdController$4;

    invoke-direct {v4, p0}, Lcom/pad/android/iappad/AdController$4;-><init>(Lcom/pad/android/iappad/AdController;)V

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    .line 999
    :cond_4
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 1002
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    .line 1003
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;

    iget v6, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 973
    :cond_5
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->playAudioAd()V

    goto :goto_1
.end method

.method public loadOptin(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    .locals 6
    .parameter "act"
    .parameter "section"
    .parameter "oListener"

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 464
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 466
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v3, 0x0

    const-string v5, "1"

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;Ljava/lang/String;)V

    .line 467
    .local v0, optin:Lcom/pad/android/util/AdOptinRequest;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    .end local v0           #optin:Lcom/pad/android/util/AdOptinRequest;
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v1, "com.pad.android.iappad.AdController"

    const-string v2, "Activity required for loadOptin - incorrect value passed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadStartAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "notificationid"
    .parameter "iconid"

    .prologue
    .line 480
    const-string v0, "com.pad.android.xappad.AdController"

    .line 483
    .local v0, classReq:Ljava/lang/String;
    :try_start_0
    const-string v4, "com.pad.android.xappad.AdController"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    move-object v3, p1

    .line 492
    .local v3, notifId:Ljava/lang/String;
    move-object v2, p2

    .line 495
    .local v2, iId:Ljava/lang/String;
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    new-instance v6, Lcom/pad/android/iappad/AdController$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/pad/android/iappad/AdController$1;-><init>(Lcom/pad/android/iappad/AdController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/pad/android/iappad/AdController;->loadOptin(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V

    .line 543
    .end local v2           #iId:Ljava/lang/String;
    .end local v3           #notifId:Ljava/lang/String;
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "com.pad.android.iappad.AdController"

    const-string v5, "StartAds cannot be started. Packages not imported correctly!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->linkClicked:Z

    if-eqz v0, :cond_0

    .line 2341
    invoke-virtual {p0}, Lcom/pad/android/iappad/AdController;->loadAd()V

    .line 2342
    const/4 v0, 0x1

    .line 2344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLinkClicked()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController;->linkClicked()V

    .line 569
    return-void
.end method

.method public pauseAd()V
    .locals 5

    .prologue
    .line 399
    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    .line 400
    .local v2, toUse:Landroid/content/Context;
    :goto_0
    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 401
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ADSTATUS_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hidden"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void

    .line 399
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    .end local v2           #toUse:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public resumeAd()V
    .locals 7

    .prologue
    .line 415
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    .line 416
    .local v3, toUse:Landroid/content/Context;
    :goto_0
    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 417
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SD_ADSTATUS_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v4, :cond_0

    .line 425
    :try_start_0
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v4}, Lcom/pad/android/listener/AdListener;->onAdResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_0
    :goto_1
    return-void

    .line 415
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v3           #toUse:Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->context:Landroid/content/Context;

    goto :goto_0

    .line 427
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    .restart local v3       #toUse:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LBAdController"

    invoke-static {v4, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 430
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while triggering onAdResumed - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public retrieveAudioAd()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1148
    :try_start_0
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v5, "show"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1150
    const/4 v1, 0x1

    .line 1151
    .local v1, makeReq:Z
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    if-eqz v4, :cond_0

    .line 1153
    iget-object v4, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    invoke-virtual {v4}, Lcom/pad/android/iappad/AdAudioTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 1155
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1157
    new-instance v2, Lcom/pad/android/iappad/AdAudioTask;

    iget-object v3, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/pad/android/iappad/AdAudioTask;-><init>(Lcom/pad/android/iappad/AdController;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    .line 1158
    iget-object v2, p0, Lcom/pad/android/iappad/AdController;->task:Lcom/pad/android/iappad/AdAudioTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "adaudiourl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/pad/android/iappad/AdAudioTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1171
    .end local v1           #makeReq:Z
    :cond_1
    :goto_1
    return-void

    .restart local v1       #makeReq:Z
    :cond_2
    move v1, v3

    .line 1153
    goto :goto_0

    .line 1163
    .end local v1           #makeReq:Z
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController;->isAudioAd:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1166
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONException - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAdDestroyed(Z)V
    .locals 0
    .parameter "aD"

    .prologue
    .line 2349
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    .line 2350
    return-void
.end method

.method public setAdLoaded(Z)V
    .locals 0
    .parameter "aL"

    .prologue
    .line 2384
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z

    .line 2385
    return-void
.end method

.method public setAdditionalDockingMargin(I)V
    .locals 3
    .parameter "newOffset"

    .prologue
    .line 305
    iput p1, p0, Lcom/pad/android/iappad/AdController;->additionalDockingMargin:I

    .line 306
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAdditionalDockingMargin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public setAsynchTask(Z)V
    .locals 0
    .parameter "asynch"

    .prologue
    .line 320
    return-void
.end method

.method public setCompleted(Z)V
    .locals 0
    .parameter "c"

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->completed:Z

    .line 579
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    const/16 v3, 0x190

    .line 379
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, newContent:Ljava/lang/String;
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v0}, Lcom/pad/android/richmedia/view/AdView;->loadHTMLWrap(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .end local v0           #newContent:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setHTMLAds(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->isRichMedia:Z

    .line 375
    return-void
.end method

.method public setHomeLoaded(Z)V
    .locals 0
    .parameter "hL"

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->homeLoaded:Z

    .line 564
    return-void
.end method

.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter "ly"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;

    .line 294
    return-void
.end method

.method public setLoadInBackground(Z)V
    .locals 0
    .parameter "back"

    .prologue
    .line 1191
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    .line 1192
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "l"

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->loading:Z

    .line 574
    return-void
.end method

.method public setOnAdLoaded(Z)V
    .locals 2
    .parameter "sOA"

    .prologue
    .line 2362
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->onAdLoaded:Z

    .line 2364
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->backgroundLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController;->adDestroyed:Z

    if-nez v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/iappad/AdController$15;

    invoke-direct {v1, p0}, Lcom/pad/android/iappad/AdController$15;-><init>(Lcom/pad/android/iappad/AdController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2376
    :cond_0
    return-void
.end method

.method public setOnProgressInterval(I)V
    .locals 0
    .parameter "pI"

    .prologue
    .line 355
    iput p1, p0, Lcom/pad/android/iappad/AdController;->progressInterval:I

    .line 356
    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 603
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;

    .line 605
    :cond_0
    return-void
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0
    .parameter "sbid"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->subid:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, tks:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/pad/android/iappad/AdController;->tokens:Ljava/util/List;

    .line 344
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 3
    .parameter "uL"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController;->useLocation:Z

    .line 281
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUseLocation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public showAd()V
    .locals 0

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/pad/android/iappad/AdController;->resumeAd()V

    .line 451
    return-void
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 2789
    return-void
.end method

.method public triggerAdCompleted()V
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, "onAdCompleted triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "error when onAdCompleted triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public triggerAdFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 798
    const-string v1, "LBAdController"

    const-string v2, "No Internet connection detected. No Ads loaded"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v1, :cond_0

    .line 804
    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, "onAdFailed triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdFailed()V

    .line 806
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController;->adLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;

    invoke-interface {v1}, Lcom/pad/android/listener/AdAudioListener;->onAdFailed()V

    .line 817
    iput-boolean v3, p0, Lcom/pad/android/iappad/AdController;->audioAdLoaded:Z

    .line 819
    :cond_1
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "Error while calling onAdFailed"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
