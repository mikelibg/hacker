.class final Lcom/parse/ParseFacebookUtils$1;
.super Ljava/lang/Object;
.source "ParseFacebookUtils.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFacebookUtils;->extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 447
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "authData"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    #calls: Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->access$000()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V

    .line 441
    return-void
.end method
