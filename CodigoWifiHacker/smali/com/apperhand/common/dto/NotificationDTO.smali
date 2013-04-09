.class public Lcom/apperhand/common/dto/NotificationDTO;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "NotificationDTO.java"


# static fields
.field private static final serialVersionUID:J = -0x6e77b189ec2151dfL


# instance fields
.field private bodyText:Ljava/lang/String;

.field private icon:[B

.field private link:Ljava/lang/String;

.field private tickerText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 15
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/apperhand/common/dto/NotificationDTO;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 21
    iput-object p3, p0, Lcom/apperhand/common/dto/NotificationDTO;->tickerText:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/apperhand/common/dto/NotificationDTO;->title:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/apperhand/common/dto/NotificationDTO;->bodyText:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/apperhand/common/dto/NotificationDTO;->link:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/apperhand/common/dto/NotificationDTO;->icon:[B

    .line 27
    return-void
.end method


# virtual methods
.method public clone()Lcom/apperhand/common/dto/NotificationDTO;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v0, Lcom/apperhand/common/dto/NotificationDTO;

    invoke-direct {v0}, Lcom/apperhand/common/dto/NotificationDTO;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/NotificationDTO;->setTitle(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/NotificationDTO;->setLink(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getTickerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/NotificationDTO;->setTickerText(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/NotificationDTO;->setBodyText(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getIcon()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/apperhand/common/dto/NotificationDTO;->getIcon()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->getIcon()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
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
    invoke-virtual {p0}, Lcom/apperhand/common/dto/NotificationDTO;->clone()Lcom/apperhand/common/dto/NotificationDTO;

    move-result-object v0

    return-object v0
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apperhand/common/dto/NotificationDTO;->bodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/apperhand/common/dto/NotificationDTO;->icon:[B

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/apperhand/common/dto/NotificationDTO;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/apperhand/common/dto/NotificationDTO;->tickerText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apperhand/common/dto/NotificationDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/apperhand/common/dto/NotificationDTO;->bodyText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setIcon([B)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apperhand/common/dto/NotificationDTO;->icon:[B

    .line 67
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/apperhand/common/dto/NotificationDTO;->link:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/apperhand/common/dto/NotificationDTO;->tickerText:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/apperhand/common/dto/NotificationDTO;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationDTO [tickerText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/NotificationDTO;->tickerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/NotificationDTO;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bodyText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/NotificationDTO;->bodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/NotificationDTO;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
