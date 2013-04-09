.class final Lcom/google/mygson/TreeTypeAdapter;
.super Lcom/google/mygson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/TreeTypeAdapter$1;,
        Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/mygson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/mygson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/google/mygson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/mygson/Gson;

.field private final serializer:Lcom/google/mygson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/google/mygson/TypeAdapterFactory;

.field private final typeToken:Lcom/google/mygson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/mygson/JsonSerializer;Lcom/google/mygson/JsonDeserializer;Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapterFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter "gson"
    .parameter
    .parameter "skipPast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/JsonSerializer",
            "<TT;>;",
            "Lcom/google/mygson/JsonDeserializer",
            "<TT;>;",
            "Lcom/google/mygson/Gson;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/google/mygson/TreeTypeAdapter;,"Lcom/google/mygson/TreeTypeAdapter<TT;>;"
    .local p1, serializer:Lcom/google/mygson/JsonSerializer;,"Lcom/google/mygson/JsonSerializer<TT;>;"
    .local p2, deserializer:Lcom/google/mygson/JsonDeserializer;,"Lcom/google/mygson/JsonDeserializer<TT;>;"
    .local p4, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/mygson/TreeTypeAdapter;->serializer:Lcom/google/mygson/JsonSerializer;

    .line 45
    iput-object p2, p0, Lcom/google/mygson/TreeTypeAdapter;->deserializer:Lcom/google/mygson/JsonDeserializer;

    .line 46
    iput-object p3, p0, Lcom/google/mygson/TreeTypeAdapter;->gson:Lcom/google/mygson/Gson;

    .line 47
    iput-object p4, p0, Lcom/google/mygson/TreeTypeAdapter;->typeToken:Lcom/google/mygson/reflect/TypeToken;

    .line 48
    iput-object p5, p0, Lcom/google/mygson/TreeTypeAdapter;->skipPast:Lcom/google/mygson/TypeAdapterFactory;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mygson/JsonSerializer;Lcom/google/mygson/JsonDeserializer;Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/TreeTypeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 32
    .local p0, this:Lcom/google/mygson/TreeTypeAdapter;,"Lcom/google/mygson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/mygson/TreeTypeAdapter;-><init>(Lcom/google/mygson/JsonSerializer;Lcom/google/mygson/JsonDeserializer;Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/google/mygson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/mygson/TreeTypeAdapter;,"Lcom/google/mygson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    .line 77
    .local v0, d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0           #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0       #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :cond_0
    sget-object v1, Lcom/google/mygson/internal/GsonInternalAccess;->INSTANCE:Lcom/google/mygson/internal/GsonInternalAccess;

    iget-object v2, p0, Lcom/google/mygson/TreeTypeAdapter;->gson:Lcom/google/mygson/Gson;

    iget-object v3, p0, Lcom/google/mygson/TreeTypeAdapter;->skipPast:Lcom/google/mygson/TypeAdapterFactory;

    iget-object v4, p0, Lcom/google/mygson/TreeTypeAdapter;->typeToken:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/mygson/internal/GsonInternalAccess;->getNextAdapter(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .end local v0           #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/google/mygson/TreeTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/mygson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, exactType:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/mygson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/mygson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, exactType:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 97
    .local v3, matchRawType:Z
    :goto_0
    new-instance v0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/mygson/TreeTypeAdapter$1;)V

    return-object v0

    .line 96
    .end local v3           #matchRawType:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;
    .locals 6
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/mygson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, hierarchyType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/mygson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/mygson/TreeTypeAdapter;,"Lcom/google/mygson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/google/mygson/TreeTypeAdapter;->deserializer:Lcom/google/mygson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/google/mygson/TreeTypeAdapter;->delegate()Lcom/google/mygson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/google/mygson/internal/Streams;->parse(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    .line 56
    .local v0, value:Lcom/google/mygson/JsonElement;
    invoke-virtual {v0}, Lcom/google/mygson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/google/mygson/TreeTypeAdapter;->deserializer:Lcom/google/mygson/JsonDeserializer;

    iget-object v2, p0, Lcom/google/mygson/TreeTypeAdapter;->typeToken:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mygson/TreeTypeAdapter;->gson:Lcom/google/mygson/Gson;

    iget-object v3, v3, Lcom/google/mygson/Gson;->deserializationContext:Lcom/google/mygson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/mygson/JsonDeserializer;->deserialize(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/mygson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/mygson/TreeTypeAdapter;,"Lcom/google/mygson/TreeTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/mygson/TreeTypeAdapter;->serializer:Lcom/google/mygson/JsonSerializer;

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/google/mygson/TreeTypeAdapter;->delegate()Lcom/google/mygson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/google/mygson/TreeTypeAdapter;->serializer:Lcom/google/mygson/JsonSerializer;

    iget-object v2, p0, Lcom/google/mygson/TreeTypeAdapter;->typeToken:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mygson/TreeTypeAdapter;->gson:Lcom/google/mygson/Gson;

    iget-object v3, v3, Lcom/google/mygson/Gson;->serializationContext:Lcom/google/mygson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/google/mygson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/mygson/JsonSerializationContext;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    .line 72
    .local v0, tree:Lcom/google/mygson/JsonElement;
    invoke-static {v0, p1}, Lcom/google/mygson/internal/Streams;->write(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V

    goto :goto_0
.end method
