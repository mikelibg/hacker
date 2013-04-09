.class Lcom/parse/ParseFile$3;
.super Lcom/parse/BackgroundTask;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ParseCallback;Lcom/parse/ProgressCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<[B>;"
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p3, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/parse/ParseFile$3;->run()[B

    move-result-object v0

    return-object v0
.end method

.method public run()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseFile;->getData(ZLcom/parse/ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method
