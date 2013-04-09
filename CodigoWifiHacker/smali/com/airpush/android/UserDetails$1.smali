.class Lcom/airpush/android/UserDetails$1;
.super Ljava/lang/Object;
.source "UserDetails.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/UserDetails;->getLocation()Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/UserDetails;

.field private final synthetic val$finalizedLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/airpush/android/UserDetails;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/UserDetails$1;->this$0:Lcom/airpush/android/UserDetails;

    iput-object p2, p0, Lcom/airpush/android/UserDetails$1;->val$finalizedLocationManager:Landroid/location/LocationManager;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "loc"

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/airpush/android/Util;->setLastLocationTime(J)V

    .line 164
    iget-object v0, p0, Lcom/airpush/android/UserDetails$1;->this$0:Lcom/airpush/android/UserDetails;

    #setter for: Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/airpush/android/UserDetails;->access$0(Lcom/airpush/android/UserDetails;Landroid/location/Location;)V

    .line 166
    iget-object v0, p0, Lcom/airpush/android/UserDetails$1;->val$finalizedLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 167
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 171
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 175
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 179
    return-void
.end method
