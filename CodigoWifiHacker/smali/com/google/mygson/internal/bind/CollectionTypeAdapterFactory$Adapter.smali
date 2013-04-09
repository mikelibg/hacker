.class final Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/google/mygson/TypeAdapter;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/google/mygson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/google/mygson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Lcom/google/mygson/internal/ObjectConstructor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "elementType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/TypeAdapter",
            "<TE;>;",
            "Lcom/google/mygson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p4, elementTypeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TE;>;"
    .local p5, constructor:Lcom/google/mygson/internal/ObjectConstructor;,"Lcom/google/mygson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    iput-object p1, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->this$0:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    .line 67
    new-instance v0, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/google/mygson/TypeAdapter;

    .line 69
    iput-object p5, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/google/mygson/internal/ObjectConstructor;

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/Collection;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/google/mygson/internal/ObjectConstructor;

    invoke-interface {v2}, Lcom/google/mygson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 79
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, instance:Ljava/lang/Object;,"TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1           #instance:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginArray()Lcom/google/mygson/stream/JsonWriter;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, element:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endArray()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0
.end method
