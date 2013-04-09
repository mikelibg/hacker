.class public final Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/mygson/internal/ConstructorConstructor;)V
    .locals 0
    .parameter "constructorConstructor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 8
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
    .line 44
    .local p2, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 46
    .local v7, type:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 47
    .local v6, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v7, v6}, Lcom/google/mygson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 52
    .local v3, elementType:Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v4

    .line 53
    .local v4, elementTypeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/google/mygson/internal/ConstructorConstructor;->getConstructor(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/internal/ObjectConstructor;

    move-result-object v5

    .line 56
    .local v5, constructor:Lcom/google/mygson/internal/ObjectConstructor;,"Lcom/google/mygson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Lcom/google/mygson/internal/ObjectConstructor;)V

    .line 57
    .local v0, result:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
