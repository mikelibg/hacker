.class final Lcom/parse/ParseUser$7;
.super Lcom/parse/BackgroundTask;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 918
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Lcom/parse/ParseUser;>;"
    iput-object p2, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$7;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/parse/ParseUser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 921
    const/4 v1, 0x0

    .line 922
    .local v1, finished:Z
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    .line 923
    .local v3, user:Lcom/parse/ParseUser;
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "anonymous"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 926
    .local v2, oldAnonymousData:Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v4

    #calls: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v4}, Lcom/parse/ParseUser;->access$600(Lcom/parse/ParseUser;)V

    .line 928
    :try_start_0
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    iget-object v6, p0, Lcom/parse/ParseUser$7;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 930
    const/4 v4, 0x1

    #calls: Lcom/parse/ParseUser;->resolveLaziness(Z)V
    invoke-static {v3, v4}, Lcom/parse/ParseUser;->access$700(Lcom/parse/ParseUser;Z)V

    .line 931
    const/4 v1, 0x1

    .line 932
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 936
    if-nez v1, :cond_0

    .line 937
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 939
    #calls: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v3, v2}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    :cond_0
    return-object v4

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Lorg/json/JSONException;
    :try_start_1
    new-instance v4, Lcom/parse/ParseException;

    invoke-direct {v4, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    .line 937
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v3}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseUser$7;->val$authType:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 939
    #calls: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v3, v2}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    :cond_1
    throw v4
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/parse/ParseUser$7;->run()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
