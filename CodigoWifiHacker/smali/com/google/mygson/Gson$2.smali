.class Lcom/google/mygson/Gson$2;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/google/mygson/JsonDeserializationContext;


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
    .line 129
    iput-object p1, p0, Lcom/google/mygson/Gson$2;->this$0:Lcom/google/mygson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/mygson/Gson$2;->this$0:Lcom/google/mygson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/Gson;->fromJson(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
