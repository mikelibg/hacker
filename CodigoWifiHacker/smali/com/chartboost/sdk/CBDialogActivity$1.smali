.class Lcom/chartboost/sdk/CBDialogActivity$1;
.super Ljava/lang/Object;
.source "CBDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBDialogActivity;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/CBDialogActivity$1;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity$1;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    #calls: Lcom/chartboost/sdk/CBDialogActivity;->display()V
    invoke-static {v0}, Lcom/chartboost/sdk/CBDialogActivity;->access$0(Lcom/chartboost/sdk/CBDialogActivity;)V

    .line 89
    return-void
.end method
