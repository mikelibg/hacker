.class public final Lcom/apperhand/device/android/b/a;
.super Lcom/google/mygson/TypeAdapter;
.source "GsonByteArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apperhand/device/a/d/a;->a(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    check-cast p2, [B

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/apperhand/device/a/d/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    return-void
.end method
