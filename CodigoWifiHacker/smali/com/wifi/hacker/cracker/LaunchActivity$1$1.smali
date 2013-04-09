.class Lcom/wifi/hacker/cracker/LaunchActivity$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/LaunchActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wifi/hacker/cracker/LaunchActivity$1;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/LaunchActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1$1;->this$1:Lcom/wifi/hacker/cracker/LaunchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1$1;->this$1:Lcom/wifi/hacker/cracker/LaunchActivity$1;

    iget-object v2, v2, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, ctx:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
