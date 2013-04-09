.class public Lcom/pad/android/iappad/AdAudioTask;
.super Landroid/os/AsyncTask;
.source "AdAudioTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final CONN_STATUS_ERROR2:I

.field private final CONN_STATUS_ERROR3:I

.field private final CONN_STATUS_ERROR4:I

.field private final CONN_STATUS_SUCCESS:I

.field private final FILE_NAME:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adCont:Lcom/pad/android/iappad/AdController;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/AdController;Landroid/app/Activity;)V
    .locals 1
    .parameter "con"
    .parameter "act"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/AdAudioTask;->CONN_STATUS_SUCCESS:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/pad/android/iappad/AdAudioTask;->CONN_STATUS_ERROR2:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/pad/android/iappad/AdAudioTask;->CONN_STATUS_ERROR3:I

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/pad/android/iappad/AdAudioTask;->CONN_STATUS_ERROR4:I

    .line 25
    const-string v0, "audioads.mp3"

    iput-object v0, p0, Lcom/pad/android/iappad/AdAudioTask;->FILE_NAME:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/pad/android/iappad/AdAudioTask;->adCont:Lcom/pad/android/iappad/AdController;

    .line 34
    iput-object p2, p0, Lcom/pad/android/iappad/AdAudioTask;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .parameter "u"

    .prologue
    const/4 v12, 0x0

    .line 53
    const/4 v8, 0x0

    .line 55
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 59
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 62
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 64
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    .line 66
    .local v3, code:I
    sparse-switch v3, :sswitch_data_0

    .line 100
    :goto_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .end local v3           #code:I
    .end local v7           #url:Ljava/net/URL;
    :goto_1
    return-object v9

    .line 69
    .restart local v3       #code:I
    .restart local v7       #url:Ljava/net/URL;
    :sswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 71
    .local v5, is:Ljava/io/InputStream;
    iget-object v9, p0, Lcom/pad/android/iappad/AdAudioTask;->activity:Landroid/app/Activity;

    const-string v10, "audioads.mp3"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 73
    .local v6, os:Ljava/io/FileOutputStream;
    const/16 v9, 0x80

    new-array v2, v9, [B

    .line 76
    .local v2, buf:[B
    :goto_2
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    .local v1, Length:I
    if-gtz v1, :cond_0

    .line 81
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 83
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 84
    :catch_0
    move-exception v9

    goto :goto_0

    .line 78
    :cond_0
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v6, v2, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 93
    .end local v1           #Length:I
    .end local v2           #buf:[B
    .end local v3           #code:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .end local v7           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 94
    .local v4, e:Ljava/net/MalformedURLException;
    const/4 v9, 0x2

    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 89
    .end local v4           #e:Ljava/net/MalformedURLException;
    .restart local v3       #code:I
    .restart local v7       #url:Ljava/net/URL;
    :sswitch_1
    const/4 v9, 0x4

    :try_start_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 95
    .end local v3           #code:I
    .end local v7           #url:Ljava/net/URL;
    :catch_2
    move-exception v4

    .line 96
    .local v4, e:Ljava/io/IOException;
    const/4 v9, 0x3

    :try_start_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 97
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 98
    .local v4, e:Ljava/lang/Exception;
    const/4 v9, 0x3

    :try_start_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 99
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 100
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    throw v9

    .line 66
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdAudioTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "LBAdController"

    const-string v1, "AdAudioTask cancelled"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 47
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pad/android/iappad/AdAudioTask;->adCont:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0, p1}, Lcom/pad/android/iappad/AdController;->audioAdRetrieved(Ljava/lang/Integer;)V

    .line 114
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdAudioTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 108
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdAudioTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
