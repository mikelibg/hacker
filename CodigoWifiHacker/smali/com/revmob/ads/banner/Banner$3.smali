.class Lcom/revmob/ads/banner/Banner$3;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/Banner;->addHtmlAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/Banner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/Banner;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner$3;->this$0:Lcom/revmob/ads/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$3;->this$0:Lcom/revmob/ads/banner/Banner;

    iget-object v0, v0, Lcom/revmob/ads/banner/Banner;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/revmob/ads/banner/Banner$3;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/Banner;->access$400(Lcom/revmob/ads/banner/Banner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
