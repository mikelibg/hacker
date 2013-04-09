.class Lcom/google/mygson/internal/Excluder$1;
.super Lcom/google/mygson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mygson/internal/Excluder;->create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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

.field final synthetic this$0:Lcom/google/mygson/internal/Excluder;

.field final synthetic val$gson:Lcom/google/mygson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/google/mygson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/mygson/internal/Excluder;ZZLcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/mygson/internal/Excluder$1;->this$0:Lcom/google/mygson/internal/Excluder;

    iput-boolean p2, p0, Lcom/google/mygson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/google/mygson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/google/mygson/internal/Excluder$1;->val$gson:Lcom/google/mygson/Gson;

    iput-object p5, p0, Lcom/google/mygson/internal/Excluder$1;->val$type:Lcom/google/mygson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/google/mygson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/mygson/internal/Excluder$1;->delegate:Lcom/google/mygson/TypeAdapter;

    .line 142
    .local v0, d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0           #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0       #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :cond_0
    sget-object v1, Lcom/google/mygson/internal/GsonInternalAccess;->INSTANCE:Lcom/google/mygson/internal/GsonInternalAccess;

    iget-object v2, p0, Lcom/google/mygson/internal/Excluder$1;->val$gson:Lcom/google/mygson/Gson;

    iget-object v3, p0, Lcom/google/mygson/internal/Excluder$1;->this$0:Lcom/google/mygson/internal/Excluder;

    iget-object v4, p0, Lcom/google/mygson/internal/Excluder$1;->val$type:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/mygson/internal/GsonInternalAccess;->getNextAdapter(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .end local v0           #d:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/google/mygson/internal/Excluder$1;->delegate:Lcom/google/mygson/TypeAdapter;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lcom/google/mygson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->skipValue()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/mygson/internal/Excluder$1;->delegate()Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 133
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-boolean v0, p0, Lcom/google/mygson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/mygson/internal/Excluder$1;->delegate()Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
