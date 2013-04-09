.class final Lcom/google/mygson/internal/bind/TypeAdapters$25;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/google/mygson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/google/mygson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/mygson/internal/bind/TypeAdapters$25;->val$type:Lcom/google/mygson/reflect/TypeToken;

    iput-object p2, p0, Lcom/google/mygson/internal/bind/TypeAdapters$25;->val$typeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 1
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
    .line 725
    .local p2, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/mygson/internal/bind/TypeAdapters$25;->val$type:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/google/mygson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mygson/internal/bind/TypeAdapters$25;->val$typeAdapter:Lcom/google/mygson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
