.class Lcom/pad/android/richmedia/view/AdView$8;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/pad/android/util/AdPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$8;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$8;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1603
    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1602
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1604
    .local v0, background:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1605
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$8;->this$0:Lcom/pad/android/richmedia/view/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V

    .line 1606
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView$8;->onComplete()V

    .line 1599
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 1595
    return-void
.end method
