.class final Lcom/google/mygson/internal/bind/TypeAdapters$28;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mygson/internal/bind/TypeAdapters;->newFactoryForMultipleTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$base:Ljava/lang/Class;

.field final synthetic val$sub:Ljava/lang/Class;

.field final synthetic val$typeAdapter:Lcom/google/mygson/TypeAdapter;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$base:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$sub:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$typeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 2
    .parameter "gson"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/Gson;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 763
    .local p2, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 764
    .local v0, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$base:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$sub:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$typeAdapter:Lcom/google/mygson/TypeAdapter;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$base:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$sub:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$28;->val$typeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
