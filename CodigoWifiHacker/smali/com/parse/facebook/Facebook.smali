.class public Lcom/parse/facebook/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/facebook/Facebook$ServiceListener;,
        Lcom/parse/facebook/Facebook$DialogListener;,
        Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field public static final FORCE_DIALOG_AUTH:I = -0x1

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private final REFRESH_TOKEN_BARRIER:J

.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAuthActivity:Landroid/app/Activity;

.field private mAuthActivityCode:I

.field private mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

.field private mAuthPermissions:[Ljava/lang/String;

.field private mLastAccessUpdate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/parse/facebook/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    .line 74
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/parse/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 76
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/parse/facebook/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "appId"

    .prologue
    const-wide/16 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 80
    iput-wide v1, p0, Lcom/parse/facebook/Facebook;->mLastAccessUpdate:J

    .line 81
    iput-wide v1, p0, Lcom/parse/facebook/Facebook;->mAccessExpires:J

    .line 91
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/parse/facebook/Facebook;->REFRESH_TOKEN_BARRIER:J

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/parse/facebook/Facebook;)Lcom/parse/facebook/Facebook$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/facebook/Facebook;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parse/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method private startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "permissions"

    .prologue
    .line 339
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, params:Landroid/os/Bundle;
    array-length v1, p2

    if-lez v1, :cond_0

    .line 341
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 344
    const-string v1, "oauth"

    new-instance v2, Lcom/parse/facebook/Facebook$1;

    invoke-direct {v2, p0}, Lcom/parse/facebook/Facebook$1;-><init>(Lcom/parse/facebook/Facebook;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/parse/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/Facebook$DialogListener;)V

    .line 377
    return-void
.end method

.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 5
    .parameter "activity"
    .parameter "applicationId"
    .parameter "permissions"
    .parameter "activityCode"

    .prologue
    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, didSucceed:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "client_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    array-length v3, p3

    if-lez v3, :cond_0

    .line 234
    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/parse/facebook/Facebook;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    const/4 v3, 0x0

    .line 253
    :goto_0
    return v3

    .line 244
    :cond_1
    iput-object p1, p0, Lcom/parse/facebook/Facebook;->mAuthActivity:Landroid/app/Activity;

    .line 245
    iput-object p3, p0, Lcom/parse/facebook/Facebook;->mAuthPermissions:[Ljava/lang/String;

    .line 246
    iput p4, p0, Lcom/parse/facebook/Facebook;->mAuthActivityCode:I

    .line 248
    :try_start_0
    invoke-virtual {p1, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v0

    .line 253
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 268
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/parse/facebook/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 318
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 319
    .local v5, signature:Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 320
    const/4 v6, 0x1

    .line 323
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #signature:Landroid/content/pm/Signature;
    :cond_0
    :goto_1
    return v6

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 318
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #signature:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 290
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 294
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/parse/facebook/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/parse/facebook/Facebook$DialogListener;)V
    .locals 2
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x7f99

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/parse/facebook/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/parse/facebook/Facebook$DialogListener;)V

    .line 117
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/parse/facebook/Facebook$DialogListener;)V
    .locals 2
    .parameter "activity"
    .parameter "permissions"
    .parameter "activityCode"
    .parameter "listener"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, singleSignOnStarted:Z
    iput-object p4, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    .line 201
    if-ltz p3, :cond_0

    .line 202
    iget-object v1, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/parse/facebook/Facebook;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    .line 206
    :cond_0
    if-nez v0, :cond_1

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/parse/facebook/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/parse/facebook/Facebook$DialogListener;)V
    .locals 1
    .parameter "activity"
    .parameter "permissions"
    .parameter "listener"

    .prologue
    .line 126
    const/16 v0, 0x7f99

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/parse/facebook/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/parse/facebook/Facebook$DialogListener;)V

    .line 127
    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 393
    iget v2, p0, Lcom/parse/facebook/Facebook;->mAuthActivityCode:I

    if-ne p1, v2, :cond_2

    .line 396
    if-ne p2, v6, :cond_9

    .line 399
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, error:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 401
    const-string v2, "error_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_0
    if-eqz v1, :cond_7

    .line 406
    const-string v2, "service_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AndroidAuthKillSwitchException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    :cond_1
    const-string v2, "Facebook-authorize"

    const-string v3, "Hosted auth currently disabled. Retrying dialog auth..."

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/parse/facebook/Facebook;->mAuthPermissions:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/parse/facebook/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 461
    .end local v1           #error:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 411
    .restart local v1       #error:Ljava/lang/String;
    :cond_3
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 413
    :cond_4
    const-string v2, "Facebook-authorize"

    const-string v3, "Login canceled by user."

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    invoke-interface {v2}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 416
    :cond_5
    const-string v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    :cond_6
    const-string v2, "Facebook-authorize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    new-instance v3, Lcom/parse/facebook/FacebookError;

    invoke-direct {v3, v1}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/parse/facebook/Facebook$DialogListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    goto :goto_0

    .line 427
    .end local v0           #description:Ljava/lang/String;
    :cond_7
    const-string v2, "access_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 428
    const-string v2, "expires_in"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/facebook/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 430
    const-string v2, "Facebook-authorize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login Success! access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessExpires()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/parse/facebook/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 436
    :cond_8
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    new-instance v3, Lcom/parse/facebook/FacebookError;

    const-string v4, "Failed to receive access token."

    invoke-direct {v3, v4}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/parse/facebook/Facebook$DialogListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    goto/16 :goto_0

    .line 442
    .end local v1           #error:Ljava/lang/String;
    :cond_9
    if-nez p2, :cond_2

    .line 445
    if-eqz p3, :cond_a

    .line 446
    const-string v2, "Facebook-authorize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    new-instance v3, Lcom/parse/facebook/DialogError;

    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "failing_url"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/parse/facebook/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/parse/facebook/Facebook$DialogListener;->onError(Lcom/parse/facebook/DialogError;)V

    goto/16 :goto_0

    .line 456
    :cond_a
    const-string v2, "Facebook-authorize"

    const-string v3, "Login canceled by user."

    invoke-static {v2, v3}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/parse/facebook/Facebook;->mAuthDialogListener:Lcom/parse/facebook/Facebook$DialogListener;

    invoke-interface {v2}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    goto/16 :goto_0
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/Facebook$DialogListener;)V
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 792
    if-nez p4, :cond_0

    .line 795
    new-instance p4, Lcom/parse/facebook/Facebook$2;

    .end local p4
    invoke-direct {p4, p0}, Lcom/parse/facebook/Facebook$2;-><init>(Lcom/parse/facebook/Facebook;)V

    .line 807
    .restart local p4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/parse/facebook/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, endpoint:Ljava/lang/String;
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v2, "redirect_uri"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v2, "oauth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    const-string v2, "type"

    const-string v3, "user_agent"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :goto_0
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/parse/facebook/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, url:Ljava/lang/String;
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 824
    const-string v2, "Error"

    const-string v3, "Application requires permission to access the Internet"

    invoke-static {p1, v2, v3}, Lcom/parse/facebook/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :goto_1
    return-void

    .line 815
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .restart local v1       #url:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/parse/facebook/FbDialog;

    invoke-direct {v2, p1, v1, p4}, Lcom/parse/facebook/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/parse/facebook/Facebook$DialogListener;)V

    invoke-virtual {v2}, Lcom/parse/facebook/FbDialog;->show()V

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/parse/facebook/Facebook$DialogListener;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/parse/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/Facebook$DialogListener;)V

    .line 771
    return-void
