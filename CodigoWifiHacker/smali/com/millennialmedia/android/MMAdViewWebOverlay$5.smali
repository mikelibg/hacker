.class Lcom/millennialmedia/android/MMAdViewWebOverlay$5;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;->setForwardButtonListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 445
    const-string v0, "Forward button up"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 447
    return-void
.end method
