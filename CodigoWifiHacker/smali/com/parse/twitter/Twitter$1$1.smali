.class Lcom/parse/twitter/Twitter$1$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/twitter/Twitter$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/twitter/Twitter$1;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v0}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 192
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "callbackUrl"

    .prologue
    .line 138
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 139
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "oauth_verifier"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, verifier:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 142
    iget-object v3, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v3, v3, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v3}, Lcom/parse/internal/AsyncCallback;->onCancel()V

    .line 188
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/parse/twitter/Twitter$1$1$1;

    invoke-direct {v0, p0, v2}, Lcom/parse/twitter/Twitter$1$1$1;-><init>(Lcom/parse/twitter/Twitter$1$1;Ljava/lang/String;)V

    .line 187
    .local v0, getTokenTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/parse/signpost/http/HttpParameters;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    new-instance v1, Lcom/parse/oauth/OAuth1FlowException;

    invoke-direct {v1, p1, p2, p3}, Lcom/parse/oauth/OAuth1FlowException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method
