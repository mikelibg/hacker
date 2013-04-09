.class public abstract Lcom/airpush/android/Extras;
.super Ljava/lang/Object;
.source "Extras.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 13
    const-string v2, ""

    .line 15
    .local v2, email:Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 16
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 17
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v2, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "AirpushSDK"

    const-string v4, "No email account found."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
