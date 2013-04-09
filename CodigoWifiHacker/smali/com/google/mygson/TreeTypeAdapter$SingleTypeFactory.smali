.class Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/google/mygson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/google/mygson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/google/mygson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .parameter "typeAdapter"
    .parameter
    .parameter "matchRawType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, exactType:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<*>;"
    .local p4, hierarchyType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    instance-of v0, p1, Lcom/google/mygson/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/mygson/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/mygson/JsonSerializer;

    .line 121
    instance-of v0, p1, Lcom/google/mygson/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/mygson/JsonDeserializer;

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/mygson/JsonDeserializer;

    .line 124
    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/mygson/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/mygson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/mygson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 125
    iput-object p2, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/mygson/reflect/TypeToken;

    .line 126
    iput-boolean p3, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 127
    iput-object p4, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 128
    return-void

    .restart local p1
    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 121
    goto :goto_1

    .line 124
    .end local p1
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/mygson/TreeTypeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/mygson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 8
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
    .local p2, type:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    const/4 v6, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/mygson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/google/mygson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/mygson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/mygson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 135
    .local v7, matches:Z
    :goto_0
    if-eqz v7, :cond_3

    new-instance v0, Lcom/google/mygson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/mygson/JsonSerializer;

    iget-object v2, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/mygson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/mygson/TreeTypeAdapter;-><init>(Lcom/google/mygson/JsonSerializer;Lcom/google/mygson/JsonDeserializer;Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapterFactory;Lcom/google/mygson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 132
    .end local v7           #matches:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/mygson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    goto :goto_0

    .restart local v7       #matches:Z
    :cond_3
    move-object v0, v6

    .line 135
    goto :goto_1
.end method
