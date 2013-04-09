.class public Lcom/apperhand/device/android/AndroidSDKProvider;
.super Landroid/app/IntentService;
.source "AndroidSDKProvider.java"

# interfaces
.implements Lcom/apperhand/device/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/AndroidSDKProvider$2;,
        Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;
    }
.end annotation


# static fields
.field private static m:Lcom/apperhand/device/android/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/apperhand/device/a/d/c;

.field private f:Lcom/apperhand/device/a/c/a;

.field private g:Lcom/apperhand/device/android/a/a;

.field private h:Lcom/apperhand/device/android/a/b;

.field private i:Lcom/apperhand/device/android/a/e;

.field private j:Lcom/apperhand/device/android/a/f;

.field private k:Lcom/apperhand/device/android/a/d;

.field private l:Lcom/apperhand/device/android/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "AndroidSDKProvider"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v0, "startapp_devid"

    invoke-static {p0, v0}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "startapp_appid"

    invoke-static {p0, v1}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 163
    const-string v2, "com.apperhand.global"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 164
    const-string v3, "TERMINATE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 165
    if-nez v2, :cond_0

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    :cond_2
    const-string v3, "CRoQAlVGS1keGVoEHgRLEBoOGRdLEUE+agQtJzsiJj8tABJOHhYdGwYHQQU="

    invoke-static {v3, v4}, Lcom/apperhand/device/a/d/a;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/apperhand/device/a/d/b;->a([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 183
    const-string v3, "APPLICATION_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "DEVELOPER_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v0, "M_SERVER_URL"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v0, "FIRST_RUN"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const-string v0, "USER_AGENT"

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v0, "SERVICE_MODE"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic b(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->initSDK(Landroid/content/Context;Z)V

    .line 102
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 106
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v1, Lcom/apperhand/device/android/a;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/a;-><init>(Landroid/content/Context;)V

    .line 111
    sput-object v1, Lcom/apperhand/device/android/AndroidSDKProvider;->m:Lcom/apperhand/device/android/a;

    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ACCEPTED_EULA"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NewEulaTemplate"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "NewEulaChain"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NewStep"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EulaCounter"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "EulaGlobalCounter"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Lcom/apperhand/common/dto/EULAAcceptDetails;

    invoke-direct {v9}, Lcom/apperhand/common/dto/EULAAcceptDetails;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setButton(Ljava/lang/String;)V

    const-string v10, "empty"

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setTemplate(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setAccepted(Z)V

    if-nez v0, :cond_3

    const-string v0, "default"

    :cond_3
    invoke-virtual {v9, v0}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setChain(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setStep(Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EulaGlobalCounter"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v9, v4, v5}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setCounter(J)V

    invoke-virtual {v9, v6, v7}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setGlobalCounter(J)V

    const-string v0, "eulaAcceptDetails"

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1, v8}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-class v3, Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Service;

    if-eqz v2, :cond_6

    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_6
    iget-object v1, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static searchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->WEB:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->searchURL(Ljava/lang/String;Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static searchURL(Ljava/lang/String;Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v0

    const-string v1, "SEARCH_URL"

    const-string v2, "http://www.searchmobileonline.com/{$CATEGORY$}?sourceid=7&q={$QUERY$}"

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/apperhand/device/android/AndroidSDKProvider$2;->a:[I

    invoke-virtual {p1}, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    const-string v1, "{$CATEGORY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    if-eqz p0, :cond_0

    .line 140
    const-string v1, "{$QUERY$}"

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_1
    return-object v0

    .line 125
    :pswitch_0
    const-string v1, "{$CATEGORY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :pswitch_1
    const-string v1, "{$CATEGORY$}"

    const-string v2, "simages"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v1, "{$CATEGORY$}"

    const-string v2, "svideos"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    const-string v1, "{$QUERY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/apperhand/device/a/d/c;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Lcom/apperhand/device/a/d/c;

    return-object v0
.end method

.method public final b()Lcom/apperhand/device/a/c/a;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->f:Lcom/apperhand/device/a/c/a;

    return-object v0
.end method

.method public final c()Lcom/apperhand/device/a/a/a;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->g:Lcom/apperhand/device/android/a/a;

    return-object v0
.end method

.method public final d()Lcom/apperhand/device/a/a/b;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->h:Lcom/apperhand/device/android/a/b;

    return-object v0
.end method

.method public final e()Lcom/apperhand/device/a/a/e;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->i:Lcom/apperhand/device/android/a/e;

    return-object v0
.end method

.method public final f()Lcom/apperhand/device/a/a/f;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->j:Lcom/apperhand/device/android/a/f;

    return-object v0
.end method

.method public final g()Lcom/apperhand/device/a/a/d;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->k:Lcom/apperhand/device/android/a/d;

    return-object v0
.end method

.method public final h()Lcom/apperhand/device/a/a/c;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->l:Lcom/apperhand/device/android/a/c;

    return-object v0
.end method

.method public final i()Lcom/apperhand/device/a/d/d;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/apperhand/common/dto/ApplicationDetails;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Lcom/apperhand/common/dto/ApplicationDetails;

    invoke-direct {v0}, Lcom/apperhand/common/dto/ApplicationDetails;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setApplicationId(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setDeveloperId(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setUserAgent(Ljava/lang/String;)V

    .line 397
    invoke-static {p0}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setDeviceId(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setLocale(Ljava/util/Locale;)V

    .line 399
    const-string v1, "1.0.17"

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setProtocolVersion(Ljava/lang/String;)V

    .line 400
    new-instance v1, Lcom/apperhand/common/dto/DisplayMetrics;

    invoke-direct {v1}, Lcom/apperhand/common/dto/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iput v3, v1, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v1, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setDisplayMetrics(Lcom/apperhand/common/dto/DisplayMetrics;)V

    .line 401
    new-instance v1, Lcom/apperhand/common/dto/Build;

    invoke-direct {v1}, Lcom/apperhand/common/dto/Build;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setBrand(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setDevice(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setManufacturer(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setModel(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setVersionRelease(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setVersionSDKInt(I)V

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/Build;->setOs(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setBuild(Lcom/apperhand/common/dto/Build;)V

    .line 402
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setPackageId(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/ApplicationDetails;->setAndroidId(Ljava/lang/String;)V

    .line 406
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const-string v0, "1.0.17"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 201
    const-string v0, "AND.Provider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->setIntentRedelivery(Z)V

    .line 203
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    const-string v1, "SERVICE_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Ljava/lang/String;

    .line 213
    const-string v2, "M_SERVER_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    const-string v3, "FIRST_RUN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 215
    const-string v4, "APPLICATION_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    .line 216
    const-string v4, "DEVELOPER_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    .line 217
    const-string v4, "USER_AGENT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    .line 219
    new-instance v4, Lcom/apperhand/device/android/c/c;

    invoke-direct {v4}, Lcom/apperhand/device/android/c/c;-><init>()V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Lcom/apperhand/device/a/d/c;

    .line 220
    new-instance v4, Lcom/apperhand/device/android/a/a;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->g:Lcom/apperhand/device/android/a/a;

    .line 221
    new-instance v4, Lcom/apperhand/device/android/a/b;

    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/apperhand/device/android/a/b;-><init>(Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->h:Lcom/apperhand/device/android/a/b;

    .line 222
    new-instance v4, Lcom/apperhand/device/android/a/e;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->i:Lcom/apperhand/device/android/a/e;

    .line 223
    new-instance v4, Lcom/apperhand/device/android/a/f;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/f;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->j:Lcom/apperhand/device/android/a/f;

    .line 224
    new-instance v4, Lcom/apperhand/device/android/a/d;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/d;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->k:Lcom/apperhand/device/android/a/d;

    .line 225
    new-instance v4, Lcom/apperhand/device/android/a/c;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->l:Lcom/apperhand/device/android/a/c;

    .line 227
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/apperhand/device/android/c/a;->a(Landroid/content/Context;)V

    .line 229
    new-instance v4, Lcom/apperhand/device/android/AndroidSDKProvider$1;

    invoke-direct {v4, p0, p0, v3, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;-><init>(Lcom/apperhand/device/android/AndroidSDKProvider;Lcom/apperhand/device/a/a;ZLjava/lang/String;)V

    .line 310
    new-instance v5, Lcom/apperhand/device/android/b/d;

    invoke-direct {v5, p0, p0, v4, v2}, Lcom/apperhand/device/android/b/d;-><init>(Landroid/content/Context;Lcom/apperhand/device/a/a;Lcom/apperhand/device/a/b;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->f:Lcom/apperhand/device/a/c/a;

    .line 312
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 313
    new-instance v0, Lcom/apperhand/common/dto/Command;

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v0, v1}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 314
    invoke-virtual {v4, v0}, Lcom/apperhand/device/a/b;->a(Lcom/apperhand/common/dto/Command;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 317
    const-string v1, "eulaAcceptDetails"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/apperhand/common/dto/Command;

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v1, v2}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 319
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 320
    const-string v3, "details"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v4, v1, v2}, Lcom/apperhand/device/a/b;->a(Lcom/apperhand/common/dto/Command;Ljava/util/Map;)V

    goto :goto_0

    .line 325
    :cond_2
    if-eqz v3, :cond_3

    .line 326
    const-string v0, "com.apperhand.global"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 329
    const-string v2, "NEXT_RUN"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 331
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-ltz v0, :cond_0

    .line 335
    :cond_3
    invoke-virtual {v4}, Lcom/apperhand/device/a/b;->a()V

    goto :goto_0
.end method
