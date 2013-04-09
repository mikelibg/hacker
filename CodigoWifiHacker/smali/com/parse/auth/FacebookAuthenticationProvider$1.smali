.class Lcom/parse/auth/FacebookAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/facebook/Facebook$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/auth/FacebookAuthenticationProvider;->extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
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
    .line 91
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #getter for: Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$300(Lcom/parse/auth/FacebookAuthenticationProvider;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$200(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Error;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onFacebookError(Lcom/parse/facebook/FacebookError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider$1;->this$0:Lcom/parse/auth/FacebookAuthenticationProvider;

    #calls: Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method
