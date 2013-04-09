.class Lcom/revmob/ads/popup/Popup$4;
.super Ljava/lang/Object;
.source "Popup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/popup/Popup;->show(Lcom/revmob/ads/internal/OnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/popup/Popup;

.field final synthetic val$listener:Lcom/revmob/ads/internal/OnLoadListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/popup/Popup;Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/revmob/ads/popup/Popup$4;->this$0:Lcom/revmob/ads/popup/Popup;

    iput-object p2, p0, Lcom/revmob/ads/popup/Popup$4;->val$listener:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/revmob/ads/popup/Popup$4;->this$0:Lcom/revmob/ads/popup/Popup;

    iget-object v1, p0, Lcom/revmob/ads/popup/Popup$4;->val$listener:Lcom/revmob/ads/internal/OnLoadListener;

    #calls: Lcom/revmob/ads/popup/Popup;->buildAndDisplayDialog(Lcom/revmob/ads/internal/OnLoadListener;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/popup/Popup;->access$000(Lcom/revmob/ads/popup/Popup;Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 82
    return-void
.end method
