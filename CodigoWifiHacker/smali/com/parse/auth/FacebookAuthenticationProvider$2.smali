.class Lcom/parse/auth/FacebookAuthenticationProvider$2;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/facebook/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/FacebookAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/auth/FacebookAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V
    invoke-static {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$400(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    .line 126
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #getter for: Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$500(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;

    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;Lcom/parse/auth/FacebookAuthenticationProvider$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onError(Lcom/parse/facebook/DialogError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public onFacebookError(Lcom/parse/facebook/FacebookError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$2;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method
