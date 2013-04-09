.class public Lcom/parse/facebook/FacebookError;
.super Ljava/lang/RuntimeException;
.source "FacebookError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/facebook/FacebookError;->mErrorCode:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "type"
    .parameter "code"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/facebook/FacebookError;->mErrorCode:I

    .line 39
    iput-object p2, p0, Lcom/parse/facebook/FacebookError;->mErrorType:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/parse/facebook/FacebookError;->mErrorCode:I

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/parse/facebook/FacebookError;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/facebook/FacebookError;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
