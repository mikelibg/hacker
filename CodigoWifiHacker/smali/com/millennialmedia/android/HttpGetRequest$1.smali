.class final Lcom/millennialmedia/android/HttpGetRequest$1;
.super Ljava/lang/Object;
.source "HttpGetRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HttpGetRequest;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/millennialmedia/android/HttpGetRequest$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging event to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/HttpGetRequest$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 142
    .local v1, getRequest:Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/HttpGetRequest$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
