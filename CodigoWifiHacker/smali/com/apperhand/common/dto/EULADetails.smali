.class public Lcom/apperhand/common/dto/EULADetails;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "EULADetails.java"


# static fields
.field private static final serialVersionUID:J = 0x5350ad53d68b0ccdL


# instance fields
.field private body:[B

.field private chain:Ljava/lang/String;

.field private footer:[B

.field private step:Ljava/lang/String;

.field private template:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->body:[B

    return-object v0
.end method

.method public getChain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->chain:Ljava/lang/String;

    return-object v0
.end method

.method public getFooter()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->footer:[B

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->template:Ljava/lang/String;

    return-object v0
.end method

.method public setBody([B)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/apperhand/common/dto/EULADetails;->body:[B

    .line 31
    return-void
.end method

.method public setChain(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/apperhand/common/dto/EULADetails;->chain:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFooter([B)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/apperhand/common/dto/EULADetails;->footer:[B

    .line 23
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/apperhand/common/dto/EULADetails;->step:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/apperhand/common/dto/EULADetails;->template:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EULADetails [chain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/EULADetails;->chain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/EULADetails;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/EULADetails;->step:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->body:[B

    if-eqz v0, :cond_0

    const-string v0, "not null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", footer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/apperhand/common/dto/EULADetails;->footer:[B

    if-eqz v0, :cond_1

    const-string v0, "not null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method
