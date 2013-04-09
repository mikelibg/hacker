.class Lcom/google/mygson/Gson$5;
.super Lcom/google/mygson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mygson/Gson;->floatAdapter(Z)Lcom/google/mygson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mygson/Gson;


# direct methods
.method constructor <init>(Lcom/google/mygson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/mygson/Gson$5;->this$0:Lcom/google/mygson/Gson;

    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
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
    .line 279
    invoke-virtual {p0, p1}, Lcom/google/mygson/Gson$5;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p2, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 293
    .local v0, floatValue:F
    iget-object v1, p0, Lcom/google/mygson/Gson$5;->this$0:Lcom/google/mygson/Gson;

    float-to-double v2, v0

    #calls: Lcom/google/mygson/Gson;->checkValidFloatingPoint(D)V
    invoke-static {v1, v2, v3}, Lcom/google/mygson/Gson;->access$000(Lcom/google/mygson/Gson;D)V

    .line 294
    invoke-virtual {p1, p2}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/mygson/stream/JsonWriter;

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
    .line 279
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/Gson$5;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
