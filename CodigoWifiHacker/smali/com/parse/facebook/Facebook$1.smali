.class Lcom/parse/facebook/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/parse/facebook/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/facebook/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/facebook/Facebook;


# direct methods
.method constructor <init>(Lcom/parse/facebook/Facebook;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/Facebook;->access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    .line 375
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 348
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 349
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/facebook/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    invoke-virtual {v0}, Lcom/parse/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    invoke-virtual {v2}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    invoke-virtual {v2}, Lcom/parse/facebook/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/Facebook;->access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parse/facebook/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/Facebook;->access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/parse/facebook/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/facebook/Facebook$DialogListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    goto :goto_0
.end method

.method public onError(Lcom/parse/facebook/DialogError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 363
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/Facebook;->access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parse/facebook/Facebook$DialogListener;->onError(Lcom/parse/facebook/DialogError;)V

    .line 365
    return-void
.end method

.method public onFacebookError(Lcom/parse/facebook/FacebookError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 368
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/parse/facebook/Facebook$1;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/Facebook;->access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parse/facebook/Facebook$DialogListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    .line 370
    return-void
.end method
