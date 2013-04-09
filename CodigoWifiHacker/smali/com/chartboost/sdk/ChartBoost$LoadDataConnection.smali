.class Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;
.source "ChartBoost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/ChartBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataConnection"
.end annotation


# instance fields
.field public hadError:Z

.field public location:Ljava/lang/String;

.field public shouldCache:Z

.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;

.field public viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    .line 242
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    .line 236
    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    .line 237
    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    .line 238
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    .line 239
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 243
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "json"

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->validateJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 258
    :goto_0
    iget-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    #calls: Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v1, v2, v3, p1}, Lcom/chartboost/sdk/ChartBoost;->access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 261
    iget-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    #calls: Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/ChartBoost;->access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    #calls: Lcom/chartboost/sdk/ChartBoost;->invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/ChartBoost;->access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 255
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 256
    throw v1
.end method
