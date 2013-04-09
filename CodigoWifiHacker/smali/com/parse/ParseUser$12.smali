.class Lcom/parse/ParseUser$12;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

.field final synthetic val$callback:Lcom/parse/SaveCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/parse/ParseUser$12;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$12;->val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

    iput-object p3, p0, Lcom/parse/ParseUser$12;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Lcom/parse/ParseUser$12;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 1074
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/parse/ParseUser$12;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 1078
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "authData"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/parse/ParseUser$12;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$12;->val$authenticator:Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-interface {v1}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$12;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V

    .line 1070
    return-void
.end method
