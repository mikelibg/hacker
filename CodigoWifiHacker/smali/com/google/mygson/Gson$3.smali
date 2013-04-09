.class Lcom/google/mygson/Gson$3;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/google/mygson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mygson/Gson;


# direct methods
.method constructor <init>(Lcom/google/mygson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/mygson/Gson$3;->this$0:Lcom/google/mygson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/mygson/Gson$3;->this$0:Lcom/google/mygson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/mygson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/mygson/Gson$3;->this$0:Lcom/google/mygson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    return-object v0
.end method
