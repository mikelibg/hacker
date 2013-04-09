.class final Lcom/revmob/ads/popup/Popup$3;
.super Ljava/lang/Object;
.source "Popup.java"

# interfaces
.implements Lcom/revmob/ads/internal/OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/popup/Popup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "response"

    .prologue
    .line 48
    return-void
.end method

.method public onAdReceived(Lcom/revmob/ads/internal/Ad;)V
    .locals 0
    .parameter "popup"

    .prologue
    .line 43
    check-cast p1, Lcom/revmob/ads/popup/Popup;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/revmob/ads/popup/Popup;->show(Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 44
    return-void
.end method
