.class public abstract Lcom/apperhand/common/dto/protocol/BaseRequest;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "BaseRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x786ed0762a271a8cL


# instance fields
.field protected abTestId:Ljava/lang/String;

.field protected applicationDetails:Lcom/apperhand/common/dto/ApplicationDetails;

.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->parameters:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public getAbTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->abTestId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationDetails()Lcom/apperhand/common/dto/ApplicationDetails;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->applicationDetails:Lcom/apperhand/common/dto/ApplicationDetails;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public setAbTestId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->abTestId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->applicationDetails:Lcom/apperhand/common/dto/ApplicationDetails;

    .line 35
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->parameters:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseRequest [applicationDetails="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->applicationDetails:Lcom/apperhand/common/dto/ApplicationDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", abTestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/BaseRequest;->abTestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
