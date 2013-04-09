.class Lcom/airpush/android/SetPreferences$1$1;
.super Ljava/lang/Object;
.source "SetPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/SetPreferences$1;->lauchNewHttpTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airpush/android/SetPreferences$1;


# direct methods
.method constructor <init>(Lcom/airpush/android/SetPreferences$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/SetPreferences$1$1;->this$1:Lcom/airpush/android/SetPreferences$1;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v3, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/airpush/android/SetPreferences;->access$0()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 45
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, app_data:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "imei"

    invoke-static {}, Lcom/airpush/android/Util;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "inputlist"

    invoke-direct {v8, v9, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "App Info Values >>>>>>: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 59
    new-instance v5, Lcom/airpush/android/HttpPostDataTask;

    invoke-static {}, Lcom/airpush/android/SetPreferences;->access$0()Landroid/content/Context;

    move-result-object v8

    const-string v9, "https://api.airpush.com/lp/log_sdk_request.php"

    iget-object v10, p0, Lcom/airpush/android/SetPreferences$1$1;->this$1:Lcom/airpush/android/SetPreferences$1;

    #getter for: Lcom/airpush/android/SetPreferences$1;->this$0:Lcom/airpush/android/SetPreferences;
    invoke-static {v10}, Lcom/airpush/android/SetPreferences$1;->access$1(Lcom/airpush/android/SetPreferences$1;)Lcom/airpush/android/SetPreferences;

    move-result-object v10

    iget-object v10, v10, Lcom/airpush/android/SetPreferences;->sendAppInfoAsyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-direct {v5, v8, v7, v9, v10}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 60
    .local v5, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v8}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void

    .line 47
    .end local v1           #app_data:Ljava/lang/String;
    .end local v5           #httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 48
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, dataString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
