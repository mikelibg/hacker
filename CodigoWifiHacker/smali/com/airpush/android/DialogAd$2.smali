.class Lcom/airpush/android/DialogAd$2;
.super Ljava/lang/Object;
.source "DialogAd.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/DialogAd;
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
.field final synthetic this$0:Lcom/airpush/android/DialogAd;


# direct methods
.method constructor <init>(Lcom/airpush/android/DialogAd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 5

    .prologue
    .line 54
    iget-object v2, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/airpush/android/DialogAd;->access$1(Lcom/airpush/android/DialogAd;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "creativeid"

    iget-object v4, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->creativeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/airpush/android/DialogAd;->access$2(Lcom/airpush/android/DialogAd;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "campaignid"

    iget-object v4, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->campid:Ljava/lang/String;
    invoke-static {v4}, Lcom/airpush/android/DialogAd;->access$3(Lcom/airpush/android/DialogAd;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event"

    iget-object v4, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;
    invoke-static {v4}, Lcom/airpush/android/DialogAd;->access$0(Lcom/airpush/android/DialogAd;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    iget-object v2, p0, Lcom/airpush/android/DialogAd$2;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/airpush/android/DialogAd;->access$1(Lcom/airpush/android/DialogAd;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "https://api.airpush.com/dialogad/adclick.php"

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 62
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/DialogAd$2;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 49
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog Click: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
