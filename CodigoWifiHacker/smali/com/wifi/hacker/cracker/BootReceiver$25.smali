.class final Lcom/wifi/hacker/cracker/BootReceiver$25;
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

.field final synthetic val$seenPackageKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$25;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$25;->val$seenPackageKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$25;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$25;->val$seenPackageKey:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    return-void
.end method
