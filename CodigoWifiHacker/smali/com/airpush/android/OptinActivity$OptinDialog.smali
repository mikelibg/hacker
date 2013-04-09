.class public Lcom/airpush/android/OptinActivity$OptinDialog;
.super Landroid/app/AlertDialog;
.source "OptinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/OptinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptinDialog"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/airpush/android/OptinActivity;


# direct methods
.method protected constructor <init>(Lcom/airpush/android/OptinActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;

    .line 155
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 156
    iput-object p2, p0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/airpush/android/OptinActivity$OptinDialog;->showOptinDialog()V

    .line 158
    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/OptinActivity$OptinDialog;)Lcom/airpush/android/OptinActivity;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;

    return-object v0
.end method

.method private showOptinDialog()V
    .locals 22

    .prologue
    .line 160
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$0()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Display Privacy & Terms"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    const-string v18, "Privacy Policy & Advertising Terms"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [I

    const/16 v18, 0x0

    const-string v19, "#A5A5A5"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    aput v19, v8, v18

    const/16 v18, 0x1

    const-string v19, "#9C9C9C"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    aput v19, v8, v18

    const/16 v18, 0x2

    const-string v19, "#929493"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    aput v19, v8, v18

    .line 166
    .local v8, colors:[I
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v18, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 168
    .local v11, drawable:Landroid/graphics/drawable/GradientDrawable;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v14, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v15, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    .line 176
    .local v16, scale:F
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v5, buttonLayout:Landroid/widget/LinearLayout;
    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 179
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/high16 v19, 0x4270

    mul-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 182
    .local v6, buttonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v18, 0x4270

    mul-float v18, v18, v16

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 183
    const/16 v18, 0x50

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 184
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v7, closeText:Landroid/widget/TextView;
    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/high16 v20, 0x4000

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 191
    .local v4, btparParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x11

    move/from16 v0, v18

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 193
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const/high16 v18, -0x100

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x1010207

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    new-instance v9, Landroid/text/SpannableString;

    const-string v18, "Close"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    .local v9, content:Landroid/text/SpannableString;
    new-instance v18, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v19, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setId(I)V

    .line 203
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 207
    .local v10, continueButton:Landroid/widget/Button;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setId(I)V

    .line 208
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/high16 v21, 0x4000

    invoke-direct/range {v18 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    const-string v18, "Ok"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    const v18, -0x333334

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 216
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .local v13, layout:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v17, webLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v18, 0x4270

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 220
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v18, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v18 .. v18}, Lcom/airpush/android/OptinActivity;->access$3(Landroid/webkit/WebView;)V

    .line 224
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$2()Landroid/webkit/WebView;

    move-result-object v18

    const-string v19, "<html><body style=\'background:#C4C4C4;font-family:Arial;font-size:11pt;line-height:18px\'><p align=\'justify\'>Thank you for downloading this free, ad-supported application! Please read carefully. This application is ad-supported and our advertising partner, Airpush, Inc., may place ads within applications and in your device\'s notification tray and home screen.  Airpush collects certain information in accordance with the permissions you just granted through the prior screen.  When you click on advertisements delivered by Airpush, you will typically be directed to a third party\'s web page and we may pass certain of your information to the third parties operating or hosting these pages, including your email address, phone number and a list of the apps on your device.</p><p align=\'justify\'>  For more information on how Airpush collects, uses and shares your information, and to learn about your information choices, please visit the <a href=\'http://m.airpush.com/privacypolicy\'><i>Airpush Privacy Policy</i> </a>. If you do not wish to receive ads delivered by Airpush in the future, you may visit the <a href=\'http://m.airpush.com/optout\'><i>Airpush opt-out page</i></a> or delete this app.</p></body></html>"

    const-string v20, "text/html"

    const-string v21, "utf-8"

    invoke-virtual/range {v18 .. v21}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$2()Landroid/webkit/WebView;

    move-result-object v18

    new-instance v19, Landroid/webkit/WebChromeClient;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 226
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$2()Landroid/webkit/WebView;

    move-result-object v18

    new-instance v19, Lcom/airpush/android/OptinActivity$MyWebViewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/airpush/android/OptinActivity$MyWebViewClient;-><init>(Lcom/airpush/android/OptinActivity;Lcom/airpush/android/OptinActivity$MyWebViewClient;)V

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 227
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$2()Landroid/webkit/WebView;

    move-result-object v18

    const/high16 v19, 0x200

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 228
    invoke-static {}, Lcom/airpush/android/OptinActivity;->access$2()Landroid/webkit/WebView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/airpush/android/OptinActivity$OptinDialog;->setView(Landroid/view/View;)V

    .line 235
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->setCancelable(Z)V

    .line 237
    new-instance v18, Lcom/airpush/android/OptinActivity$OptinDialog$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airpush/android/OptinActivity$OptinDialog$1;-><init>(Lcom/airpush/android/OptinActivity$OptinDialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v18, Lcom/airpush/android/OptinActivity$OptinDialog$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airpush/android/OptinActivity$OptinDialog$2;-><init>(Lcom/airpush/android/OptinActivity$OptinDialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v4           #btparParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #buttonLayout:Landroid/widget/LinearLayout;
    .end local v6           #buttonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #closeText:Landroid/widget/TextView;
    .end local v8           #colors:[I
    .end local v9           #content:Landroid/text/SpannableString;
    .end local v10           #continueButton:Landroid/widget/Button;
    .end local v11           #drawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v13           #layout:Landroid/widget/LinearLayout;
    .end local v14           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #linearLayout:Landroid/widget/LinearLayout;
    .end local v16           #scale:F
    .end local v17           #webLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v12

    .line 281
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/airpush/android/OptinActivity;->finish()V

    goto :goto_0
.end method
