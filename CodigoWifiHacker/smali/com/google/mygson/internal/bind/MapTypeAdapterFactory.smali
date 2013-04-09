.class public final Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/mygson/internal/ConstructorConstructor;Z)V
    .locals 0
    .parameter "constructorConstructor"
    .parameter "complexMapKeySerialization"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    .line 113
    iput-boolean p2, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/mygson/TypeAdapter;Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->toJsonTree(Lcom/google/mygson/TypeAdapter;Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAdapter(Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;)Lcom/google/mygson/TypeAdapter;
    .locals 1
    .parameter "context"
    .parameter "keyType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/mygson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/mygson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/mygson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private static toJsonTree(Lcom/google/mygson/TypeAdapter;Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;TT;)",
            "Lcom/google/mygson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, typeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    :try_start_0
    new-instance v1, Lcom/google/mygson/internal/bind/JsonTreeWriter;

    invoke-direct {v1}, Lcom/google/mygson/internal/bind/JsonTreeWriter;-><init>()V

    .line 270
    .local v1, jsonWriter:Lcom/google/mygson/internal/bind/JsonTreeWriter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/mygson/internal/bind/JsonTreeWriter;->setLenient(Z)V

    .line 271
    invoke-virtual {p0, v1, p1}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v1}, Lcom/google/mygson/internal/bind/JsonTreeWriter;->get()Lcom/google/mygson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 273
    .end local v1           #jsonWriter:Lcom/google/mygson/internal/bind/JsonTreeWriter;
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 12
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
    .local p2, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 119
    .local v11, type:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 120
    .local v9, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-static {v11}, Lcom/google/mygson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 125
    .local v10, rawTypeOfSrc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v11, v10}, Lcom/google/mygson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 126
    .local v8, keyAndValueTypes:[Ljava/lang/reflect/Type;
    aget-object v1, v8, v2

    invoke-direct {p0, p1, v1}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;)Lcom/google/mygson/TypeAdapter;

    move-result-object v4

    .line 127
    .local v4, keyAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    aget-object v1, v8, v5

    invoke-static {v1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v6

    .line 128
    .local v6, valueAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/google/mygson/internal/ConstructorConstructor;->getConstructor(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/internal/ObjectConstructor;

    move-result-object v7

    .line 132
    .local v7, constructor:Lcom/google/mygson/internal/ObjectConstructor;,"Lcom/google/mygson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v8, v2

    aget-object v5, v8, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Lcom/google/mygson/internal/ObjectConstructor;)V

    .line 134
    .local v0, result:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
