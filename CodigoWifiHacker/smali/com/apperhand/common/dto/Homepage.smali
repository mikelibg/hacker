.class public Lcom/apperhand/common/dto/Homepage;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "Homepage.java"


# static fields
.field private static final serialVersionUID:J = 0x6da5467717f69107L


# instance fields
.field private pageURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/apperhand/common/dto/Homepage;->pageURL:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apperhand/common/dto/Homepage;->pageURL:Ljava/lang/String;

    return-object v0
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/apperhand/common/dto/Homepage;->pageURL:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Homepage [pageURL="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/Homepage;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
