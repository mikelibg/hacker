.class Lcom/revmob/RevMob$2;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->openAdLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/RevMob;

.field final synthetic val$linkFetcher:Lcom/revmob/ads/link/LinkFetcher;

.field final synthetic val$listener:Lcom/revmob/ads/RevMobAdsListener;


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;Lcom/revmob/ads/link/LinkFetcher;Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/revmob/RevMob$2;->this$0:Lcom/revmob/RevMob;

    iput-object p2, p0, Lcom/revmob/RevMob$2;->val$linkFetcher:Lcom/revmob/ads/link/LinkFetcher;

    iput-object p3, p0, Lcom/revmob/RevMob$2;->val$listener:Lcom/revmob/ads/RevMobAdsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/revmob/RevMob$2;->val$linkFetcher:Lcom/revmob/ads/link/LinkFetcher;

    iget-object v1, p0, Lcom/revmob/RevMob$2;->val$listener:Lcom/revmob/ads/RevMobAdsListener;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/link/LinkFetcher;->gotoMarketWithSessionVerification(Lcom/revmob/ads/RevMobAdsListener;)V

    .line 290
    return-void
.end method
