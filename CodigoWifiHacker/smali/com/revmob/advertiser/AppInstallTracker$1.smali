.class Lcom/revmob/advertiser/AppInstallTracker$1;
.super Ljava/lang/Object;
.source "AppInstallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/advertiser/AppInstallTracker;->asyncRegisterInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/advertiser/AppInstallTracker;


# direct methods
.method constructor <init>(Lcom/revmob/advertiser/AppInstallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/revmob/advertiser/AppInstallTracker$1;->this$0:Lcom/revmob/advertiser/AppInstallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/revmob/advertiser/AppInstallTracker$1;->this$0:Lcom/revmob/advertiser/AppInstallTracker;

    invoke-virtual {v0}, Lcom/revmob/advertiser/AppInstallTracker;->registerInstall()V

    .line 37
    return-void
.end method
