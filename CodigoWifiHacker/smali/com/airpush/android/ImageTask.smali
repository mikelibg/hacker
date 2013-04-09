.class final Lcom/airpush/android/ImageTask;
.super Landroid/os/AsyncTask;
.source "ImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final IMAGE_URL:Ljava/lang/String;

.field bmpicon:Landroid/graphics/Bitmap;

.field final listener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V
    .locals 1
    .parameter "image_url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, completeListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airpush/android/ImageTask;->bmpicon:Landroid/graphics/Bitmap;

    .line 19
    iput-object p1, p0, Lcom/airpush/android/ImageTask;->IMAGE_URL:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/airpush/android/ImageTask;->listener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airpush/android/ImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 28
    .local v2, httpConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/airpush/android/ImageTask;->IMAGE_URL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .local v4, u:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 30
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 36
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 37
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 38
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 41
    .local v3, iconStream:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/ImageTask;->bmpicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v3           #iconStream:Ljava/io/InputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 50
    .end local v4           #u:Ljava/net/URL;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "AirpushSDK"

    const-string v6, "Network Error, please try again later"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 46
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 47
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 49
    :cond_2
    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airpush/android/ImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airpush/android/ImageTask;->listener:Lcom/airpush/android/AsyncTaskCompleteListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/airpush/android/ImageTask;->listener:Lcom/airpush/android/AsyncTaskCompleteListener;

    iget-object v1, p0, Lcom/airpush/android/ImageTask;->bmpicon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/airpush/android/AsyncTaskCompleteListener;->onTaskComplete(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method
