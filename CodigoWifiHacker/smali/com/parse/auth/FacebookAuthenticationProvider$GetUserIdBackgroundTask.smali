.class Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;
.super Landroid/os/AsyncTask;
.source "FacebookAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/auth/FacebookAuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserIdBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/auth/FacebookAuthenticationProvider;


# direct methods
.method private constructor <init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/auth/FacebookAuthenticationProvider;Lcom/parse/auth/FacebookAuthenticationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v1, idRequestArgs:Landroid/os/Bundle;
    const-string v4, "fields"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #getter for: Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;
    invoke-static {v4}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$000(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/facebook/Facebook;

    move-result-object v4

    const-string v5, "me"

    invoke-virtual {v4, v5, v1}, Lcom/parse/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, result:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, meObject:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .end local v2           #meObject:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 48
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    check-cast p1, Ljava/lang/Exception;

    .end local p1
    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    return-void

    .line 53
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    check-cast p1, Ljava/lang/String;

    .end local p1
    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$200(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V

    goto :goto_0
.end method
