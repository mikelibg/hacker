.class Lcom/airpush/android/IconAds$3;
.super Ljava/lang/Object;
.source "IconAds.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/IconAds;->getShortcutData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/IconAds;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/airpush/android/IconAds;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/IconAds$3;->this$0:Lcom/airpush/android/IconAds;

    iput p2, p0, Lcom/airpush/android/IconAds$3;->val$width:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 5

    .prologue
    .line 154
    iget-object v2, p0, Lcom/airpush/android/IconAds$3;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/airpush/android/IconAds;->access$2(Lcom/airpush/android/IconAds;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "width"

    iget v4, p0, Lcom/airpush/android/IconAds$3;->val$width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    const-string v4, "message"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "action"

    const-string v4, "geticon"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Icon  data values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    iget-object v2, p0, Lcom/airpush/android/IconAds$3;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/airpush/android/IconAds;->access$2(Lcom/airpush/android/IconAds;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://api.airpush.com/v2/api.php"

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 162
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/IconAds$3;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon Data returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/airpush/android/IconAds$3;->this$0:Lcom/airpush/android/IconAds;

    #calls: Lcom/airpush/android/IconAds;->parseIconJson(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/airpush/android/IconAds;->access$4(Lcom/airpush/android/IconAds;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method
