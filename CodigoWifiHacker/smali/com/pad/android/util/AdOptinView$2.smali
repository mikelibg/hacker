.class Lcom/pad/android/util/AdOptinView$2;
.super Landroid/webkit/WebViewClient;
.source "AdOptinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/util/AdOptinView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    .line 85
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 15
    .parameter "view"
    .parameter "url"

    .prologue
    .line 99
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    const/16 v12, 0x82

    invoke-virtual {v11, v12}, Lcom/pad/android/util/AdOptinView;->requestFocus(I)Z

    .line 100
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/pad/android/util/AdOptinView;->access$3(Lcom/pad/android/util/AdOptinView;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 102
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    new-instance v12, Landroid/widget/RelativeLayout;

    iget-object v13, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v11, v12}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;Landroid/widget/RelativeLayout;)V

    .line 103
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 110
    .local v10, win:Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 111
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 112
    .local v6, statusBarHeight:I
    const v11, 0x1020002

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    .line 113
    .local v1, contentViewTop:I
    if-le v1, v6, :cond_1

    sub-int v7, v1, v6

    .line 115
    .local v7, titleBarHeight:I
    :goto_0
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    .local v5, sWidth:I
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v11, v6

    sub-int v4, v11, v7

    .line 118
    .local v4, sHeight:I
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v9, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 119
    .local v9, wM:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 121
    .local v8, wL:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lcom/pad/android/util/AdOptinView;->access$5(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v11, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/pad/android/util/AdOptinView;->access$5(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .end local v1           #contentViewTop:I
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #sHeight:I
    .end local v5           #sWidth:I
    .end local v6           #statusBarHeight:I
    .end local v7           #titleBarHeight:I
    .end local v8           #wL:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #wM:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #win:Landroid/view/Window;
    :cond_0
    return-void

    .line 113
    .restart local v1       #contentViewTop:I
    .restart local v2       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #rect:Landroid/graphics/Rect;
    .restart local v6       #statusBarHeight:I
    .restart local v10       #win:Landroid/view/Window;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$3(Lcom/pad/android/util/AdOptinView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 93
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    :cond_0
    return-void
.end method
