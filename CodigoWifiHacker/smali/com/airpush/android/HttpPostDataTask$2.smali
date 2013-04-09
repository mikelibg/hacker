.class Lcom/airpush/android/HttpPostDataTask$2;
.super Ljava/lang/Object;
.source "HttpPostDataTask.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/HttpPostDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/HttpPostDataTask;


# direct methods
.method constructor <init>(Lcom/airpush/android/HttpPostDataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/HttpPostDataTask$2;->this$0:Lcom/airpush/android/HttpPostDataTask;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .parameter "response"
    .parameter "context"

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 81
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 83
    .local v1, encoding:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 84
    :cond_1
    aget-object v0, v4, v3

    .line 86
    .local v0, element:Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v3, Lcom/airpush/android/HttpPostDataTask$InflatingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airpush/android/HttpPostDataTask$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1
.end method
