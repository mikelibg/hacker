.class final Lcom/parse/ParseObject$13;
.super Lcom/parse/BackgroundTask;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1745
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    iput-object p2, p0, Lcom/parse/ParseObject$13;->val$objects:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

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
    .line 1745
    invoke-virtual {p0}, Lcom/parse/ParseObject$13;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/List;
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
    .line 1748
    iget-object v0, p0, Lcom/parse/ParseObject$13;->val$objects:Ljava/util/List;

    invoke-static {v0}, Lcom/parse/ParseObject;->fetchAll(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
