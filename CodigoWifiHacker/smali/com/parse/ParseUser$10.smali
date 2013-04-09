.class final Lcom/parse/ParseUser$10;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

.field final synthetic val$callback:Lcom/parse/LogInCallback;


# direct methods
.method constructor <init>(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/parse/ParseUser$10;->val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/ParseUser$10;->val$callback:Lcom/parse/LogInCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1018
    iget-object v0, p0, Lcom/parse/ParseUser$10;->val$callback:Lcom/parse/LogInCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    .line 1019
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/parse/ParseUser$10;->val$callback:Lcom/parse/LogInCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    .line 1023
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "authData"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/parse/ParseUser$10;->val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$10;->val$callback:Lcom/parse/LogInCallback;

    invoke-static {v0, p1, v1}, Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V

    .line 1015
    return-void
.end method
