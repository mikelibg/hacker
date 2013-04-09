.class Lcom/google/mygson/Gson$FutureTypeAdapter;
.super Lcom/google/mygson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 822
    .local p0, this:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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
    .line 833
    .local p0, this:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/google/mygson/TypeAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, this:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, typeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 829
    :cond_0
    iput-object p1, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    .line 830
    return-void
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
    .line 840
    .local p0, this:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    if-nez v0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/google/mygson/Gson$FutureTypeAdapter;->delegate:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 844
    return-void
.end method
