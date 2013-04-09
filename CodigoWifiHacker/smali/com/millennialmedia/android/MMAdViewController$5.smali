.class Lcom/millennialmedia/android/MMAdViewController$5;
.super Ljava/lang/Thread;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 912
    const/16 v10, 0xcc

    .line 913
    .local v10, rc:I
    const/4 v9, 0x0

    .line 916
    .local v9, mimeTypeString:Ljava/lang/String;
    const-string v11, "Touch occured, opening ad..."

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 918
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;
    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$1700(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMAdView;

    .line 922
    .local v2, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v2, :cond_2

    .line 924
    const-string v11, "MillennialMediaSDK"

    const-string v12, "The reference to the ad view was broken."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    :cond_2
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 928
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 930
    const-string v11, "MillennialMediaSDK"

    const-string v12, "The ad view does not have a parent activity."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    :cond_3
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;
    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$1700(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v8

    .line 940
    .local v8, locationString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;
    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewController;->access$1700(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 941
    .local v4, connectURL:Ljava/net/URL;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 942
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 944
    .local v3, conn:Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 946
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const-string v12, "Location"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #setter for: Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/millennialmedia/android/MMAdViewController;->access$1702(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 947
    const-string v11, "Content-Type"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 948
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 950
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 951
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "urlString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;
    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewController;->access$1700(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 965
    const/16 v11, 0x12c

    if-lt v10, v11, :cond_4

    const/16 v11, 0x190

    if-lt v10, v11, :cond_3

    .line 976
    .end local v3           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #connectURL:Ljava/net/URL;
    :cond_4
    :goto_1
    if-eqz v8, :cond_0

    .line 980
    if-nez v9, :cond_5

    .line 981
    const-string v9, ""

    .line 983
    :cond_5
    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 984
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 985
    .local v5, destinationURI:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 987
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    .line 991
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "https"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const-string v11, "text/html"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 993
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 994
    .local v7, intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 995
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 998
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 999
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1000
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1001
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1003
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1008
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1132
    .end local v7           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 1134
    .local v6, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "MillennialMediaSDK"

    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 953
    .end local v5           #destinationURI:Landroid/net/Uri;
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v6

    .line 958
    .local v6, e:Ljava/net/MalformedURLException;
    goto/16 :goto_1

    .line 960
    .end local v6           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v6

    .line 963
    .local v6, e:Ljava/io/IOException;
    goto/16 :goto_1

    .line 1010
    .end local v6           #e:Ljava/io/IOException;
    .restart local v5       #destinationURI:Landroid/net/Uri;
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mmvideo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1012
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, adName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1015
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mmvideo: attempting to play video "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1016
    #calls: Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->access$1800(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1018
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    #calls: Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    invoke-static {v11, v1, v12}, Lcom/millennialmedia/android/MMAdViewController;->access$1900(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1021
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #calls: Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    invoke-static {v11, v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->access$2000(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1023
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v11

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v2, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 1024
    iget-object v11, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #calls: Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    invoke-static {v11, v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->access$2100(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 1028
    :cond_8
    const-string v11, "mmvideo: Ad is expired."

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :cond_9
    const-string v11, "mmvideo: Ad is not in the filesystem."

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_a
    const-string v11, "mmvideo: Ad is not in the database."

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    .end local v1           #adName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "market"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1044
    const-string v11, "Android Market URL, launch the Market Application"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1045
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1046
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1047
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1049
    .end local v7           #intent:Landroid/content/Intent;
    :cond_c
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "rtsp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "video/mp4"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "video/3gpp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1054
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Video, launch the video player for video at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1055
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1056
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1057
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1058
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1060
    .end local v7           #intent:Landroid/content/Intent;
    :cond_e
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tel"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1062
    const-string v11, "Telephone Number, launch the phone"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1063
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v7, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1064
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1065
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1067
    .end local v7           #intent:Landroid/content/Intent;
    :cond_f
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "geo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1069
    const-string v11, "Google Maps"

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1070
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1071
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1072
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1074
    .end local v7           #intent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 1076
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".mp4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".3gp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1079
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Video, launch the video player for video at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1080
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1082
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1083
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1088
    .end local v7           #intent:Landroid/content/Intent;
    :cond_12
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1089
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1090
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1093
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1098
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1102
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1105
    .end local v7           #intent:Landroid/content/Intent;
    :cond_13
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1108
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1109
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1110
    const-string v11, "canAccelerate"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1111
    const-string v11, "overlayTransition"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v11, "transitionTime"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-wide v12, v12, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1113
    const-string v11, "shouldResizeOverlay"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    const-string v11, "shouldShowTitlebar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1115
    const-string v11, "shouldShowBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1116
    const-string v11, "shouldEnableBottomBar"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1117
    const-string v11, "shouldMakeOverlayTransparent"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    const-string v11, "overlayTitle"

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v12, v12, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Accelerometer on?: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v12, v12, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1122
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1127
    .end local v7           #intent:Landroid/content/Intent;
    :cond_14
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1128
    .restart local v7       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1129
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
