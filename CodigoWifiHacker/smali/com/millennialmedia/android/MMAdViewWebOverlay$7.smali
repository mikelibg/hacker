.class Lcom/millennialmedia/android/MMAdViewWebOverlay$7;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;->setCloseButtonListener(Z)V
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
    .line 497
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 499
    const-string v0, "Close button"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    const/4 v1, 0x1

    #calls: Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    .line 501
    return-void
.end method
