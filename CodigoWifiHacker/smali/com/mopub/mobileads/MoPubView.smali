.class public Lcom/mopub/mobileads/MoPubView;
.super Landroid/widget/FrameLayout;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubView$LocationAwareness;,
        Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;,
        Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;,
        Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;,
        Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;,
        Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;,
        Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;
    }
.end annotation


# static fields
.field public static final AD_HANDLER:Ljava/lang/String; = "/m/ad"

.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field public static final HOST:Ljava/lang/String; = "ads.mopub.com"


# instance fields
.field protected mAdView:Lcom/mopub/mobileads/AdView;

.field protected mAdapter:Lcom/mopub/mobileads/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsInForeground:Z

.field private mLocationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

.field private mLocationPrecision:I

.field private mOnAdClickedListener:Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;

.field private mOnAdClosedListener:Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;

.field private mOnAdFailedListener:Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;

.field private mOnAdLoadedListener:Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;

.field private mOnAdPresentedOverlayListener:Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;

.field private mOnAdWillLoadListener:Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;

.field private mPreviousAutorefreshSetting:Z

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-boolean v1, p0, Lcom/mopub/mobileads/MoPubView;->mPreviousAutorefreshSetting:Z

    .line 110
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubView;->mIsInForeground:Z

    .line 112
    sget-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mLocationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    .line 113
    const/4 v0, 0x6

    iput v0, p0, Lcom/mopub/mobileads/MoPubView;->mLocationPrecision:I

    .line 115
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubView;->setVerticalScrollBarEnabled(Z)V

    .line 123
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    const-string v0, "MoPub"

    const-string v1, "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 111
    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubView;->initVersionDependentAdView(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->registerScreenStateBroadcastReceiver()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubView;->mIsInForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubView;->mPreviousAutorefreshSetting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/MoPubView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubView;->mPreviousAutorefreshSetting:Z

    return p1
.end method

.method private initVersionDependentAdView(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    new-instance v6, Ljava/lang/Integer;

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 136
    .local v5, sdkVersion:I
    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    .line 137
    new-instance v6, Lcom/mopub/mobileads/AdView;

    invoke-direct {v6, p1, p0}, Lcom/mopub/mobileads/AdView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V

    iput-object v6, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    .line 142
    .local v0, HTML5AdViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "com.mopub.mobileads.HTML5AdView"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    new-array v4, v10, [Ljava/lang/Class;

    .line 149
    .local v4, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v8

    .line 150
    const-class v6, Lcom/mopub/mobileads/MoPubView;

    aput-object v6, v4, v9

    .line 152
    new-array v1, v10, [Ljava/lang/Object;

    .line 153
    .local v1, args:[Ljava/lang/Object;
    aput-object p1, v1, v8

    .line 154
    aput-object p0, v1, v9

    .line 157
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 158
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/AdView;

    iput-object v6, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    .line 173
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    iget-object v6, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-nez v6, :cond_0

    new-instance v6, Lcom/mopub/mobileads/AdView;

    invoke-direct {v6, p1, p0}, Lcom/mopub/mobileads/AdView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V

    iput-object v6, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    goto :goto_0

    .line 143
    .end local v1           #args:[Ljava/lang/Object;
    .end local v4           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/lang/ClassNotFoundException;
    new-instance v6, Lcom/mopub/mobileads/AdView;

    invoke-direct {v6, p1, p0}, Lcom/mopub/mobileads/AdView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V

    iput-object v6, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    goto :goto_0

    .line 159
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #args:[Ljava/lang/Object;
    .restart local v4       #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 160
    .local v3, e:Ljava/lang/SecurityException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 162
    .local v3, e:Ljava/lang/NoSuchMethodException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 164
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 166
    .local v3, e:Ljava/lang/InstantiationException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v3

    .line 168
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v3

    .line 170
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "MoPub"

    const-string v7, "Could not load HTML5AdView."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubView$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubView$1;-><init>(Lcom/mopub/mobileads/MoPubView;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, IllegalArgumentException:Ljava/lang/Exception;
    const-string v1, "MoPub"

    const-string v2, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected adAppeared()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->adAppeared()V

    .line 330
    :cond_0
    return-void
.end method

.method protected adClicked()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClickedListener:Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClickedListener:Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;->OnAdClicked(Lcom/mopub/mobileads/MoPubView;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected adClosed()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClosedListener:Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClosedListener:Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;->OnAdClosed(Lcom/mopub/mobileads/MoPubView;)V

    .line 317
    :cond_0
    return-void
.end method

.method protected adFailed()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdFailedListener:Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdFailedListener:Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;->OnAdFailed(Lcom/mopub/mobileads/MoPubView;)V

    .line 307
    :cond_0
    return-void
.end method

.method protected adLoaded()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "MoPub"

    const-string v1, "adLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;->OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V

    .line 303
    :cond_0
    return-void
.end method

.method protected adPresentedOverlay()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;->OnAdPresentedOverlay(Lcom/mopub/mobileads/MoPubView;)V

    .line 313
    :cond_0
    return-void
.end method

.method protected adWillLoad(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 296
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adWillLoad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;->OnAdWillLoad(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->customEventActionWillBegin()V

    .line 342
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->customEventDidFailToLoadAd()V

    .line 338
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->customEventDidLoadAd()V

    .line 334
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->unregisterScreenStateBroadcastReceiver()V

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->cleanup()V

    .line 231
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 236
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    .line 238
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getAdHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getAdWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getAutorefreshEnabled()Z

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 441
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Can\'t get autorefresh status for destroyed MoPubView. Returning false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationAwareness()Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mLocationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/mopub/mobileads/MoPubView;->mLocationPrecision:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->loadAd()V

    .line 220
    :cond_0
    return-void
.end method

.method protected loadFailUrl()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    .line 242
    :cond_0
    return-void
.end method

.method protected loadHtmlString(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->loadResponseString(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 247
    :cond_0
    const-string v2, "X-Adtype"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, type:Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/mobileads/BaseAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/mopub/mobileads/BaseAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    .line 250
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    if-eqz v2, :cond_1

    .line 251
    const-string v2, "MoPub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading native adapter for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v2, "X-Nativeparams"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, jsonParams:Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    invoke-virtual {v2, p0, v0}, Lcom/mopub/mobileads/BaseAdapter;->init(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdapter:Lcom/mopub/mobileads/BaseAdapter;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseAdapter;->loadAd()V

    .line 259
    .end local v0           #jsonParams:Ljava/lang/String;
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v2, "MoPub"

    const-string v3, "Couldn\'t load native adapter. Trying next ad..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto :goto_0
.end method

.method protected nativeAdLoaded()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->adLoaded()V

    .line 326
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    if-nez p1, :cond_1

    .line 284
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Unit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") going visible: enabling refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-boolean v4, p0, Lcom/mopub/mobileads/MoPubView;->mIsInForeground:Z

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Unit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") going invisible: disabling refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-boolean v3, p0, Lcom/mopub/mobileads/MoPubView;->mIsInForeground:Z

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->registerClick()V

    .line 266
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->adClicked()V

    .line 268
    :cond_0
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setAdContentView(Landroid/view/View;)V

    .line 449
    :cond_0
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .parameter "adUnitId"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setAutorefreshEnabled(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setClickthroughUrl(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setKeywords(Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setLocation(Landroid/location/Location;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setLocationAwareness(Lcom/mopub/mobileads/MoPubView$LocationAwareness;)V
    .locals 0
    .parameter "awareness"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mLocationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    .line 420
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 0
    .parameter "precision"

    .prologue
    .line 427
    if-ltz p1, :cond_0

    .end local p1
    :goto_0
    iput p1, p0, Lcom/mopub/mobileads/MoPubView;->mLocationPrecision:I

    .line 428
    return-void

    .line 427
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setOnAdClickedListener(Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClickedListener:Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;

    .line 416
    return-void
.end method

.method public setOnAdClosedListener(Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdClosedListener:Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;

    .line 412
    return-void
.end method

.method public setOnAdFailedListener(Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdFailedListener:Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;

    .line 404
    return-void
.end method

.method public setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdLoadedListener:Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;

    .line 400
    return-void
.end method

.method public setOnAdPresentedOverlayListener(Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdPresentedOverlayListener:Lcom/mopub/mobileads/MoPubView$OnAdPresentedOverlayListener;

    .line 408
    return-void
.end method

.method public setOnAdWillLoadListener(Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mOnAdWillLoadListener:Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;

    .line 396
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdView;->setTimeout(I)V

    .line 368
    :cond_0
    return-void
.end method

.method protected trackNativeImpression()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "MoPub"

    const-string v1, "Tracking impression for native adapter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->trackImpression()V

    .line 277
    :cond_0
    return-void
.end method
