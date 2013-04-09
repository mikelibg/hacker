.class public Lcom/wifi/hacker/cracker/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# instance fields
.field appLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getRandomIcon()I
    .locals 4

    .prologue
    .line 187
    const/4 v3, 0x4

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 188
    .local v1, icons:[I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 189
    .local v0, generator:Ljava/util/Random;
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 190
    .local v2, rnd:I
    aget v3, v1, v2

    return v3

    .line 187
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 194
    return-object p0
.end method

.method public isWifiOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 91
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wifi/hacker/cracker/LaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 94
    .local v1, mWifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 181
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->exit(Landroid/app/Activity;)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->setContentView(I)V

    .line 37
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/wifi/hacker/cracker/LaunchActivity;->appLayout:Landroid/widget/LinearLayout;

    .line 40
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 41
    .local v1, playNow:Landroid/widget/Button;
    new-instance v2, Lcom/wifi/hacker/cracker/LaunchActivity$1;

    invoke-direct {v2, p0}, Lcom/wifi/hacker/cracker/LaunchActivity$1;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, moreGames:Landroid/widget/Button;
    new-instance v2, Lcom/wifi/hacker/cracker/LaunchActivity$2;

    invoke-direct {v2, p0}, Lcom/wifi/hacker/cracker/LaunchActivity$2;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/wifi/hacker/cracker/LaunchActivity$3;

    invoke-direct {v4, p0}, Lcom/wifi/hacker/cracker/LaunchActivity$3;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity;)V

    invoke-static {p0, v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->start(Landroid/app/Activity;ZZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 86
    return-void
.end method

.method public setupApp(Ljava/lang/String;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 15
    .parameter "title"
    .parameter "description"
    .parameter "showAdMethod"
    .parameter "tabViewOnLoadListener"

    .prologue
    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, grabosTitle:Ljava/lang/String;
    const/4 v5, 0x0

    .line 104
    .local v5, grabosDescription:Ljava/lang/String;
    const/4 v7, 0x0

    .line 106
    .local v7, grabosPackage:Ljava/lang/String;
    :try_start_0
    sget-object v12, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_GRABOS_INTERSTITIAL:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, grabosInterstitialSettings:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v10, jsonObj:Lorg/json/JSONObject;
    const-string v12, "title"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    const-string v12, "description"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    const-string v12, "package"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 115
    .end local v6           #grabosInterstitialSettings:Ljava/lang/String;
    .end local v10           #jsonObj:Lorg/json/JSONObject;
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 116
    const v12, 0x7f070008

    invoke-virtual {p0, v12}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 117
    .local v9, installNow:Landroid/widget/Button;
    const-string v12, "<b>Free Download</b>"

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v9}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v13, -0x55ff0100

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    const-string v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_0
    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 123
    move-object/from16 p2, v5

    .line 124
    move-object v11, v7

    .line 125
    .local v11, packageToUse:Ljava/lang/String;
    new-instance v12, Lcom/wifi/hacker/cracker/LaunchActivity$4;

    move-object/from16 v0, p4

    invoke-direct {v12, p0, v11, v0}, Lcom/wifi/hacker/cracker/LaunchActivity$4;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .end local v11           #packageToUse:Ljava/lang/String;
    :goto_1
    const v12, 0x7f070007

    invoke-virtual {p0, v12}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, appDescription:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    const v12, 0x7f070006

    invoke-virtual {p0, v12}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 158
    .local v4, appTitle:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    const v12, 0x7f070005

    invoke-virtual {p0, v12}, Lcom/wifi/hacker/cracker/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    .local v3, appIcon:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    .line 163
    invoke-static {}, Lcom/wifi/hacker/cracker/LaunchActivity;->getRandomIcon()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .end local v2           #appDescription:Landroid/widget/TextView;
    .end local v3           #appIcon:Landroid/widget/ImageView;
    .end local v4           #appTitle:Landroid/widget/TextView;
    .end local v9           #installNow:Landroid/widget/Button;
    :cond_3
    return-void

    .line 143
    .restart local v9       #installNow:Landroid/widget/Button;
    :cond_4
    new-instance v12, Lcom/wifi/hacker/cracker/LaunchActivity$5;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, p0, v0, v1}, Lcom/wifi/hacker/cracker/LaunchActivity$5;-><init>(Lcom/wifi/hacker/cracker/LaunchActivity;Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 111
    .end local v9           #installNow:Landroid/widget/Button;
    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method
