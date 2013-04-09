.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private arguments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cls:Ljava/lang/Class;

.field private method:Ljava/lang/reflect/Method;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 16
    .parameter "webView"
    .parameter "uriString"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 32
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 33
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, components:[Ljava/lang/String;
    array-length v12, v3

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 62
    .end local v3           #components:[Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 36
    .restart local v3       #components:[Ljava/lang/String;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_0
    array-length v12, v3

    add-int/lit8 v12, v12, -0x2

    aget-object v2, v3, v12

    .line 37
    .local v2, className:Ljava/lang/String;
    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v7, v3, v12

    .line 40
    .local v7, methodName:Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    .line 41
    const/16 v12, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, queryString:Ljava/lang/String;
    const-string v12, "&"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 43
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 45
    .local v8, param:Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, subComponents:[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    .line 48
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const-string v13, "callback"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 50
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v8           #param:Ljava/lang/String;
    .end local v10           #subComponents:[Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.millennialmedia.android."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    .line 56
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 58
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #components:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #methodName:Ljava/lang/String;
    .end local v9           #queryString:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 60
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "MillennialMediaSDK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while executing javascript call "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 66
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    .line 74
    :try_start_0
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 75
    .local v4, webView:Landroid/webkit/WebView;
    if-eqz v4, :cond_3

    .line 77
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMJSObject;

    .line 78
    .local v2, receiver:Lcom/millennialmedia/android/MMJSObject;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/millennialmedia/android/MMJSObject;->setContext(Landroid/content/Context;)V

    .line 80
    const/4 v4, 0x0

    .line 81
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/HashMap;

    aput-object v9, v7, v8

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMJSResponse;

    .line 82
    .local v3, response:Lcom/millennialmedia/android/MMJSResponse;
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 84
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 85
    .local v5, webView2:Landroid/webkit/WebView;
    if-eqz v5, :cond_3

    .line 88
    if-nez v3, :cond_0

    .line 89
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 91
    :cond_0
    iget-object v6, v3, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 93
    :cond_1
    iget-object v6, v3, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 94
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    .line 97
    :cond_2
    const-string v6, "%s(%s);"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, call:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing JS bridge callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 99
    new-instance v6, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v6, p0, v5, v0}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #call:Ljava/lang/String;
    .end local v2           #receiver:Lcom/millennialmedia/android/MMJSObject;
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    .end local v4           #webView:Landroid/webkit/WebView;
    .end local v5           #webView2:Landroid/webkit/WebView;
    :cond_3
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MillennialMediaSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while executing javascript call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
