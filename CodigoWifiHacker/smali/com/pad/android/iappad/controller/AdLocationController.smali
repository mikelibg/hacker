.class public Lcom/pad/android/iappad/controller/AdLocationController;
.super Lcom/pad/android/iappad/AdController;
.source "AdLocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdLocationController"


# instance fields
.field final INTERVAL:I

.field private allowLocationServices:Z

.field private hasPermission:Z

.field private mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

.field private mLocListenerCount:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 6
    .parameter "adView"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3e8

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/pad/android/iappad/AdController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lcom/pad/android/iappad/controller/AdLocationController;->hasPermission:Z

    .line 26
    iput v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->INTERVAL:I

    .line 30
    iput-boolean v1, p0, Lcom/pad/android/iappad/controller/AdLocationController;->allowLocationServices:Z

    .line 41
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocationManager:Landroid/location/LocationManager;

    .line 42
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    const/16 v3, 0x3e8

    const-string v5, "gps"

    move-object v1, p0

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;-><init>(Lcom/pad/android/iappad/controller/AdLocationController;Landroid/content/Context;ILcom/pad/android/iappad/controller/AdLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    const/16 v3, 0x3e8

    const-string v5, "network"

    move-object v1, p0

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;-><init>(Lcom/pad/android/iappad/controller/AdLocationController;Landroid/content/Context;ILcom/pad/android/iappad/controller/AdLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    .line 46
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->hasPermission:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static formatLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .parameter "loc"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ lat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/pad/android/iappad/controller/AdLocationController;->allowLocationServices:Z

    .line 57
    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->allowLocationServices:Z

    return v0
.end method

.method public fail()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "AdLocationController"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "window.ormmaview.fireErrorEvent(\"Location cannot be identified\", \"AdOrmmaLocationController\")"

    invoke-virtual {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v3, "AdLocationController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLocation: hasPermission: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/pad/android/iappad/controller/AdLocationController;->hasPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v3, p0, Lcom/pad/android/iappad/controller/AdLocationController;->hasPermission:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 94
    :goto_0
    return-object v3

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, provider:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, lastKnown:Landroid/location/Location;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    :goto_1
    const-string v3, "AdLocationController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLocation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v0, :cond_3

    .line 92
    invoke-static {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_2
    iget-object v5, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 94
    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->start()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->start()V

    .line 108
    :cond_1
    iget v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    .line 109
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    .line 116
    iget v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mNetwork:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->stop()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mGps:Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->stop()V

    .line 123
    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 3
    .parameter "loc"

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pad/android/iappad/controller/AdLocationController;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, script:Ljava/lang/String;
    const-string v1, "AdLocationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdLocationController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 134
    return-void
.end method
