.class public Lcom/apperhand/common/dto/BaseBrowserItem;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "BaseBrowserItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x42201ea375644c90L


# instance fields
.field private favicon:[B

.field private id:J

.field private status:Lcom/apperhand/common/dto/Status;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[BLcom/apperhand/common/dto/Status;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->id:J

    .line 21
    iput-object p3, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->title:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->url:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->favicon:[B

    .line 24
    iput-object p6, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->status:Lcom/apperhand/common/dto/Status;

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Lcom/apperhand/common/dto/BaseBrowserItem;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v0, Lcom/apperhand/common/dto/BaseBrowserItem;

    invoke-direct {v0}, Lcom/apperhand/common/dto/BaseBrowserItem;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/common/dto/BaseBrowserItem;->setId(J)V

    .line 71
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/BaseBrowserItem;->setTitle(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/BaseBrowserItem;->setUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/BaseBrowserItem;->setStatus(Lcom/apperhand/common/dto/Status;)V

    .line 75
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/BaseBrowserItem;->setFavicon([B)V

    .line 77
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :cond_0
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
    .line 3
    invoke-virtual {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->clone()Lcom/apperhand/common/dto/BaseBrowserItem;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->favicon:[B

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->id:J

    return-wide v0
.end method

.method public getStatus()Lcom/apperhand/common/dto/Status;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->status:Lcom/apperhand/common/dto/Status;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFavicon([B)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->favicon:[B

    .line 57
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->id:J

    .line 33
    return-void
.end method

.method public setStatus(Lcom/apperhand/common/dto/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->status:Lcom/apperhand/common/dto/Status;

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->title:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->url:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseBrowserItem [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/BaseBrowserItem;->status:Lcom/apperhand/common/dto/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
