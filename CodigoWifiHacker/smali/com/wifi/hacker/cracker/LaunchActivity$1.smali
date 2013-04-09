.class Lcom/wifi/hacker/cracker/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifi/hacker/cracker/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 43
    iget-object v2, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->isWifiOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/wifi/hacker/cracker/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v2, v0}, Lcom/wifi/hacker/cracker/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wifi/hacker/cracker/LaunchActivity$1;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v3}, Lcom/wifi/hacker/cracker/LaunchActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 48
    .local v1, localAlertDialog:Landroid/app/AlertDialog;
    const-string v2, "Your phone\'s WiFi is disabled. It must be enabled for WiFi Hacker to work. If you just enabled it, wait a few seconds and then try again."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    const-string v2, "Go to Wireless Settings"

    new-instance v3, Lcom/wifi/hacker/cracker/LaunchActivity$1$1;

    invoke-direct {v3, p0}, Lcom/wifi/hacker/cracker/LaunchActivity$1$1;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
