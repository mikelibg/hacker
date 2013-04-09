.class final Lcom/google/mygson/Gson$7;
.super Lcom/google/mygson/internal/GsonInternalAccess;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/google/mygson/internal/GsonInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextAdapter(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 7
    .parameter "gson"
    .parameter "skipPast"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/Gson;",
            "Lcom/google/mygson/TypeAdapterFactory;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p3, type:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 372
    .local v3, skipPastFound:Z
    #getter for: Lcom/google/mygson/Gson;->factories:Ljava/util/List;
    invoke-static {p1}, Lcom/google/mygson/Gson;->access$100(Lcom/google/mygson/Gson;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mygson/TypeAdapterFactory;

    .line 373
    .local v1, factory:Lcom/google/mygson/TypeAdapterFactory;
    if-nez v3, :cond_1

    .line 374
    if-ne v1, p2, :cond_0

    .line 375
    const/4 v3, 0x1

    goto :goto_0

    .line 380
    :cond_1
    invoke-interface {v1, p1, p3}, Lcom/google/mygson/TypeAdapterFactory;->create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .line 381
    .local v0, candidate:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 382
    return-object v0

    .line 386
    .end local v0           #candidate:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .end local v1           #factory:Lcom/google/mygson/TypeAdapterFactory;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSON cannot serialize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
