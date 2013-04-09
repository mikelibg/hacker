.class Lcom/millennialmedia/android/MMAdViewController$1;
.super Ljava/lang/Thread;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;

.field final synthetic val$fetch:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMAdViewController$1;->val$fetch:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/android/MMAdView;

    .line 504
    .local v6, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v6, :cond_0

    .line 506
    const-string v35, "MillennialMediaSDK"

    const-string v36, "The reference to the ad view was broken."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 734
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    .line 515
    const-string v35, "MillennialMediaSDK"

    const-string v36, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 524
    const/4 v3, 0x0

    .local v3, adTypeString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 531
    .local v4, adUrl:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->getURLMetaValues(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$300(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v26

    .line 532
    .local v26, metaValues:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewController;->getURLDeviceValues(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, deviceValues:Ljava/lang/String;
    iget-boolean v0, v6, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 535
    const-string v35, "MillennialMediaSDK"

    const-string v36, "*********** Advertising test mode is deprecated. Refer to wiki.millennialmedia.com for testing information. "

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v36, v0

    #calls: Lcom/millennialmedia/android/MMAdViewController;->getAdType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v35 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    .line 540
    .local v27, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    .line 541
    .local v29, scale:F
    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 542
    .local v16, heightPixels:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    .line 548
    .local v33, widthPixels:I
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?sdkapid="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "UTF-8"

    invoke-static/range {v36 .. v37}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .local v5, adUrlBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, auid:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 552
    const-string v35, "mmh_"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 553
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&hdid="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "UTF-8"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 558
    .local v28, mmdid:Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 559
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&mmdid="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/MMAdViewController;->access$500(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_a

    .line 561
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&ua="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v36, v0

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$500(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "UTF-8"

    invoke-static/range {v36 .. v37}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :goto_2
    sget-object v35, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v35, :cond_5

    .line 565
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&dm="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v36, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v37, "UTF-8"

    invoke-static/range {v36 .. v37}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_5
    sget-object v35, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v35, :cond_6

    .line 567
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&dv=Android"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v36, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v37, "UTF-8"

    invoke-static/range {v36 .. v37}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&density="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&hpx="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&wpx="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&mmisdk="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "4.5.1-12.2.2.a"

    const-string v37, "UTF-8"

    invoke-static/range {v36 .. v37}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 575
    .local v9, context:Landroid/content/Context;
    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v35

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v9, v1}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 576
    const-string v35, "&video=true"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :goto_3
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v35

    const-string v36, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v35

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    sget-object v35, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v36, "8"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v35

    const-string v36, "mounted"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 583
    :cond_7
    const-string v35, "&cachedvideo=false"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 591
    .end local v5           #adUrlBuilder:Ljava/lang/StringBuilder;
    .end local v8           #auid:Ljava/lang/String;
    .end local v9           #context:Landroid/content/Context;
    .end local v12           #deviceValues:Ljava/lang/String;
    .end local v16           #heightPixels:I
    .end local v26           #metaValues:Ljava/lang/String;
    .end local v27           #metrics:Landroid/util/DisplayMetrics;
    .end local v28           #mmdid:Ljava/lang/String;
    .end local v29           #scale:F
    .end local v33           #widthPixels:I
    :goto_5
    if-eqz v3, :cond_8

    .line 592
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    :cond_8
    const-string v35, "MillennialMediaSDK"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Calling for an advertisement: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_1
    new-instance v18, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct/range {v18 .. v18}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 598
    .local v18, httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 599
    .local v20, httpResponse:Lorg/apache/http/HttpResponse;
    if-nez v20, :cond_d

    .line 601
    const-string v35, "MillennialMediaSDK"

    const-string v36, "HTTP response is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 608
    .end local v18           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v13

    .local v13, e:Ljava/lang/Exception;
    const-string v35, "MillennialMediaSDK"

    const-string v36, "HTTP error: "

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 555
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v5       #adUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v8       #auid:Ljava/lang/String;
    .restart local v12       #deviceValues:Ljava/lang/String;
    .restart local v16       #heightPixels:I
    .restart local v26       #metaValues:Ljava/lang/String;
    .restart local v27       #metrics:Landroid/util/DisplayMetrics;
    .restart local v29       #scale:F
    .restart local v33       #widthPixels:I
    :cond_9
    :try_start_2
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "&auid="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "UTF-8"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 589
    .end local v5           #adUrlBuilder:Ljava/lang/StringBuilder;
    .end local v8           #auid:Ljava/lang/String;
    .end local v12           #deviceValues:Ljava/lang/String;
    .end local v16           #heightPixels:I
    .end local v26           #metaValues:Ljava/lang/String;
    .end local v27           #metrics:Landroid/util/DisplayMetrics;
    .end local v29           #scale:F
    .end local v33           #widthPixels:I
    :catch_1
    move-exception v35

    goto/16 :goto_5

    .line 563
    .restart local v5       #adUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v8       #auid:Ljava/lang/String;
    .restart local v12       #deviceValues:Ljava/lang/String;
    .restart local v16       #heightPixels:I
    .restart local v26       #metaValues:Ljava/lang/String;
    .restart local v27       #metrics:Landroid/util/DisplayMetrics;
    .restart local v28       #mmdid:Ljava/lang/String;
    .restart local v29       #scale:F
    .restart local v33       #widthPixels:I
    :cond_a
    const-string v35, "&ua=UNKNOWN"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 578
    .restart local v9       #context:Landroid/content/Context;
    :cond_b
    const-string v35, "&video=false"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 585
    :cond_c
    const-string v35, "&cachedvideo=true"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 607
    .end local v5           #adUrlBuilder:Ljava/lang/StringBuilder;
    .end local v8           #auid:Ljava/lang/String;
    .end local v9           #context:Landroid/content/Context;
    .end local v12           #deviceValues:Ljava/lang/String;
    .end local v16           #heightPixels:I
    .end local v26           #metaValues:Ljava/lang/String;
    .end local v27           #metrics:Landroid/util/DisplayMetrics;
    .end local v28           #mmdid:Ljava/lang/String;
    .end local v29           #scale:F
    .end local v33           #widthPixels:I
    .restart local v18       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_d
    :try_start_3
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    .line 610
    .local v17, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v17, :cond_e

    .line 612
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Null HTTP entity"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 618
    :cond_e
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    cmp-long v35, v35, v37

    if-nez v35, :cond_f

    .line 620
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Millennial ad return failed. Zero content length returned."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 628
    :cond_f
    const-string v35, "Set-Cookie"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v11

    .line 629
    .local v11, cookieHeaders:[Lorg/apache/http/Header;
    move-object v7, v11

    .local v7, arr$:[Lorg/apache/http/Header;
    array-length v0, v7

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    aget-object v10, v7, v21

    .line 632
    .local v10, cookieHeader:Lorg/apache/http/Header;
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 633
    .local v30, value:Ljava/lang/String;
    const-string v35, "MAC-ID="

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 634
    .local v22, index:I
    if-ltz v22, :cond_10

    .line 636
    const/16 v35, 0x3b

    move-object/from16 v0, v30

    move/from16 v1, v35

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 637
    .local v15, endIndex:I
    move/from16 v0, v22

    if-le v15, v0, :cond_10

    .line 638
    add-int/lit8 v35, v22, 0x7

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    sput-object v35, Lcom/millennialmedia/android/MMAdViewSDK;->macId:Ljava/lang/String;

    .line 629
    .end local v15           #endIndex:I
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 642
    .end local v10           #cookieHeader:Lorg/apache/http/Header;
    .end local v22           #index:I
    .end local v30           #value:Ljava/lang/String;
    :cond_11
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v19

    .line 643
    .local v19, httpHeader:Lorg/apache/http/Header;
    if-eqz v19, :cond_1a

    .line 645
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_19

    .line 647
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    const-string v36, "application/json"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 649
    const/16 v31, 0x0

    .line 654
    .local v31, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_4
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v24

    .line 655
    .local v24, json:Ljava/lang/String;
    new-instance v32, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 657
    .end local v31           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .local v32, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_5
    const-string v35, "MillennialMediaSDK"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Current environment: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v35

    const-string v36, "mounted"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 659
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 664
    :cond_12
    if-eqz v32, :cond_13

    invoke-virtual/range {v32 .. v32}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v35

    if-eqz v35, :cond_13

    .line 666
    const-string v35, "MillennialMediaSDK"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Cached video ad JSON received: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$fetch:Z

    move/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move/from16 v2, v36

    #calls: Lcom/millennialmedia/android/MMAdViewController;->handleCachedAdResponse(Lcom/millennialmedia/android/VideoAd;Z)V
    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->access$600(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;Z)V

    .line 733
    .end local v3           #adTypeString:Ljava/lang/String;
    .end local v4           #adUrl:Ljava/lang/String;
    .end local v7           #arr$:[Lorg/apache/http/Header;
    .end local v11           #cookieHeaders:[Lorg/apache/http/Header;
    .end local v17           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v18           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v19           #httpHeader:Lorg/apache/http/Header;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #i$:I
    .end local v24           #json:Ljava/lang/String;
    .end local v25           #len$:I
    .end local v32           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 661
    .restart local v3       #adTypeString:Ljava/lang/String;
    .restart local v4       #adUrl:Ljava/lang/String;
    .restart local v7       #arr$:[Lorg/apache/http/Header;
    .restart local v11       #cookieHeaders:[Lorg/apache/http/Header;
    .restart local v17       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v18       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v19       #httpHeader:Lorg/apache/http/Header;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #i$:I
    .restart local v25       #len$:I
    .restart local v31       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_2
    move-exception v14

    .local v14, e1:Ljava/lang/IllegalStateException;
    :goto_8
    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v35, "MillennialMediaSDK"

    const-string v36, "Millennial ad return failed. Invalid response data."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 662
    .end local v14           #e1:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v14

    .local v14, e1:Ljava/io/IOException;
    :goto_9
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    const-string v35, "MillennialMediaSDK"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Millennial ad return failed. "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 671
    .end local v14           #e1:Ljava/io/IOException;
    .end local v31           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_14
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    const-string v36, "text/html"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 674
    const-string v35, "X-MM-Video"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v34

    .line 675
    .local v34, xHeader:Lorg/apache/http/Header;
    if-eqz v34, :cond_15

    invoke-interface/range {v34 .. v34}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    const-string v36, "true"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 677
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 678
    .restart local v9       #context:Landroid/content/Context;
    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v35

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v9, v1}, Lcom/millennialmedia/android/HandShake;->didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V

    .line 683
    .end local v9           #context:Landroid/content/Context;
    :cond_15
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$fetch:Z

    move/from16 v35, v0

    if-eqz v35, :cond_16

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "MMFullScreenAdLaunch"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;
    invoke-static/range {v35 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$702(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "/"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlLaunch:Ljava/lang/String;
    invoke-static/range {v35 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$802(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeLaunch:J
    invoke-static/range {v35 .. v37}, Lcom/millennialmedia/android/MMAdViewController;->access$902(Lcom/millennialmedia/android/MMAdViewController;J)J

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$1000(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    invoke-static {v0, v6, v1}, Lcom/millennialmedia/android/MMAdViewController;->access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_7

    .line 704
    :catch_4
    move-exception v23

    .line 706
    .local v23, ioe:Ljava/io/IOException;
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Exception raised in HTTP stream: "

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_7

    .line 691
    .end local v23           #ioe:Ljava/io/IOException;
    :cond_16
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$fetch:Z

    move/from16 v35, v0

    if-eqz v35, :cond_17

    iget-object v0, v6, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "MMFullScreenAdTransition"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;
    invoke-static/range {v35 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$1202(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "/"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlTransition:Ljava/lang/String;
    invoke-static/range {v35 .. v36}, Lcom/millennialmedia/android/MMAdViewController;->access$1302(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeTransition:J
    invoke-static/range {v35 .. v37}, Lcom/millennialmedia/android/MMAdViewController;->access$1402(Lcom/millennialmedia/android/MMAdViewController;J)J

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$1000(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    invoke-static {v0, v6, v1}, Lcom/millennialmedia/android/MMAdViewController;->access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V

    goto/16 :goto_7

    .line 701
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const-string v38, "/"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    #calls: Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v1, v2, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$1500(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_7

    .line 712
    .end local v34           #xHeader:Lorg/apache/http/Header;
    :cond_18
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Millennial ad return failed. Invalid mime type returned."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_7

    .line 718
    :cond_19
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Millennial ad return failed. HTTP Header value null."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_7

    .line 724
    :cond_1a
    const-string v35, "MillennialMediaSDK"

    const-string v36, "Millennial ad return failed. HTTP Header is null."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_7

    .line 730
    .end local v3           #adTypeString:Ljava/lang/String;
    .end local v4           #adUrl:Ljava/lang/String;
    .end local v7           #arr$:[Lorg/apache/http/Header;
    .end local v11           #cookieHeaders:[Lorg/apache/http/Header;
    .end local v17           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v18           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v19           #httpHeader:Lorg/apache/http/Header;
    .end local v20           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #i$:I
    .end local v25           #len$:I
    :cond_1b
    const-string v35, "MillennialMediaSDK"

    const-string v36, "No network available, can\'t call for ads."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_7

    .line 662
    .restart local v3       #adTypeString:Ljava/lang/String;
    .restart local v4       #adUrl:Ljava/lang/String;
    .restart local v7       #arr$:[Lorg/apache/http/Header;
    .restart local v11       #cookieHeaders:[Lorg/apache/http/Header;
    .restart local v17       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v18       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v19       #httpHeader:Lorg/apache/http/Header;
    .restart local v20       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #i$:I
    .restart local v24       #json:Ljava/lang/String;
    .restart local v25       #len$:I
    .restart local v32       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_5
    move-exception v14

    move-object/from16 v31, v32

    .end local v32           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v31       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto/16 :goto_9

    .line 661
    .end local v31           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v32       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_6
    move-exception v14

    move-object/from16 v31, v32

    .end local v32           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v31       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto/16 :goto_8
.end method
