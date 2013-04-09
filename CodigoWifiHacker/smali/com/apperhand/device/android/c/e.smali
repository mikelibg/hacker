.class public final Lcom/apperhand/device/android/c/e;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebView;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    const/high16 v10, 0x3f00

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 24
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 31
    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    mul-float v0, v6, v3

    add-float/2addr v0, v10

    float-to-int v0, v0

    const/high16 v5, 0x4110

    mul-float/2addr v5, v3

    add-float/2addr v5, v10

    float-to-int v5, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v10

    float-to-int v6, v6

    const/high16 v7, 0x4110

    mul-float/2addr v7, v3

    add-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const/high16 v0, 0x4190

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    const/high16 v0, -0x100

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    const v0, -0x19191a

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 41
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x4040

    mul-float/2addr v3, v6

    add-float/2addr v3, v10

    float-to-int v3, v3

    invoke-direct {v1, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v9, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 58
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p2, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 61
    invoke-virtual {p2, v8, v8, v8, v8}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p3, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 67
    invoke-virtual {p3, v8, v8, v8, v8}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    return-object v2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
