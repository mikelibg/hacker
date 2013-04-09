.class Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;
.super Ljava/lang/Object;
.source "AdLocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/controller/AdLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdLocListener"
.end annotation


# instance fields
.field private mLocMan:Landroid/location/LocationManager;

.field mOrmmaLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

.field private mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/pad/android/iappad/controller/AdLocationController;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/controller/AdLocationController;Landroid/content/Context;ILcom/pad/android/iappad/controller/AdLocationController;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter "interval"
    .parameter "ormmaLocationController"
    .parameter "provider"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->this$0:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p4, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mOrmmaLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    .line 169
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mLocMan:Landroid/location/LocationManager;

    .line 170
    iput-object p5, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mProvider:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mOrmmaLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0, p1}, Lcom/pad/android/iappad/controller/AdLocationController;->success(Landroid/location/Location;)V

    .line 194
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mOrmmaLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->fail()V

    .line 178
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 202
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mOrmmaLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->fail()V

    .line 187
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mLocMan:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mProvider:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 206
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdLocationController$AdLocListener;->mLocMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 210
    return-void
.end method
