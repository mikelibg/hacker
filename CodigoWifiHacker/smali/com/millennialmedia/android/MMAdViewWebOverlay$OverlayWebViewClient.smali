.class final Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OverlayWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "view"
    .parameter "urlString"
    .parameter "favicon"

    .prologue
    .line 611
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPageStarted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 613
    if-eqz p2, :cond_0

    .line 615
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 616
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 618
    const-string v10, "Activity is null. Returning from click"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 748
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 623
    .local v4, destinationURI:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 625
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 630
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmvideo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 632
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 633
    .local v6, id:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, ad:Lcom/millennialmedia/android/VideoAd;
    const/4 v2, 0x0

    .line 639
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_2
    invoke-virtual {v3, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v1

    .line 641
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 649
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v10

    if-nez v10, :cond_3

    .line 654
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-class v11, Lcom/millennialmedia/android/VideoPlayer;

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    .line 655
    .local v7, intent:Landroid/content/Intent;
    const/high16 v10, 0x2400

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    const-string v10, "cached"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 657
    const-string v10, "videoId"

    invoke-virtual {v7, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v10, "adName"

    invoke-virtual {v7, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-boolean v10, v1, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 662
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".mmsyscache"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/video.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 663
    .local v9, sdCardAdVideo:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 669
    .end local v9           #sdCardAdVideo:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 672
    .end local v1           #ad:Lcom/millennialmedia/android/VideoAd;
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 741
    .end local v6           #id:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 743
    .local v5, e:Landroid/content/ActivityNotFoundException;
    const-string v10, "MillennialMediaSDK"

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    .restart local v1       #ad:Lcom/millennialmedia/android/VideoAd;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v6       #id:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 645
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :goto_3
    if-eqz v2, :cond_2

    .line 646
    :try_start_4
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto/16 :goto_1

    .line 667
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 674
    .end local v1           #ad:Lcom/millennialmedia/android/VideoAd;
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "market"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 677
    const-string v10, "Android Market URL, launch the Market Application"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 678
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 679
    .local v8, myIntent:Landroid/content/Intent;
    const/high16 v10, 0x2400

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 680
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 681
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 683
    .end local v8           #myIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rtsp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 686
    const-string v10, "Ignore MalFormedUrlException for RTSP"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Video, launch the video player for video at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 688
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 690
    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 691
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 693
    .end local v7           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 696
    const-string v10, "Telephone Number, launch the phone"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 697
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.DIAL"

    invoke-direct {v8, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 698
    .restart local v8       #myIntent:Landroid/content/Intent;
    const/high16 v10, 0x2400

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 699
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 700
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 702
    .end local v8           #myIntent:Landroid/content/Intent;
    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 705
    const-string v10, "Text message."

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 706
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 707
    .restart local v8       #myIntent:Landroid/content/Intent;
    const/high16 v10, 0x2400

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 709
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 711
    .end local v8           #myIntent:Landroid/content/Intent;
    :cond_9
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "geo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 713
    const-string v10, "Google Maps"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 714
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 715
    .restart local v8       #myIntent:Landroid/content/Intent;
    const/high16 v10, 0x2400

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 717
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 719
    .end local v8           #myIntent:Landroid/content/Intent;
    :cond_a
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 721
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".3gp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 724
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Video, launch the video player for video at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 725
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 727
    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 728
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v10, v10, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0

    .line 732
    .end local v7           #intent:Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->shouldShowAndEnableBottomBar()V

    goto/16 :goto_0

    .line 737
    :cond_d
    const-string v10, "Uncertain about content. Stay in the overlay"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->shouldShowAndEnableBottomBar()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 643
    .restart local v1       #ad:Lcom/millennialmedia/android/VideoAd;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v6       #id:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_3
.end method

.method public onReceivedError(Landroid/webkit/WebView;Ljava/lang/Error;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 762
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "urlString"

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 755
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowAndEnableBottomBar()V
    .locals 2

    .prologue
    .line 767
    const-string v0, "Showing and enabling bottom bar"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setCloseButtonListener(Z)V

    .line 773
    :cond_0
    return-void
.end method
