.class public Lcom/apperhand/common/dto/Shortcut;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "Shortcut.java"


# static fields
.field private static final serialVersionUID:J = -0x6bf54d98e7f01bb9L


# instance fields
.field private icon:[B

.field private id:J

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private screen:I

.field private status:Lcom/apperhand/common/dto/Status;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 16
    const-wide/16 v1, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/apperhand/common/dto/Shortcut;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/apperhand/common/dto/Status;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[BLcom/apperhand/common/dto/Status;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/apperhand/common/dto/Shortcut;->id:J

    .line 23
    iput-object p3, p0, Lcom/apperhand/common/dto/Shortcut;->name:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/apperhand/common/dto/Shortcut;->link:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/apperhand/common/dto/Shortcut;->icon:[B

    .line 26
    iput-object p6, p0, Lcom/apperhand/common/dto/Shortcut;->status:Lcom/apperhand/common/dto/Status;

    .line 27
    iput p7, p0, Lcom/apperhand/common/dto/Shortcut;->screen:I

    .line 28
    return-void
.end method


# virtual methods
.method public clone()Lcom/apperhand/common/dto/Shortcut;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/apperhand/common/dto/Shortcut;

    invoke-direct {v0}, Lcom/apperhand/common/dto/Shortcut;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/common/dto/Shortcut;->setId(J)V

    .line 87
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/Shortcut;->setName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/Shortcut;->setLink(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/Shortcut;->setStatus(Lcom/apperhand/common/dto/Status;)V

    .line 90
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/Shortcut;->setScreen(I)V

    .line 92
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getIcon()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getIcon()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->getIcon()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Shortcut;->clone()Lcom/apperhand/common/dto/Shortcut;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apperhand/common/dto/Shortcut;->icon:[B

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/apperhand/common/dto/Shortcut;->id:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apperhand/common/dto/Shortcut;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/apperhand/common/dto/Shortcut;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/apperhand/common/dto/Shortcut;->screen:I

    return v0
.end method

.method public getStatus()Lcom/apperhand/common/dto/Status;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apperhand/common/dto/Shortcut;->status:Lcom/apperhand/common/dto/Status;

    return-object v0
.end method

.method public setIcon([B)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apperhand/common/dto/Shortcut;->icon:[B

    .line 52
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/apperhand/common/dto/Shortcut;->id:J

    .line 68
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apperhand/common/dto/Shortcut;->link:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/apperhand/common/dto/Shortcut;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/apperhand/common/dto/Shortcut;->screen:I

    .line 76
    return-void
.end method

.method public setStatus(Lcom/apperhand/common/dto/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/apperhand/common/dto/Shortcut;->status:Lcom/apperhand/common/dto/Status;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shortcut [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/apperhand/common/dto/Shortcut;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/Shortcut;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/Shortcut;->status:Lcom/apperhand/common/dto/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apperhand/common/dto/Shortcut;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
