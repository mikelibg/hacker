.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runFromCache()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    #calls: Lcom/parse/ParseQuery;->countFromCache()Ljava/lang/Integer;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$100(Lcom/parse/ParseQuery;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runFromCache()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/parse/ParseQuery$1;->runFromCache()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetwork(Z)Ljava/lang/Integer;
    .locals 1
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    #calls: Lcom/parse/ParseQuery;->countFromNetwork()I
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$000(Lcom/parse/ParseQuery;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 366
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->runOnNetwork(Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
