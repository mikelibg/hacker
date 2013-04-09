.class Lcom/parse/facebook/AsyncFacebookRunner$1;
.super Ljava/lang/Thread;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/facebook/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/facebook/AsyncFacebookRunner;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parse/facebook/AsyncFacebookRunner;Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->this$0:Lcom/parse/facebook/AsyncFacebookRunner;

    iput-object p2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    iput-object p4, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->this$0:Lcom/parse/facebook/AsyncFacebookRunner;

    iget-object v2, v2, Lcom/parse/facebook/AsyncFacebookRunner;->fb:Lcom/parse/facebook/Facebook;

    iget-object v3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/parse/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, response:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    new-instance v3, Lcom/parse/facebook/FacebookError;

    const-string v4, "auth.expireSession failed"

    invoke-direct {v3, v4}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;->onFacebookError(Lcom/parse/facebook/FacebookError;Ljava/lang/Object;)V

    .line 98
    .end local v1           #response:Ljava/lang/String;
    :goto_0
    return-void

    .line 90
    .restart local v1       #response:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    iget-object v3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 91
    .end local v1           #response:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    iget-object v3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljava/net/MalformedURLException;
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    iget-object v3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$listener:Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;

    iget-object v3, p0, Lcom/parse/facebook/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0
.end method
