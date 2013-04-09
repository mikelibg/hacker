.class final Lcom/wifi/hacker/cracker/BootReceiver$22;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->grabosShowInterstitial(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isLetangInterstitial:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1895
    iput-boolean p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$22;->val$isLetangInterstitial:Z

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$22;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 1899
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1901
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$22;->val$isLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$22;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1902
    :cond_0
    return-void
.end method
