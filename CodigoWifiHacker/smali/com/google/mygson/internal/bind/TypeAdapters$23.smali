.class final Lcom/google/mygson/internal/bind/TypeAdapters$23;
.super Lcom/google/mygson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Lcom/google/mygson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    sget-object v3, Lcom/google/mygson/internal/bind/TypeAdapters$30;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/mygson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 599
    :pswitch_0
    new-instance v0, Lcom/google/mygson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/mygson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 623
    :goto_0
    return-object v0

    .line 601
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, number:Ljava/lang/String;
    new-instance v0, Lcom/google/mygson/JsonPrimitive;

    new-instance v3, Lcom/google/mygson/internal/LazilyParsedNumber;

    invoke-direct {v3, v1}, Lcom/google/mygson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/mygson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 604
    .end local v1           #number:Ljava/lang/String;
    :pswitch_2
    new-instance v0, Lcom/google/mygson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/mygson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 606
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 607
    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    goto :goto_0

    .line 609
    :pswitch_4
    new-instance v0, Lcom/google/mygson/JsonArray;

    invoke-direct {v0}, Lcom/google/mygson/JsonArray;-><init>()V

    .line 610
    .local v0, array:Lcom/google/mygson/JsonArray;
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 611
    :goto_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->read(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/mygson/JsonArray;->add(Lcom/google/mygson/JsonElement;)V

    goto :goto_1

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 617
    .end local v0           #array:Lcom/google/mygson/JsonArray;
    :pswitch_5
    new-instance v2, Lcom/google/mygson/JsonObject;

    invoke-direct {v2}, Lcom/google/mygson/JsonObject;-><init>()V

    .line 618
    .local v2, object:Lcom/google/mygson/JsonObject;
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginObject()V

    .line 619
    :goto_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->read(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/mygson/JsonObject;->add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V

    goto :goto_2

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endObject()V

    move-object v0, v2

    .line 623
    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->read(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Lcom/google/mygson/JsonElement;)V
    .locals 7
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->isJsonNull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 664
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->isJsonPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 637
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->getAsJsonPrimitive()Lcom/google/mygson/JsonPrimitive;

    move-result-object v3

    .line 638
    .local v3, primitive:Lcom/google/mygson/JsonPrimitive;
    invoke-virtual {v3}, Lcom/google/mygson/JsonPrimitive;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 639
    invoke-virtual {v3}, Lcom/google/mygson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {v3}, Lcom/google/mygson/JsonPrimitive;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 641
    invoke-virtual {v3}, Lcom/google/mygson/JsonPrimitive;->getAsBoolean()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/mygson/stream/JsonWriter;->value(Z)Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {v3}, Lcom/google/mygson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 646
    .end local v3           #primitive:Lcom/google/mygson/JsonPrimitive;
    :cond_4
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 647
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginArray()Lcom/google/mygson/stream/JsonWriter;

    .line 648
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->getAsJsonArray()Lcom/google/mygson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/mygson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonElement;

    .line 649
    .local v0, e:Lcom/google/mygson/JsonElement;
    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->write(Lcom/google/mygson/stream/JsonWriter;Lcom/google/mygson/JsonElement;)V

    goto :goto_1

    .line 651
    .end local v0           #e:Lcom/google/mygson/JsonElement;
    :cond_5
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endArray()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 653
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 654
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginObject()Lcom/google/mygson/stream/JsonWriter;

    .line 655
    invoke-virtual {p2}, Lcom/google/mygson/JsonElement;->getAsJsonObject()Lcom/google/mygson/JsonObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/mygson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 656
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/mygson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/mygson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    .line 657
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mygson/JsonElement;

    invoke-virtual {p0, p1, v4}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->write(Lcom/google/mygson/stream/JsonWriter;Lcom/google/mygson/JsonElement;)V

    goto :goto_2

    .line 659
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/mygson/JsonElement;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endObject()Lcom/google/mygson/stream/JsonWriter;

    goto/16 :goto_0

    .line 662
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 595
    check-cast p2, Lcom/google/mygson/JsonElement;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/TypeAdapters$23;->write(Lcom/google/mygson/stream/JsonWriter;Lcom/google/mygson/JsonElement;)V

    return-void
.end method
