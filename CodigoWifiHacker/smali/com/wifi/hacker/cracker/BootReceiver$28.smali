.class final Lcom/wifi/hacker/cracker/BootReceiver$28;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->showExitPopup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$28;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$28;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2229
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$28;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->exit(Landroid/app/Activity;)V

    .line 2230
    return-void
.end method
