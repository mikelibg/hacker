.class public Lcom/parse/ParseCloud;
.super Ljava/lang/Object;
.source "ParseCloud.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->constructCallCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 74
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, result:Ljava/lang/Object;,"TT;"
    return-object v1
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V
    .locals 2
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/parse/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, callback:Lcom/parse/FunctionCallback;,"Lcom/parse/FunctionCallback<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->constructCallCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 94
    .local v0, command:Lcom/parse/ParseCommand;
    new-instance v1, Lcom/parse/ParseCloud$1;

    invoke-direct {v1, p2, v0}, Lcom/parse/ParseCloud$1;-><init>(Lcom/parse/ParseCallback;Lcom/parse/ParseCommand;)V

    .line 102
    .local v1, findTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 103
    return-void
.end method

.method private static constructCallCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseCommand;
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "client_function"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    const-string v1, "function"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method private static convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, finalResult:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 53
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method
