.class public interface abstract Lcom/google/mygson/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


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
.method public abstract serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/mygson/JsonSerializationContext;)Lcom/google/mygson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/JsonSerializationContext;",
            ")",
            "Lcom/google/mygson/JsonElement;"
        }
    .end annotation
.end method
