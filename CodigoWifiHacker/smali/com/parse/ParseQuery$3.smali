.class Lcom/parse/ParseQuery$3;
.super Lcom/parse/BackgroundTask;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;Lcom/parse/ParseQuery$CachePolicy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    iput-object p1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iput-object p3, p0, Lcom/parse/ParseQuery$3;->val$callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;

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
    .line 602
    invoke-virtual {p0}, Lcom/parse/ParseQuery$3;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$3;->val$callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    #calls: Lcom/parse/ParseQuery;->findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    #setter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1, v2}, Lcom/parse/ParseQuery;->access$502(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;

    .line 607
    return-object v0
.end method
