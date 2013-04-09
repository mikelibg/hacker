.class public Lcom/revmob/android/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# instance fields
.field private android_id:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mobile_id:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private networkConnectionType:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/revmob/android/DeviceInformation;->getLocale()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->locale:Ljava/lang/String;

    .line 34
    const-string v3, "READ_PHONE_STATE"

    invoke-direct {p0, v3, p1}, Lcom/revmob/android/DeviceInformation;->isPermissionEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 38
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;

    .line 39
    const-string v3, "RevMob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/revmob/android/DeviceInformation;->isSimulator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v0, "355031040373919"

    .line 42
    .local v0, MOBILE_ID_DEBUG_MODE:Ljava/lang/String;
    const-string v3, "355031040373919"

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 48
    .end local v0           #MOBILE_ID_DEBUG_MODE:Ljava/lang/String;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    const-string v3, "ACCESS_WIFI_STATE"

    invoke-direct {p0, v3, p1}, Lcom/revmob/android/DeviceInformation;->isPermissionEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :try_start_1
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->macAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 56
    :cond_1
    :goto_1
    const-string v3, "ACCESS_NETWORK_STATE"

    invoke-direct {p0, v3, p1}, Lcom/revmob/android/DeviceInformation;->isPermissionEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    :try_start_2
    invoke-direct {p0, p1}, Lcom/revmob/android/DeviceInformation;->networkConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->networkConnectionType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :cond_2
    :goto_2
    const-string v3, "GET_ACCOUNTS"

    invoke-direct {p0, v3, p1}, Lcom/revmob/android/DeviceInformation;->isPermissionEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    :try_start_3
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 66
    .local v1, email:Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    iput-object v1, p0, Lcom/revmob/android/DeviceInformation;->email:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 74
    .end local v1           #email:Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->android_id:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 78
    :goto_4
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->model:Ljava/lang/String;

    .line 79
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->manufacturer:Ljava/lang/String;

    .line 80
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p0, Lcom/revmob/android/DeviceInformation;->osVersion:Ljava/lang/String;

    .line 81
    return-void

    .line 75
    :catch_0
    move-exception v3

    goto :goto_4

    .line 69
    :catch_1
    move-exception v3

    goto :goto_3

    .line 59
    :catch_2
    move-exception v3

    goto :goto_2

    .line 52
    :catch_3
    move-exception v3

    goto :goto_1

    .line 44
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method private getIdentitiesJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v0, identities:Lorg/json/JSONObject;
    const-string v1, "email"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->email:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "mac_address"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "mobile_id"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "android_id"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->android_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isConnectedTo(Landroid/net/NetworkInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPermissionEnabled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "permission"
    .parameter "context"

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, permissionString:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, res:I
    if-nez v1, :cond_0

    .line 159
    const/4 v2, 0x1

    .line 161
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimulator()Z
    .locals 3

    .prologue
    .line 84
    const-string v0, "RevMob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private networkConnection(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, manager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 176
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/revmob/android/DeviceInformation;->isConnectedTo(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v1, "wwan"

    goto :goto_0

    .line 178
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/revmob/android/DeviceInformation;->isConnectedTo(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v1, "wifi"

    goto :goto_0
.end method

.method private putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "target"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "identities"

    invoke-direct {p0}, Lcom/revmob/android/DeviceInformation;->getIdentitiesJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    .local v0, device:Lorg/json/JSONObject;
    const-string v1, "model"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->model:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "os_version"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "connection_speed"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->networkConnectionType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "locale"

    iget-object v2, p0, Lcom/revmob/android/DeviceInformation;->locale:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/android/DeviceInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->networkConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->macAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->mobile_id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/android/DeviceInformation;->android_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
