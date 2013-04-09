.class Lcom/millennialmedia/android/MMAdViewWebOverlay;
.super Landroid/widget/FrameLayout;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;,
        Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;,
        Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;
    }
.end annotation


# static fields
.field private static final kTitleMarginX:I = 0x8

.field private static final kTitleMarginY:I = 0x9

.field private static final kTransitionDuration:I = 0xc8


# instance fields
.field private backButton:Landroid/widget/Button;

.field private close:Landroid/graphics/drawable/Drawable;

.field private closeDisabled:Landroid/graphics/drawable/Drawable;

.field private content:Landroid/widget/LinearLayout;

.field private forwardButton:Landroid/widget/Button;

.field private leftArrow:Landroid/graphics/drawable/Drawable;

.field private leftArrowDisabled:Landroid/graphics/drawable/Drawable;

.field private navBar:Landroid/widget/RelativeLayout;

.field private navCloseButton:Landroid/widget/Button;

.field private overlayUrl:Ljava/lang/String;

.field private rightArrow:Landroid/graphics/drawable/Drawable;

.field private rightArrowDisabled:Landroid/graphics/drawable/Drawable;

.field private title:Landroid/widget/TextView;

.field viewHandler:Landroid/os/Handler;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/content/Context;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 22
    .parameter "activity"
    .parameter "padding"
    .parameter "time"
    .parameter "transition"
    .parameter "titlebar"
    .parameter "titleText"
    .parameter "navbar"
    .parameter "bottombarEnabled"
    .parameter "isTransparent"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 539
    new-instance v17, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->viewHandler:Landroid/os/Handler;

    .line 95
    const/16 v17, 0x3ad6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setId(I)V

    .line 96
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v17, p1

    .line 99
    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;

    .line 100
    .local v11, nonConfigurationInstance:Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;
    if-eqz v11, :cond_2

    .line 102
    iget-boolean v0, v11, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->bottomBarVisible:Z

    move/from16 p8, v0

    .line 103
    iget-boolean v0, v11, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->bottomBarEnabled:Z

    move/from16 p9, v0

    .line 104
    iget-object v0, v11, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    .line 108
    :cond_2
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v12, scale:F
    const/high16 v17, 0x3d80

    mul-float v17, v17, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 111
    .local v13, scaledPadding:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setPadding(IIII)V

    .line 113
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->addView(Landroid/view/View;)V

    .line 119
    if-eqz p6, :cond_3

    .line 121
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v14, titleBar:Landroid/widget/RelativeLayout;
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 124
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 125
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, -0x100

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x9

    invoke-virtual/range {v17 .. v21}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, closeButton:Landroid/widget/Button;
    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 138
    const-string v17, "Close"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 140
    new-instance v17, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v9, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v14, v6, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    .end local v6           #closeButton:Landroid/widget/Button;
    .end local v9           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #titleBar:Landroid/widget/RelativeLayout;
    :cond_3
    new-instance v17, Landroid/webkit/WebView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setId(I)V

    .line 169
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v16, webviewLp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    const-string v19, "interface"

    invoke-virtual/range {v17 .. v19}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    .line 175
    .local v15, webSettings:Landroid/webkit/WebSettings;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 176
    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 178
    if-eqz p10, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 188
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    const/high16 v17, 0x4248

    mul-float v17, v17, v12

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .line 195
    .local v10, navHeight:I
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, -0x333334

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x12c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 199
    new-instance v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/high16 v18, -0x100

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 206
    .local v5, am:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v17, "millennial_close.png"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 207
    .local v8, is:Ljava/io/InputStream;
    const-string v17, "millennial_close.png"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->close:Landroid/graphics/drawable/Drawable;

    .line 208
    const-string v17, "millennial_close_disabled.png"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 209
    const-string v17, "millennial_close_disabled.png"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->closeDisabled:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v8           #is:Ljava/io/InputStream;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setCloseButtonListener(Z)V

    .line 216
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .restart local v9       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    if-eqz p8, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    :goto_3
    if-nez v11, :cond_0

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->animateView(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 185
    .end local v5           #am:Landroid/content/res/AssetManager;
    .end local v9           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #navHeight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 211
    .restart local v5       #am:Landroid/content/res/AssetManager;
    .restart local v10       #navHeight:I
    :catch_0
    move-exception v7

    .line 212
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 294
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private animateView(Ljava/lang/String;J)V
    .locals 12
    .parameter "animation"
    .parameter "time"

    .prologue
    const v4, 0x3f666666

    const/high16 v8, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 306
    if-nez p1, :cond_0

    .line 307
    const-string p1, "bottomtotop"

    .line 308
    :cond_0
    const-string v5, "toptobottom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 315
    .local v0, translateDown:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 316
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 327
    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    .end local v0           #translateDown:Landroid/view/animation/TranslateAnimation;
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v5, "explode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd

    const v5, 0x3dcccccd

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 338
    .local v2, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 339
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 349
    const-string v1, "Explode"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 357
    .end local v2           #scale:Landroid/view/animation/ScaleAnimation;
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, 0x3f80

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v10, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 362
    .local v3, translateUp:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 363
    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dismiss(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    .line 519
    const-string v2, "Ad overlay closed"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 521
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 525
    :cond_0
    if-eqz p1, :cond_1

    .line 527
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 528
    .local v1, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 529
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 530
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 534
    .end local v1           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method getNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    new-instance v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay$1;)V

    .line 423
    .local v0, nonConfigurationInstance:Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 425
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->bottomBarVisible:Z

    .line 427
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->bottomBarEnabled:Z

    .line 428
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$NonConfigurationInstance;->webView:Landroid/webkit/WebView;

    .line 429
    return-object v0

    .line 426
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method goBack()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1
    .parameter "jsString"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method loadWebContent(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v0, "MillennialMediaSDK"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setBackButtonListener(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 467
    if-eqz p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->leftArrowDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setCloseButtonListener(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 494
    if-eqz p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->close:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->closeDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->navCloseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setForwardButtonListener(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 440
    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->rightArrowDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
