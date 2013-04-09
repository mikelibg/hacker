.class Lcom/airpush/android/IconAds;
.super Ljava/lang/Object;
.source "IconAds.java"

# interfaces
.implements Lcom/airpush/android/IConstants;


# instance fields
.field private addIntent:Landroid/content/Intent;

.field private bmpicon:Landroid/graphics/Bitmap;

.field private campaignArr:[Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private creativeArr:[Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field getIconImageListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private iconImage:Ljava/lang/String;

.field private iconImageArr:[Ljava/lang/String;

.field private iconText:Ljava/lang/String;

.field private iconTextArr:[Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private iconUrlArr:[Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field private post:Lorg/json/JSONObject;

.field private sendInstall:Z

.field sendInstallListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/airpush/android/IconAds;->campaignArr:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/airpush/android/IconAds;->creativeArr:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airpush/android/IconAds;->sendInstall:Z

    .line 37
    new-instance v0, Lcom/airpush/android/IconAds$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/IconAds$1;-><init>(Lcom/airpush/android/IconAds;)V

    iput-object v0, p0, Lcom/airpush/android/IconAds;->getIconImageListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 54
    new-instance v0, Lcom/airpush/android/IconAds$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/IconAds$2;-><init>(Lcom/airpush/android/IconAds;)V

    iput-object v0, p0, Lcom/airpush/android/IconAds;->sendInstallListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 84
    iput-object p1, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/airpush/android/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/airpush/android/IconAds;->getShortcutData()V

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/IconAds;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airpush/android/IconAds;->bmpicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$1(Lcom/airpush/android/IconAds;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airpush/android/IconAds;->iconImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/airpush/android/IconAds;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/airpush/android/IconAds;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airpush/android/IconAds;->post:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$4(Lcom/airpush/android/IconAds;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/airpush/android/IconAds;->parseIconJson(Ljava/lang/String;)V

    return-void
.end method

.method private getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 241
    :try_start_0
    const-string v1, "campaignid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/IconAds;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    iget-object v1, p0, Lcom/airpush/android/IconAds;->campaignId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 251
    :try_start_0
    const-string v1, "creativeid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/IconAds;->creativeId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    iget-object v1, p0, Lcom/airpush/android/IconAds;->creativeId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 223
    :try_start_0
    const-string v1, "iconimage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/IconAds;->iconImage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    iget-object v1, p0, Lcom/airpush/android/IconAds;->iconImage:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 232
    :try_start_0
    const-string v1, "icontext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/IconAds;->iconText:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    iget-object v1, p0, Lcom/airpush/android/IconAds;->iconText:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 261
    :try_start_0
    const-string v1, "iconurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v1, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getShortcutData()V
    .locals 6

    .prologue
    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 142
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 143
    .local v3, width:I
    new-instance v0, Lcom/airpush/android/IconAds$3;

    invoke-direct {v0, p0, v3}, Lcom/airpush/android/IconAds$3;-><init>(Lcom/airpush/android/IconAds;I)V

    .line 165
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    .end local v1           #display:Landroid/view/Display;
    .end local v3           #width:I
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geticd err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 169
    const-string v4, "IconAds Problem in getshortcutdata"

    invoke-static {v4}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeShortcut()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.launcher.permission.INSTALL_SHORTCUT"

    iget-object v2, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "AirpushSDK"

    const-string v1, "Installing shortcut permission not found in Manifest, please add."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized parseIconJson(Ljava/lang/String;)V
    .locals 6
    .parameter "jsonString"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    const-string v3, "campaignid"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 180
    .local v2, len:I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconImageArr:[Ljava/lang/String;

    .line 181
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconUrlArr:[Ljava/lang/String;

    .line 182
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconTextArr:[Ljava/lang/String;

    .line 183
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/airpush/android/IconAds;->campaignArr:[Ljava/lang/String;

    .line 184
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/airpush/android/IconAds;->creativeArr:[Ljava/lang/String;

    .line 185
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/airpush/android/IconAds;->post:Lorg/json/JSONObject;

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 210
    iget-boolean v3, p0, Lcom/airpush/android/IconAds;->sendInstall:Z

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/airpush/android/IconAds;->sendInstallListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v3}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0           #i:I
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #len:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 187
    .restart local v0       #i:I
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #len:I
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    .line 189
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconImageArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/airpush/android/IconAds;->getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 190
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconTextArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/airpush/android/IconAds;->getIconText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 191
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconUrlArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/airpush/android/IconAds;->getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 192
    iget-object v3, p0, Lcom/airpush/android/IconAds;->campaignArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/airpush/android/IconAds;->getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 193
    iget-object v3, p0, Lcom/airpush/android/IconAds;->creativeArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/airpush/android/IconAds;->getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 194
    iget-object v3, p0, Lcom/airpush/android/IconAds;->post:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/airpush/android/IconAds;->campaignArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/airpush/android/IconAds;->creativeArr:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconImageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "Not Found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconTextArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "Not Found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconUrlArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "Not Found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/airpush/android/IconAds;->sendInstall:Z

    .line 186
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconImageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconImage:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconTextArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconText:Ljava/lang/String;

    .line 203
    iget-object v3, p0, Lcom/airpush/android/IconAds;->iconUrlArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lcom/airpush/android/IconAds;->getIconImageListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v3}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 214
    .end local v0           #i:I
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #len:I
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 176
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method createShortcut()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x400

    const/4 v5, 0x0

    .line 94
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, shortcutIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/airpush/android/IconAds;->iconText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.ICON"

    iget-object v4, p0, Lcom/airpush/android/IconAds;->bmpicon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0}, Lcom/airpush/android/IconAds;->makeShortcut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 106
    .end local v1           #shortcutIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;

    iput-object v2, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&model=log&action=seticonclicktracking&APIKEY=airpushsearch&event=iClick&campaignid=0&creativeid=0"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1       #shortcutIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/airpush/android/IconAds;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    const-string v4, "Search"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "duplicate"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/airpush/android/IconAds;->addIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.ICON"

    iget-object v4, p0, Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;

    const v5, 0x108004f

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/airpush/android/IconAds;->makeShortcut()V

    goto :goto_0
.end method
