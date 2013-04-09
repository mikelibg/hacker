.class public interface abstract Lcom/google/mygson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/mygson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonParseException;
        }
    .end annotation
.end method
