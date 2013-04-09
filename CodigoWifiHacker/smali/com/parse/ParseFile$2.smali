.class Lcom/parse/ParseFile$2;
.super Lcom/parse/GetDataCallback;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    invoke-direct {p0}, Lcom/parse/GetDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done([BLcom/parse/ParseException;)V
    .locals 3
    .parameter "data"
    .parameter "e"

    .prologue
    .line 395
    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    #getter for: Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/parse/ParseFile;->access$100(Lcom/parse/ParseFile;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/GetDataCallback;

    .line 396
    .local v0, callback:Lcom/parse/GetDataCallback;
    invoke-virtual {v0, p1, p2}, Lcom/parse/GetDataCallback;->done([BLcom/parse/ParseException;)V

    goto :goto_0

    .line 399
    .end local v0           #callback:Lcom/parse/GetDataCallback;
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    #getter for: Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/parse/ParseFile;->access$100(Lcom/parse/ParseFile;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 400
    return-void
.end method
