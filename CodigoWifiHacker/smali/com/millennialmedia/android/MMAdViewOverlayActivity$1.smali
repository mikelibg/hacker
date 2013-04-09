.class Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;
.super Ljava/lang/Object;
.source "MMAdViewOverlayActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewOverlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentTime:J

.field private force:F

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private prevShakeTime:J

.field private prevTime:J

.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewOverlayActivity;

.field private timeDifference:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewOverlayActivity;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 207
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->this$0:Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->x:F

    .line 209
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->y:F

    .line 210
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->z:F

    .line 211
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastX:F

    .line 212
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastY:F

    .line 213
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastZ:F

    .line 214
    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->force:F

    .line 215
    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    .line 216
    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevTime:J

    .line 217
    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->timeDifference:J

    .line 218
    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevShakeTime:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 257
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 226
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    .line 229
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->x:F

    .line 230
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->y:F

    .line 231
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->z:F

    .line 233
    iget-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->timeDifference:J

    .line 234
    iget-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->timeDifference:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->this$0:Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->x:F

    iget v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->y:F

    iget v3, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->z:F

    #calls: Lcom/millennialmedia/android/MMAdViewOverlayActivity;->didAccelerate(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->access$000(Lcom/millennialmedia/android/MMAdViewOverlayActivity;FFF)V

    .line 237
    iget v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->x:F

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastZ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->timeDifference:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->force:F

    .line 238
    iget v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->force:F

    const v1, 0x3e4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 240
    iget-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevShakeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->this$0:Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    iget v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->force:F

    #calls: Lcom/millennialmedia/android/MMAdViewOverlayActivity;->didShake(F)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->access$100(Lcom/millennialmedia/android/MMAdViewOverlayActivity;F)V

    .line 245
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevShakeTime:J

    .line 247
    :cond_1
    iget v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->x:F

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastX:F

    .line 248
    iget v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->y:F

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastY:F

    .line 249
    iget v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->z:F

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->lastZ:F

    .line 250
    iget-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->currentTime:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;->prevTime:J

    .line 252
    :cond_2
    return-void
.end method
