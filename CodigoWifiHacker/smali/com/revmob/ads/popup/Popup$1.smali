.class Lcom/revmob/ads/popup/Popup$1;
.super Ljava/lang/Object;
.source "Popup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/popup/Popup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/popup/Popup;


# direct methods
.method constructor <init>(Lcom/revmob/ads/popup/Popup;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/revmob/ads/popup/Popup$1;->this$0:Lcom/revmob/ads/popup/Popup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/revmob/ads/popup/Popup$1;->this$0:Lcom/revmob/ads/popup/Popup;

    invoke-virtual {v0}, Lcom/revmob/ads/popup/Popup;->click()V

    .line 28
    return-void
.end method
