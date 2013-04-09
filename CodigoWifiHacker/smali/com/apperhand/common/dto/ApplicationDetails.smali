.class public Lcom/apperhand/common/dto/ApplicationDetails;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "ApplicationDetails.java"


# static fields
.field private static final serialVersionUID:J = 0x567a7e76729ef057L


# instance fields
.field private abTestId:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private build:Lcom/apperhand/common/dto/Build;

.field private developerId:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private displayMetrics:Lcom/apperhand/common/dto/DisplayMetrics;

.field private locale:Ljava/util/Locale;

.field private packageId:Ljava/lang/String;

.field private protocolVersion:Ljava/lang/String;

.field private sourceIp:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getAbTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->abTestId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuild()Lcom/apperhand/common/dto/Build;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->build:Lcom/apperhand/common/dto/Build;

    return-object v0
.end method

.method public getDeveloperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->developerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMetrics()Lcom/apperhand/common/dto/DisplayMetrics;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->displayMetrics:Lcom/apperhand/common/dto/DisplayMetrics;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->sourceIp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apperhand/common/dto/ApplicationDetails;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setAbTestId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->abTestId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->androidId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->applicationId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBuild(Lcom/apperhand/common/dto/Build;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->build:Lcom/apperhand/common/dto/Build;

    .line 92
    return-void
.end method

.method public setDeveloperId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->developerId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->deviceId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDisplayMetrics(Lcom/apperhand/common/dto/DisplayMetrics;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->displayMetrics:Lcom/apperhand/common/dto/DisplayMetrics;

    .line 84
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->locale:Ljava/util/Locale;

    .line 76
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->packageId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->protocolVersion:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSourceIp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->sourceIp:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->userAgent:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationDetails [applicationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", developerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->developerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->sourceIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocolVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->displayMetrics:Lcom/apperhand/common/dto/DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", build="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->build:Lcom/apperhand/common/dto/Build;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/ApplicationDetails;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
