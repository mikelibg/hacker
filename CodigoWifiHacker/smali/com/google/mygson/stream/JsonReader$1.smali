.class final Lcom/google/mygson/stream/JsonReader$1;
.super Lcom/google/mygson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/google/mygson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/mygson/stream/JsonReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    instance-of v0, p1, Lcom/google/mygson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1315
    check-cast p1, Lcom/google/mygson/internal/bind/JsonTreeReader;

    .end local p1
    invoke-virtual {p1}, Lcom/google/mygson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1326
    :goto_0
    return-void

    .line 1318
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    .line 1319
    #getter for: Lcom/google/mygson/stream/JsonReader;->token:Lcom/google/mygson/stream/JsonToken;
    invoke-static {p1}, Lcom/google/mygson/stream/JsonReader;->access$000(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/mygson/stream/JsonToken;->NAME:Lcom/google/mygson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1320
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #calls: Lcom/google/mygson/stream/JsonReader;->getLineNumber()I
    invoke-static {p1}, Lcom/google/mygson/stream/JsonReader;->access$100(Lcom/google/mygson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #calls: Lcom/google/mygson/stream/JsonReader;->getColumnNumber()I
    invoke-static {p1}, Lcom/google/mygson/stream/JsonReader;->access$200(Lcom/google/mygson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_1
    #getter for: Lcom/google/mygson/stream/JsonReader;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/mygson/stream/JsonReader;->access$400(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/google/mygson/stream/JsonReader;->value:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/mygson/stream/JsonReader;->access$302(Lcom/google/mygson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    .line 1324
    const/4 v0, 0x0

    #setter for: Lcom/google/mygson/stream/JsonReader;->name:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/mygson/stream/JsonReader;->access$402(Lcom/google/mygson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    .line 1325
    sget-object v0, Lcom/google/mygson/stream/JsonToken;->STRING:Lcom/google/mygson/stream/JsonToken;

    #setter for: Lcom/google/mygson/stream/JsonReader;->token:Lcom/google/mygson/stream/JsonToken;
    invoke-static {p1, v0}, Lcom/google/mygson/stream/JsonReader;->access$002(Lcom/google/mygson/stream/JsonReader;Lcom/google/mygson/stream/JsonToken;)Lcom/google/mygson/stream/JsonToken;

    goto :goto_0
.end method
