.class public Lcom/parse/CountingMultipartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/CountingMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private hasReportedDone:Z

.field private final progressCallback:Lcom/parse/ProgressCallback;

.field private totalSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/parse/ProgressCallback;J)V
    .locals 2
    .parameter "out"
    .parameter "progressCallback"
    .parameter "totalSize"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    .line 52
    iput-object p2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    .line 53
    iput-wide p3, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 55
    return-void
.end method

.method private notifyCallback()V
    .locals 5

    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-wide v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 78
    .local v1, progressToReport:I
    new-instance v0, Lcom/parse/CountingMultipartEntity$CountingOutputStream$1;

    iget-object v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {v0, p0, v2, v1}, Lcom/parse/CountingMultipartEntity$CountingOutputStream$1;-><init>(Lcom/parse/CountingMultipartEntity$CountingOutputStream;Lcom/parse/ParseCallback;I)V

    .line 85
    .local v0, progressTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 87
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 68
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 61
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 62
    return-void
.end method