.end method

.method public extendAccessToken(Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)Z
    .locals 3
    .parameter "context"
    .parameter "serviceListener"

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/parse/facebook/Facebook;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const/4 v1, 0x0

    .line 495
    :goto_0
    return v1

    :cond_0
    new-instance v1, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;-><init>(Lcom/parse/facebook/Facebook;Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)Z
    .locals 1
    .parameter "context"
    .parameter "serviceListener"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/parse/facebook/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)Z

    move-result v0

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessExpires()J
    .locals 2

    .prologue
    .line 857
    iget-wide v0, p0, Lcom/parse/facebook/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/parse/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {p1}, Lcom/parse/facebook/Util;->clearCookies(Landroid/content/Context;)V

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "auth.expireSession"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, v0}, Lcom/parse/facebook/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, response:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 627
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V

    .line 628
    return-object v1
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/parse/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "graphPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "graphPath"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/parse/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "graphPath"
    .parameter "params"
    .parameter "httpMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/parse/facebook/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, url:Ljava/lang/String;
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/parse/facebook/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 748
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/parse/facebook/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 877
    iput-wide p1, p0, Lcom/parse/facebook/Facebook;->mAccessExpires:J

    .line 878
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 8
    .parameter "expiresIn"

    .prologue
    .line 888
    if-eqz p1, :cond_0

    .line 889
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    .line 892
    .local v0, expires:J
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V

    .line 894
    .end local v0           #expires:J
    :cond_0
    return-void

    .line 889
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/parse/facebook/Facebook;->mAccessToken:Ljava/lang/String;

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/facebook/Facebook;->mLastAccessUpdate:J

    .line 868
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/parse/facebook/Facebook;->mAppId:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public shouldExtendAccessToken()Z
    .locals 4

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/parse/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/parse/facebook/Facebook;->mLastAccessUpdate:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
