.class Lcom/parse/ParseQuery$2;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CommandDelegate",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic runFromCache()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/parse/ParseQuery$2;->runFromCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runFromCache()Ljava/util/List;
    .locals 1
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
    .line 385
    iget-object v0, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    #calls: Lcom/parse/ParseQuery;->findFromCache()Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$300(Lcom/parse/ParseQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runOnNetwork(Z)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$2;->runOnNetwork(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetwork(Z)Ljava/util/List;
    .locals 1
    .parameter "retry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    .line 381
    iget-object v0, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    #calls: Lcom/parse/ParseQuery;->findFromNetwork(Z)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/parse/ParseQuery;->access$200(Lcom/parse/ParseQuery;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
