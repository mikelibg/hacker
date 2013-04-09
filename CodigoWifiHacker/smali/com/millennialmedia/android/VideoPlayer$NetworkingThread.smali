.class final Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;
.super Ljava/lang/Thread;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NetworkingThread"
.end annotation


# instance fields
.field locationString:Ljava/lang/String;

.field mimeTypeString:Ljava/lang/String;

.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;

.field urlString:Ljava/lang/String;

.field userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1070
    const/16 v3, 0xcc

    .line 1071
    .local v3, rc:I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->mimeTypeString:Ljava/lang/String;

    .line 1072
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->locationString:Ljava/lang/String;

    .line 1077
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->locationString:Ljava/lang/String;

    .line 1078
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v1, connectURL:Ljava/net/URL;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 1080
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1082
    .local v0, conn:Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1083
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->userAgent:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1084
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1086
    const-string v4, "Location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    .line 1087
    const-string v4, "Content-Type"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->mimeTypeString:Ljava/lang/String;

    .line 1088
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1090
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response Code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Response Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1106
    const/16 v4, 0x12c

    if-lt v3, v4, :cond_2

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 1107
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v1           #connectURL:Ljava/net/URL;
    :cond_2
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v2

    .line 1099
    .local v2, e:Ljava/net/MalformedURLException;
    goto :goto_0

    .line 1101
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 1103
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
