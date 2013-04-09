.class Lcom/google/mygson/TypeAdapter$1;
.super Lcom/google/mygson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mygson/TypeAdapter;->nullSafe()Lcom/google/mygson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mygson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/mygson/TypeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    .local p0, this:Lcom/google/mygson/TypeAdapter$1;,"Lcom/google/mygson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/google/mygson/TypeAdapter$1;->this$0:Lcom/google/mygson/TypeAdapter;

    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .parameter "reader"
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
    .line 194
    .local p0, this:Lcom/google/mygson/TypeAdapter$1;,"Lcom/google/mygson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mygson/TypeAdapter$1;->this$0:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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
    .line 187
    .local p0, this:Lcom/google/mygson/TypeAdapter$1;,"Lcom/google/mygson/TypeAdapter.1;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    if-nez p2, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/mygson/TypeAdapter$1;->this$0:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
