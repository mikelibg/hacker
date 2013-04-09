.class public Lcom/apperhand/common/dto/AssetInformation;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "AssetInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/common/dto/AssetInformation$State;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3490e15369d35cedL


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private state:Lcom/apperhand/common/dto/AssetInformation$State;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/apperhand/common/dto/AssetInformation;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/apperhand/common/dto/AssetInformation;->position:I

    return v0
.end method

.method public getState()Lcom/apperhand/common/dto/AssetInformation$State;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apperhand/common/dto/AssetInformation;->state:Lcom/apperhand/common/dto/AssetInformation$State;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apperhand/common/dto/AssetInformation;->url:Ljava/lang/String;

    return-object v0
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/apperhand/common/dto/AssetInformation;->parameters:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/apperhand/common/dto/AssetInformation;->position:I

    .line 43
    return-void
.end method

.method public setState(Lcom/apperhand/common/dto/AssetInformation$State;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/apperhand/common/dto/AssetInformation;->state:Lcom/apperhand/common/dto/AssetInformation$State;

    .line 51
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/apperhand/common/dto/AssetInformation;->url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssetInformation [url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/AssetInformation;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/AssetInformation;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/AssetInformation;->state:Lcom/apperhand/common/dto/AssetInformation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/AssetInformation;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
