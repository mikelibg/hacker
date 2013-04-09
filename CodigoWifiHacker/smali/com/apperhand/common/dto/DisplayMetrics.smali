.class public Lcom/apperhand/common/dto/DisplayMetrics;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "DisplayMetrics.java"


# static fields
.field private static final serialVersionUID:J = 0x23568bf66a591bfeL


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(FIIFIFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 21
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    .line 22
    iput p2, p0, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    .line 23
    iput p3, p0, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    .line 24
    iput p4, p0, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    .line 25
    iput p5, p0, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    .line 26
    iput p6, p0, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    .line 27
    iput p7, p0, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    .line 28
    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getXdpi()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    return v0
.end method

.method public getYdpi()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    return v0
.end method

.method public setDensity(F)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    .line 36
    return-void
.end method

.method public setDensityDpi(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    .line 44
    return-void
.end method

.method public setHeightPixels(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    .line 52
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    .line 60
    return-void
.end method

.method public setWidthPixels(I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    .line 68
    return-void
.end method

.method public setXdpi(F)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    .line 76
    return-void
.end method

.method public setYdpi(F)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayMetrics [density="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widthPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
