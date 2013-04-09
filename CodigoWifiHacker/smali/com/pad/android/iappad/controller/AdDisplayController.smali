.class public Lcom/pad/android/iappad/controller/AdDisplayController;
.super Lcom/pad/android/iappad/AdController;
.source "AdDisplayController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdOrmmaDisplayController"


# instance fields
.field private bMaxSizeSet:Z

.field private mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

.field private mDensity:F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 3
    .parameter "adView"
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/pad/android/iappad/AdController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->bMaxSizeSet:Z

    .line 31
    iput v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxWidth:I

    .line 32
    iput v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxHeight:I

    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    .line 49
    return-void
.end method

.method private getDeviceDimensions(Lcom/pad/android/iappad/AdController$Dimensions;)Lcom/pad/android/iappad/AdController$Dimensions;
    .locals 4
    .parameter "d"

    .prologue
    .line 153
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    .line 154
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 155
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    .line 156
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    .line 157
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    if-gez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getHeight()I

    move-result v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 159
    :cond_0
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    if-gez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getWidth()I

    move-result v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    .line 161
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 162
    .local v0, loc:[I
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2, v0}, Lcom/pad/android/richmedia/view/AdView;->getLocationInWindow([I)V

    .line 163
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    if-gez v2, :cond_2

    .line 164
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    .line 165
    :cond_2
    iget v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    if-gez v2, :cond_3

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, topStuff:I
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    .line 169
    .end local v1           #topStuff:I
    :cond_3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->close()V

    .line 208
    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"top\" :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"left\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"bottom\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"right\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "dimensions"
    .parameter "URL"
    .parameter "properties"

    .prologue
    .line 180
    const-string v2, "AdOrmmaDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expand: dimensions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/pad/android/iappad/AdController$Dimensions;

    invoke-static {v2, v3}, Lcom/pad/android/iappad/controller/AdDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pad/android/iappad/AdController$Dimensions;

    .line 183
    .local v0, d:Lcom/pad/android/iappad/AdController$Dimensions;
    iget-object v3, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-direct {p0, v0}, Lcom/pad/android/iappad/controller/AdDisplayController;->getDeviceDimensions(Lcom/pad/android/iappad/AdController$Dimensions;)Lcom/pad/android/iappad/AdController$Dimensions;

    move-result-object v4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/pad/android/iappad/AdController$Properties;

    invoke-static {v2, v5}, Lcom/pad/android/iappad/controller/AdDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pad/android/iappad/AdController$Properties;

    invoke-virtual {v3, v4, p2, v2}, Lcom/pad/android/richmedia/view/AdView;->expand(Lcom/pad/android/iappad/AdController$Dimensions;Ljava/lang/String;Lcom/pad/android/iappad/AdController$Properties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 200
    .end local v0           #d:Lcom/pad/android/iappad/AdController$Dimensions;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 198
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->bMaxSizeSet:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/pad/android/iappad/controller/AdDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 5

    .prologue
    .line 253
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 254
    .local v0, orientation:I
    const/4 v1, -0x1

    .line 255
    .local v1, ret:I
    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    const-string v2, "AdOrmmaDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOrientation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v1

    .line 257
    :pswitch_0
    const/4 v1, 0x0

    .line 258
    goto :goto_0

    .line 261
    :pswitch_1
    const/16 v1, 0x5a

    .line 262
    goto :goto_0

    .line 265
    :pswitch_2
    const/16 v1, 0xb4

    .line 266
    goto :goto_0

    .line 269
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 283
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->hide()V

    .line 216
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 339
    const-string v0, "AdOrmmaDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, script:Ljava/lang/String;
    const-string v1, "AdOrmmaDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 3
    .parameter "url"
    .parameter "back"
    .parameter "forward"
    .parameter "refresh"

    .prologue
    .line 75
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pad/android/richmedia/view/AdView;->open(Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "fullscreen"

    .prologue
    .line 90
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openMap: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0, p1, p2}, Lcom/pad/android/richmedia/view/AdView;->openMap(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "position"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 106
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playAudio: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "Invalid url"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/pad/android/richmedia/view/AdView;->playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "url"
    .parameter "audioMuted"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "position"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 128
    const-string v1, "AdOrmmaDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playVideo: url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, d:Lcom/pad/android/iappad/AdController$Dimensions;
    const-string v1, "ODCVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video URL - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    aget v1, p6, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v7, Lcom/pad/android/iappad/AdController$Dimensions;

    .end local v7           #d:Lcom/pad/android/iappad/AdController$Dimensions;
    invoke-direct {v7}, Lcom/pad/android/iappad/AdController$Dimensions;-><init>()V

    .line 134
    .restart local v7       #d:Lcom/pad/android/iappad/AdController$Dimensions;
    const/4 v1, 0x0

    aget v1, p6, v1

    iput v1, v7, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    .line 135
    const/4 v1, 0x1

    aget v1, p6, v1

    iput v1, v7, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    .line 136
    const/4 v1, 0x2

    aget v1, p6, v1

    iput v1, v7, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    .line 137
    const/4 v1, 0x3

    aget v1, p6, v1

    iput v1, v7, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 138
    invoke-direct {p0, v7}, Lcom/pad/android/iappad/controller/AdDisplayController;->getDeviceDimensions(Lcom/pad/android/iappad/AdController$Dimensions;)Lcom/pad/android/iappad/AdController$Dimensions;

    move-result-object v7

    .line 140
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v2, "Invalid url"

    const-string v3, "playVideo"

    invoke-virtual {v1, v2, v3}, Lcom/pad/android/richmedia/view/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/pad/android/richmedia/view/AdView;->playVideo(Ljava/lang/String;ZZZZLcom/pad/android/iappad/AdController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    const-string v0, "AdOrmmaDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resize: width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxHeight:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxWidth:I

    if-le p1, v0, :cond_2

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "Maximum size exceeded"

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    iget v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mDensity:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView;->resize(II)V

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->bMaxSizeSet:Z

    .line 318
    iput p1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxWidth:I

    .line 319
    iput p2, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mMaxHeight:I

    .line 320
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "AdOrmmaDisplayController"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView;->show()V

    .line 224
    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;-><init>(Lcom/pad/android/iappad/controller/AdDisplayController;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/pad/android/iappad/controller/AdDisplayController;->stopConfigurationListener()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    .line 349
    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdDisplayController;->mBroadCastReceiver:Lcom/pad/android/util/AdConfigurationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method
