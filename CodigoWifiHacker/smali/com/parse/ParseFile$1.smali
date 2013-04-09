.class Lcom/parse/ParseFile$1;
.super Lcom/parse/BackgroundTask;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
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
    .line 302
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iput-object p3, p0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

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
    .line 302
    invoke-virtual {p0}, Lcom/parse/ParseFile$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    #calls: Lcom/parse/ParseFile;->save(ZLcom/parse/ProgressCallback;)V
    invoke-static {v0, v1, v2}, Lcom/parse/ParseFile;->access$000(Lcom/parse/ParseFile;ZLcom/parse/ProgressCallback;)V

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method
