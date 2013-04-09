.class public Lcom/apperhand/common/dto/Bookmark;
.super Lcom/apperhand/common/dto/BaseBrowserItem;
.source "Bookmark.java"


# static fields
.field private static final serialVersionUID:J = -0x497cba7f490afc02L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;-><init>()V

    .line 10
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
    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/apperhand/common/dto/BaseBrowserItem;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/apperhand/common/dto/Status;)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/apperhand/common/dto/BaseBrowserItem;
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Bookmark;->clone()Lcom/apperhand/common/dto/Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/apperhand/common/dto/Bookmark;
    .locals 7

    .prologue
    .line 18
    invoke-super {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->clone()Lcom/apperhand/common/dto/BaseBrowserItem;

    move-result-object v6

    .line 19
    new-instance v0, Lcom/apperhand/common/dto/Bookmark;

    invoke-virtual {v6}, Lcom/apperhand/common/dto/BaseBrowserItem;->getId()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/apperhand/common/dto/BaseBrowserItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/apperhand/common/dto/BaseBrowserItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v5

    invoke-virtual {v6}, Lcom/apperhand/common/dto/BaseBrowserItem;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/apperhand/common/dto/Bookmark;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/apperhand/common/dto/Status;)V

    .line 20
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
    invoke-virtual {p0}, Lcom/apperhand/common/dto/Bookmark;->clone()Lcom/apperhand/common/dto/Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/apperhand/common/dto/BaseBrowserItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
