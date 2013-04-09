.class Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;
.super Ljava/lang/Object;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2363
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    return-void
.end method


# virtual methods
.method public countImages(Ljava/lang/String;)V
    .locals 5
    .parameter "size"

    .prologue
    .line 2417
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 2418
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 2420
    const-string v3, "MillennialMediaSDK"

    const-string v4, "The reference to the ad view was broken."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :goto_0
    return-void

    .line 2424
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2426
    if-eqz p1, :cond_2

    .line 2428
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2436
    .local v2, num:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2438
    if-lez v2, :cond_3

    .line 2441
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_1

    .line 2445
    :try_start_0
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v3, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    :cond_1
    :goto_2
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Millennial ad return success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 2432
    .end local v2           #num:I
    :cond_2
    const/4 v2, 0x0

    .line 2433
    .restart local v2       #num:I
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Image count is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2447
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Exception raised in your MMAdListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2455
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_4

    .line 2459
    :try_start_1
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v3, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2463
    :cond_4
    :goto_3
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Millennial ad return failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2461
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Exception raised in your MMAdListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 2477
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 2615
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2616
    return-void
.end method

.method public overlayTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    .line 2528
    return-void
.end method

.method public overlayTransition(Ljava/lang/String;J)V
    .locals 1
    .parameter "transition"
    .parameter "time"

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    .line 2539
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-wide p2, v0, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    .line 2540
    return-void
.end method

.method public setLoaded(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 2373
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 2374
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 2376
    const-string v2, "MillennialMediaSDK"

    const-string v3, "The reference to the ad view was broken."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :goto_0
    return-void

    .line 2380
    :cond_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_1

    .line 2382
    if-eqz p1, :cond_2

    .line 2386
    :try_start_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2400
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 2401
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Millennial ad return success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2388
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2394
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2396
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2403
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Millennial ad return failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldAccelerate(Z)V
    .locals 3
    .parameter "shouldAccelerate"

    .prologue
    .line 2549
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 2550
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 2552
    iget-boolean v1, v0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2554
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v1, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    goto :goto_0
.end method

.method public shouldEnableBottomBar(Z)V
    .locals 1
    .parameter "enableBottomBar"

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    .line 2598
    return-void
.end method

.method public shouldMakeOverlayTransparent(Z)V
    .locals 1
    .parameter "isTransparent"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    .line 2607
    return-void
.end method

.method public shouldOpen(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 2487
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 2488
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 2490
    const-string v2, "MillennialMediaSDK"

    const-string v3, "The reference to the ad view was broken."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2494
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 2495
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    .line 2498
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_0

    .line 2502
    :try_start_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2504
    :catch_0
    move-exception v1

    .line 2506
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldOverlay(Z)V
    .locals 1
    .parameter "shouldOverlay"

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 2518
    return-void
.end method

.method public shouldResizeOverlay(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    .line 2571
    return-void
.end method

.method public shouldShowBottomBar(Z)V
    .locals 1
    .parameter "showBottomBar"

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    .line 2589
    return-void
.end method

.method public shouldShowTitlebar(Z)V
    .locals 1
    .parameter "showTitlebar"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    .line 2580
    return-void
.end method

.method public vibrate(I)V
    .locals 6
    .parameter "time"

    .prologue
    .line 2627
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;

    .line 2628
    .local v1, adView:Lcom/millennialmedia/android/MMAdView;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    if-eqz v3, :cond_0

    .line 2630
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2631
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 2633
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2634
    .local v2, vibrator:Landroid/os/Vibrator;
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2641
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 2638
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    const-string v3, "MillennialMediaSDK"

    const-string v4, "Advertisement is trying to use vibrator but permissions are missing."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
