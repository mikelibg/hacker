.class Lcom/pad/android/iappad/AdController$14;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->closeUnlocker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2161
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->webview:Lcom/pad/android/iappad/AdWebView;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$40(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    :goto_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->toolbar:Landroid/view/View;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$41(Lcom/pad/android/iappad/AdController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2168
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->title:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$42(Lcom/pad/android/iappad/AdController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2169
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->footer:Landroid/view/View;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$43(Lcom/pad/android/iappad/AdController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2170
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->footerTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$44(Lcom/pad/android/iappad/AdController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2171
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->backBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$45(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2172
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->fwdBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$46(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2173
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->closeBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$47(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2174
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->refreshBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$48(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2175
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->homeBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$49(Lcom/pad/android/iappad/AdController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2176
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mask:Landroid/view/View;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$50(Lcom/pad/android/iappad/AdController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2178
    return-void

    .line 2163
    :catch_0
    move-exception v0

    .line 2165
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$39(Lcom/pad/android/iappad/AdController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$14;->this$0:Lcom/pad/android/iappad/AdController;

    iget-object v2, v2, Lcom/pad/android/iappad/AdController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
