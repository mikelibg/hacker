.class public abstract Lcom/google/mygson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    new-instance v0, Lcom/google/mygson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/mygson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v0, reader:Lcom/google/mygson/stream/JsonReader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/mygson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final fromJsonTree(Lcom/google/mygson/JsonElement;)Ljava/lang/Object;
    .locals 3
    .parameter "jsonTree"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :try_start_0
    new-instance v1, Lcom/google/mygson/internal/bind/JsonTreeReader;

    invoke-direct {v1, p1}, Lcom/google/mygson/internal/bind/JsonTreeReader;-><init>(Lcom/google/mygson/JsonElement;)V

    .line 277
    .local v1, jsonReader:Lcom/google/mygson/stream/JsonReader;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 279
    .end local v1           #jsonReader:Lcom/google/mygson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final nullSafe()Lcom/google/mygson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    new-instance v0, Lcom/google/mygson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/mygson/TypeAdapter$1;-><init>(Lcom/google/mygson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
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
.end method

.method final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 214
    .local v0, stringWriter:Ljava/io/StringWriter;
    invoke-virtual {p0, v0, p1}, Lcom/google/mygson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/mygson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/mygson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 141
    .local v0, writer:Lcom/google/mygson/stream/JsonWriter;
    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method final toJsonTree(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/mygson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    :try_start_0
    new-instance v1, Lcom/google/mygson/internal/bind/JsonTreeWriter;

    invoke-direct {v1}, Lcom/google/mygson/internal/bind/JsonTreeWriter;-><init>()V

    .line 227
    .local v1, jsonWriter:Lcom/google/mygson/internal/bind/JsonTreeWriter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/mygson/internal/bind/JsonTreeWriter;->setLenient(Z)V

    .line 228
    invoke-virtual {p0, v1, p1}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v1}, Lcom/google/mygson/internal/bind/JsonTreeWriter;->get()Lcom/google/mygson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 230
    .end local v1           #jsonWriter:Lcom/google/mygson/internal/bind/JsonTreeWriter;
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
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
.end method
