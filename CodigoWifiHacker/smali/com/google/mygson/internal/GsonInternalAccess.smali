.class public abstract Lcom/google/mygson/internal/GsonInternalAccess;
.super Ljava/lang/Object;
.source "GsonInternalAccess.java"


# static fields
.field public static INSTANCE:Lcom/google/mygson/internal/GsonInternalAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getNextAdapter(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/Gson;",
            "Lcom/google/mygson/TypeAdapterFactory;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end method
