.class Lcom/parse/facebook/Facebook$2;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/parse/facebook/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/Facebook$DialogListener;)V
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
    .line 795
    iput-object p1, p0, Lcom/parse/facebook/Facebook$2;->this$0:Lcom/parse/facebook/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 801
    return-void
.end method

.method public onError(Lcom/parse/facebook/DialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 799
    return-void
.end method

.method public onFacebookError(Lcom/parse/facebook/FacebookError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 797
    return-void
.end method
