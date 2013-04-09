.class public Lcom/airpush/android/Airpush;
.super Lcom/airpush/android/SDKIntializer;
.source "Airpush.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AirpushSDK"

.field static asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static event:Ljava/lang/String;

.field private static mAppId:Ljava/lang/String;

.field private static mAppKey:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mLoadingDialog:Landroid/app/ProgressDialog;


# instance fields
.field private isDialogClosed:Z

.field optinRunnable:Ljava/lang/Runnable;

.field userInfoRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    sput-object v0, Lcom/airpush/android/Airpush;->mAppId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/airpush/android/Airpush;->mAppKey:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 82
    const-string v0, "optOut"

    sput-object v0, Lcom/airpush/android/Airpush;->event:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/airpush/android/Airpush$3;

    invoke-direct {v0}, Lcom/airpush/android/Airpush$3;-><init>()V

    sput-object v0, Lcom/airpush/android/Airpush;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/airpush/android/SDKIntializer;-><init>()V

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->isDialogClosed:Z

    .line 35
    new-instance v1, Lcom/airpush/android/Airpush$1;

    invoke-direct {v1, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->optinRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v1, Lcom/airpush/android/Airpush$2;

    invoke-direct {v1, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->userInfoRunnable:Ljava/lang/Runnable;

    .line 187
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->isDialogClosed:Z

    .line 188
    sget-object v1, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->isShowOptinDialog(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/airpush/android/Airpush;->sendUserInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "appId"
    .parameter "appKey"

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-direct {p0}, Lcom/airpush/android/SDKIntializer;-><init>()V

    .line 29
    iput-boolean v3, p0, Lcom/airpush/android/Airpush;->isDialogClosed:Z

    .line 35
    new-instance v1, Lcom/airpush/android/Airpush$1;

    invoke-direct {v1, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->optinRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v1, Lcom/airpush/android/Airpush$2;

    invoke-direct {v1, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->userInfoRunnable:Ljava/lang/Runnable;

    .line 144
    sput-object p2, Lcom/airpush/android/Airpush;->mAppId:Ljava/lang/String;

    .line 145
    sput-object p3, Lcom/airpush/android/Airpush;->mAppKey:Ljava/lang/String;

    .line 146
    if-nez p1, :cond_1

    .line 147
    const-string v1, "AirpushSDK"

    const-string v2, "Context must not be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sput-object p1, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    .line 152
    iput-boolean v3, p0, Lcom/airpush/android/Airpush;->isDialogClosed:Z

    .line 153
    sget-object v1, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Util;->setContext(Landroid/content/Context;)V

    .line 160
    new-instance v1, Lcom/airpush/android/UserDetails;

    sget-object v2, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lcom/airpush/android/SetPreferences;

    sget-object v2, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 163
    sget-object v1, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 165
    const-string v1, "sdkPrefs"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    const-string v1, "SDKEnabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/airpush/android/Airpush;->enableSDK(Landroid/content/Context;Z)V

    .line 179
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/airpush/android/Airpush;->userInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/airpush/android/Airpush;->event:Ljava/lang/String;

    return-object v0
.end method

.method public static airpushOptIn(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "optIn"

    sput-object v1, Lcom/airpush/android/Airpush;->event:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/airpush/android/Airpush;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v1}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static airpushOptOut(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "optOut"

    sput-object v1, Lcom/airpush/android/Airpush;->event:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/airpush/android/Airpush;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v1}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static checkRequiredPermission(Landroid/content/Context;)Z
    .locals 7
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    const/4 v3, 0x1

    .line 533
    .local v3, value:Z
    const-string v6, "android.permission.INTERNET"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 535
    .local v1, permissionInternet:Z
    :goto_0
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 537
    .local v0, permissionAccessNetworkstate:Z
    :goto_1
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 539
    .local v2, permissionReadPhonestate:Z
    :goto_2
    if-nez v1, :cond_0

    .line 540
    const/4 v3, 0x0

    .line 541
    const-string v4, "AirpushSDK"

    const-string v5, "Required INTERNET permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    if-nez v0, :cond_1

    .line 544
    const/4 v3, 0x0

    .line 545
    const-string v4, "AirpushSDK"

    const-string v5, "Required ACCESS_NETWORK_STATE permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    if-nez v2, :cond_2

    .line 549
    const-string v4, "AirpushSDK"

    const-string v5, "Required READ_PHONE_STATE permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v3, 0x0

    .line 553
    :cond_2
    return v3

    .end local v0           #permissionAccessNetworkstate:Z
    .end local v1           #permissionInternet:Z
    .end local v2           #permissionReadPhonestate:Z
    :cond_3
    move v1, v5

    .line 533
    goto :goto_0

    .restart local v1       #permissionInternet:Z
    :cond_4
    move v0, v5

    .line 535
    goto :goto_1

    .restart local v0       #permissionAccessNetworkstate:Z
    :cond_5
    move v2, v5

    .line 537
    goto :goto_2
.end method

.method public static enableSDK(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 518
    :try_start_0
    const-string v3, "sdkPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 521
    .local v1, SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SDKEnabled"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SDK enabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    .end local v1           #SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static getDataFromManifest(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 451
    sput-object p0, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    .line 453
    :try_start_0
    sget-object v2, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 465
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v2, Lcom/airpush/android/Airpush;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/airpush/android/Util;->setAppID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 468
    :try_start_1
    sget-object v2, Lcom/airpush/android/Airpush;->mAppKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/airpush/android/Airpush;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ApiKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/Airpush;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x1

    .line 495
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    return v2

    .line 480
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 481
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirpushSDK"

    const-string v3, "Problem with fetching apiKey."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v2, "airpush"

    invoke-static {v2}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 488
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 490
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AirpushSDK"

    const-string v3, "AppId or ApiKey not found in Manifest. Please add."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 491
    :catch_2
    move-exception v1

    .line 492
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static hideLoader()V
    .locals 1

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isSDKEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 502
    :try_start_0
    const-string v3, "sdkPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    const-string v3, "SDKEnabled"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    const-string v3, "SDKEnabled"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 511
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static optionalPermissions(Landroid/content/Context;)Z
    .locals 8
    .parameter "locmContext"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 558
    sput-object p0, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    .line 559
    const/4 v3, 0x1

    .line 560
    .local v3, value:Z
    sget-object v6, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 562
    .local v1, permissionAccessFineLocation:Z
    :goto_0
    sget-object v6, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 564
    .local v0, permissionAccessCoarseLocation:Z
    :goto_1
    sget-object v6, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 566
    .local v2, permissionGetAccounts:Z
    :goto_2
    if-nez v2, :cond_0

    .line 567
    const/4 v3, 0x0

    .line 568
    const-string v4, "AirpushSDK"

    const-string v5, "Required GET_ACCOUNTS permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    if-nez v1, :cond_1

    .line 571
    const-string v4, "AirpushSDK"

    const-string v5, "Required ACCESS_FINE_LOCATION permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v3, 0x0

    .line 575
    :cond_1
    if-nez v0, :cond_2

    .line 576
    const-string v4, "AirpushSDK"

    const-string v5, "Required ACCESS_COARSE_LOCATION permission not found in manifest."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v3, 0x0

    .line 581
    :cond_2
    return v3

    .end local v0           #permissionAccessCoarseLocation:Z
    .end local v1           #permissionAccessFineLocation:Z
    .end local v2           #permissionGetAccounts:Z
    :cond_3
    move v1, v5

    .line 560
    goto :goto_0

    .restart local v1       #permissionAccessFineLocation:Z
    :cond_4
    move v0, v5

    .line 562
    goto :goto_1

    .restart local v0       #permissionAccessCoarseLocation:Z
    :cond_5
    move v2, v5

    .line 564
    goto :goto_2
.end method

.method public static showLoader(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 62
    const-string v0, ""

    const-string v1, "Loading..."

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 63
    sget-object v0, Lcom/airpush/android/Airpush;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static startNewAdThread(Z)V
    .locals 5
    .parameter "isOptin"

    .prologue
    .line 900
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/airpush/android/Airpush$9;

    invoke-direct {v2, p0}, Lcom/airpush/android/Airpush$9;-><init>(Z)V

    .line 909
    const-wide/16 v3, 0xbb8

    .line 900
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An Error Occured in StartNew thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method parseAppWallJson(Ljava/lang/String;)V
    .locals 9
    .parameter "json"

    .prologue
    .line 767
    :try_start_0
    const-string v2, "invalid"

    .line 768
    .local v2, invalid:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 769
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 771
    .local v5, status:Ljava/lang/String;
    :goto_0
    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v2

    .line 773
    .local v4, msg:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Success"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 775
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v2

    .line 777
    .local v6, url:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 778
    new-instance v1, Landroid/content/Intent;

    sget-object v7, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-class v8, Lcom/airpush/android/SmartWallActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 781
    const-string v7, "adtype"

    const-string v8, "AW"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string v7, "url"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 784
    :try_start_1
    sget-object v7, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 799
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #invalid:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #msg:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 769
    .restart local v2       #invalid:Ljava/lang/String;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 771
    .restart local v5       #status:Ljava/lang/String;
    :cond_2
    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 775
    .restart local v4       #msg:Ljava/lang/String;
    :cond_3
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 786
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v6       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "AirpushSDK"

    const-string v8, "Required SmartWallActivity not found in Manifest. Please add."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 792
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #invalid:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #msg:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 793
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in AppWall Json: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_3

    .line 795
    .end local v0           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error occured in AppWall Json: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_3
.end method

.method parseDialogAdJson(Ljava/lang/String;)V
    .locals 20
    .parameter "json"

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 646
    :try_start_0
    const-string v9, "invalid"

    .line 648
    .local v9, invalid:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 649
    .local v10, jsonObject:Lorg/json/JSONObject;
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v15, "invalid"

    .line 651
    .local v15, status:Ljava/lang/String;
    :goto_0
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v12, "invalid"

    .line 653
    .local v12, msg:Ljava/lang/String;
    :goto_1
    const-string v18, "adtype"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object v2, v9

    .line 655
    .local v2, adtype:Ljava/lang/String;
    :goto_2
    const-string v18, "200"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "Success"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 656
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v6, "nodata"

    .line 658
    .local v6, data:Ljava/lang/String;
    :goto_3
    const-string v18, "nodata"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 704
    .end local v2           #adtype:Ljava/lang/String;
    .end local v6           #data:Ljava/lang/String;
    .end local v9           #invalid:Ljava/lang/String;
    .end local v10           #jsonObject:Lorg/json/JSONObject;
    .end local v12           #msg:Ljava/lang/String;
    .end local v15           #status:Ljava/lang/String;
    :cond_0
    :goto_4
    return-void

    .line 649
    .restart local v9       #invalid:Ljava/lang/String;
    .restart local v10       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 651
    .restart local v15       #status:Ljava/lang/String;
    :cond_2
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 653
    .restart local v12       #msg:Ljava/lang/String;
    :cond_3
    const-string v18, "adtype"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 656
    .restart local v2       #adtype:Ljava/lang/String;
    :cond_4
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 660
    .restart local v6       #data:Ljava/lang/String;
    :cond_5
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 661
    .local v11, jsonObject2:Lorg/json/JSONObject;
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v17, v9

    .line 663
    .local v17, url:Ljava/lang/String;
    :goto_5
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v16, v9

    .line 665
    .local v16, title:Ljava/lang/String;
    :goto_6
    const-string v18, "creativeid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v5, ""

    .line 667
    .local v5, creativeid:Ljava/lang/String;
    :goto_7
    const-string v18, "campaignid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v4, ""

    .line 669
    .local v4, camid:Ljava/lang/String;
    :goto_8
    const-string v18, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v14, ""

    .line 671
    .local v14, sms:Ljava/lang/String;
    :goto_9
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v13, ""

    .line 673
    .local v13, number:Ljava/lang/String;
    :goto_a
    const-string v18, "buttontxt"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v18

    if-eqz v18, :cond_c

    move-object v3, v9

    .line 676
    .local v3, buttontxt:Ljava/lang/String;
    :goto_b
    :try_start_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 677
    new-instance v8, Landroid/content/Intent;

    sget-object v18, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-class v19, Lcom/airpush/android/OptinActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x400

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 680
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    const-string v18, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v18, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v18, "buttontxt"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v18, "creativeid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v18, "campaignid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v18, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v18, "adtype"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    sget-object v18, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 691
    .end local v8           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 692
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v18, "AirpushSDK"

    const-string v19, "Required OptinActivity not found in Manifest, Please add."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 697
    .end local v2           #adtype:Ljava/lang/String;
    .end local v3           #buttontxt:Ljava/lang/String;
    .end local v4           #camid:Ljava/lang/String;
    .end local v5           #creativeid:Ljava/lang/String;
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #invalid:Ljava/lang/String;
    .end local v10           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #jsonObject2:Lorg/json/JSONObject;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #sms:Ljava/lang/String;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 699
    .local v7, e:Lorg/json/JSONException;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error in Dialog Json: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 661
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v2       #adtype:Ljava/lang/String;
    .restart local v6       #data:Ljava/lang/String;
    .restart local v9       #invalid:Ljava/lang/String;
    .restart local v10       #jsonObject:Lorg/json/JSONObject;
    .restart local v11       #jsonObject2:Lorg/json/JSONObject;
    .restart local v12       #msg:Ljava/lang/String;
    .restart local v15       #status:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 663
    .restart local v17       #url:Ljava/lang/String;
    :cond_7
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_6

    .line 665
    .restart local v16       #title:Ljava/lang/String;
    :cond_8
    const-string v18, "creativeid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 667
    .restart local v5       #creativeid:Ljava/lang/String;
    :cond_9
    const-string v18, "campaignid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 669
    .restart local v4       #camid:Ljava/lang/String;
    :cond_a
    const-string v18, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    .line 671
    .restart local v14       #sms:Ljava/lang/String;
    :cond_b
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 673
    .restart local v13       #number:Ljava/lang/String;
    :cond_c
    const-string v18, "buttontxt"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto/16 :goto_b

    .line 701
    .end local v2           #adtype:Ljava/lang/String;
    .end local v4           #camid:Ljava/lang/String;
    .end local v5           #creativeid:Ljava/lang/String;
    .end local v6           #data:Ljava/lang/String;
    .end local v9           #invalid:Ljava/lang/String;
    .end local v10           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #jsonObject2:Lorg/json/JSONObject;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #sms:Ljava/lang/String;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 702
    .local v7, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error occured in Dialog Json: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method parseLandingPageAdJson(Ljava/lang/String;)V
    .locals 9
    .parameter "json"

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 859
    :try_start_0
    const-string v2, "invalid"

    .line 860
    .local v2, invalid:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 861
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 863
    .local v5, status:Ljava/lang/String;
    :goto_0
    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v2

    .line 865
    .local v4, msg:Ljava/lang/String;
    :goto_1
    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Success"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 866
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v2

    .line 868
    .local v6, url:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 869
    new-instance v1, Landroid/content/Intent;

    sget-object v7, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-class v8, Lcom/airpush/android/SmartWallActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    const-string v7, "adtype"

    const-string v8, "FP"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    invoke-static {v6}, Lcom/airpush/android/Util;->setLandingPageAdUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 877
    :try_start_1
    sget-object v7, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #invalid:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #msg:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 861
    .restart local v2       #invalid:Ljava/lang/String;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 863
    .restart local v5       #status:Ljava/lang/String;
    :cond_2
    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 866
    .restart local v4       #msg:Ljava/lang/String;
    :cond_3
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 878
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v6       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 879
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "AirpushSDK"

    const-string v8, "Required SmartWallActivity not found in Manifest. Please add."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 887
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #invalid:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #msg:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 889
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in Landing Page Json: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_3

    .line 891
    .end local v0           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 892
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error occured in LandingPage Json: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_3

    .line 881
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #invalid:Ljava/lang/String;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #msg:Ljava/lang/String;
    .restart local v5       #status:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method sendUserInfo()V
    .locals 4

    .prologue
    .line 199
    sget-object v2, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Lcom/airpush/android/Airpush$4;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$4;-><init>(Lcom/airpush/android/Airpush;)V

    .line 227
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Activitymanager"

    const-string v3, "User Info Sending Failed....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v2, "Activitymanager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAppWall()V
    .locals 6

    .prologue
    .line 710
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "enableAdPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 712
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 713
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "appwall"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 718
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->setContext(Landroid/content/Context;)V

    .line 721
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    new-instance v3, Lcom/airpush/android/UserDetails;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    new-instance v3, Lcom/airpush/android/SetPreferences;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 729
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 731
    new-instance v0, Lcom/airpush/android/Airpush$7;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$7;-><init>(Lcom/airpush/android/Airpush;)V

    .line 756
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 757
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    goto :goto_0

    .line 759
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "AirpushSDK"

    const-string v4, "Airpush SDK is disabled Please enable to recive ads."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDialogAd()V
    .locals 6

    .prologue
    .line 588
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "enableAdPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 590
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 591
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "dialogad"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 592
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->setContext(Landroid/content/Context;)V

    .line 599
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    new-instance v3, Lcom/airpush/android/UserDetails;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    new-instance v3, Lcom/airpush/android/SetPreferences;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 607
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 609
    new-instance v0, Lcom/airpush/android/Airpush$6;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$6;-><init>(Lcom/airpush/android/Airpush;)V

    .line 634
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    goto :goto_0

    .line 638
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "AirpushSDK"

    const-string v4, "Airpush SDK is disabled Please enable to recive ads."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIconAd()V
    .locals 6

    .prologue
    .line 324
    :try_start_0
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "enableAdPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 326
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 327
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "icon"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    new-instance v3, Lcom/airpush/android/UserDetails;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 336
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    new-instance v3, Lcom/airpush/android/SetPreferences;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 337
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 338
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 340
    new-instance v3, Lcom/airpush/android/IconAds;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/IconAds;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in StartIconAd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    const-string v3, "AirpushSDK"

    const-string v4, "Installing shortcut permission not found in Manifest, please add."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startLandingPageAd()V
    .locals 6

    .prologue
    .line 805
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "enableAdPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 807
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 808
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "landingpagead"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 812
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 813
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->setContext(Landroid/content/Context;)V

    .line 814
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    new-instance v3, Lcom/airpush/android/UserDetails;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    new-instance v3, Lcom/airpush/android/SetPreferences;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 821
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 823
    new-instance v0, Lcom/airpush/android/Airpush$8;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$8;-><init>(Lcom/airpush/android/Airpush;)V

    .line 848
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    goto :goto_0

    .line 851
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "AirpushSDK"

    const-string v4, "Airpush SDK is disabled Please enable to recive ads."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPushNotification(Z)V
    .locals 7
    .parameter "testMode"

    .prologue
    .line 269
    :try_start_0
    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v5, "enableAdPref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 271
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 272
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "doPush"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string v4, "testMode"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-static {p1}, Lcom/airpush/android/Util;->setTestmode(Z)V

    .line 287
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/airpush/android/Util;->setDoPush(Z)V

    .line 288
    new-instance v3, Lcom/airpush/android/PushNotification;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/PushNotification;-><init>(Landroid/content/Context;)V

    .line 290
    .local v3, pushNotification:Lcom/airpush/android/PushNotification;
    invoke-virtual {v3}, Lcom/airpush/android/PushNotification;->startAirpush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #pushNotification:Lcom/airpush/android/PushNotification;
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in Start Push Notification: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSmartWallAd()V
    .locals 6

    .prologue
    .line 362
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    const-string v4, "enableAdPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 364
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 365
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "interstitialads"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->setContext(Landroid/content/Context;)V

    .line 377
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->getDataFromManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    new-instance v3, Lcom/airpush/android/UserDetails;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    new-instance v3, Lcom/airpush/android/SetPreferences;

    sget-object v4, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 386
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 388
    new-instance v0, Lcom/airpush/android/Airpush$5;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$5;-><init>(Lcom/airpush/android/Airpush;)V

    .line 441
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    sget-object v3, Lcom/airpush/android/Airpush;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    goto :goto_0

    .line 444
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "AirpushSDK"

    const-string v4, "Airpush SDK is disabled Please enable to recive ads."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
