.class public Lcom/apperhand/common/dto/EULAAcceptDetails;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "EULAAcceptDetails.java"


# static fields
.field private static final serialVersionUID:J = -0x62e26853953d8e39L


# instance fields
.field private accepted:Z

.field private button:Ljava/lang/String;

.field private chain:Ljava/lang/String;

.field private counter:J

.field private globalCounter:J

.field private step:Ljava/lang/String;

.field private template:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->button:Ljava/lang/String;

    return-object v0
.end method

.method public getChain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->chain:Ljava/lang/String;

    return-object v0
.end method

.method public getCounter()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->counter:J

    return-wide v0
.end method

.method public getGlobalCounter()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->globalCounter:J

    return-wide v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->template:Ljava/lang/String;

    return-object v0
.end method

.method public isAccepted()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->accepted:Z

    return v0
.end method

.method public setAccepted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->accepted:Z

    .line 42
    return-void
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->button:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setChain(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->chain:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCounter(J)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->counter:J

    .line 50
    return-void
.end method

.method public setGlobalCounter(J)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->globalCounter:J

    .line 58
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->step:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->template:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EULAAcceptDetails [chain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->chain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->accepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->counter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", globalCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->globalCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/EULAAcceptDetails;->step:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
