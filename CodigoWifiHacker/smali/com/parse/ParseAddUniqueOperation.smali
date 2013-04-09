.class Lcom/parse/ParseAddUniqueOperation;
.super Ljava/lang/Object;
.source "ParseAddUniqueOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected objects:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    .line 25
    iget-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, coll:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    .line 21
    iget-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "oldValue"
    .parameter "object"
    .parameter "key"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .end local p1
    :goto_0
    return-object v3

    .line 69
    .restart local p1
    :cond_0
    instance-of v4, p1, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 70
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 72
    .local v2, old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, p2, p3}, Lcom/parse/ParseAddUniqueOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 73
    .local v1, newValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 74
    .end local v1           #newValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2           #old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1
    :cond_1
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v4, p1

    .line 76
    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    .end local v0           #newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Operation is invalid after previous operation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic encode()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/parse/ParseAddUniqueOperation;->encode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v0, output:Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "AddUnique"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .parameter "previous"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 60
    .end local p0
    .end local p1
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 38
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v3, :cond_1

    .line 39
    new-instance v3, Lcom/parse/ParseSetOperation;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 40
    :cond_1
    instance-of v3, p1, Lcom/parse/ParseSetOperation;

    if-eqz v3, :cond_4

    .line 41
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v3, v2

    .line 44
    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    check-cast v2, Lorg/json/JSONArray;

    .end local v2           #value:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    .end local v0           #newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p0
    :cond_2
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0       #newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v3, v2

    .line 50
    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0
    invoke-direct {p0, v1}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    .end local v0           #newObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p0
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You can only add an item to a List or JSONArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v2           #value:Ljava/lang/Object;
    .restart local p1
    :cond_4
    instance-of v3, p1, Lcom/parse/ParseAddUniqueOperation;

    if-eqz v3, :cond_5

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseAddUniqueOperation;

    .end local p1
    iget-object v3, p1, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance p0, Lcom/parse/ParseAddUniqueOperation;

    .end local p0
    invoke-direct {p0, v1}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 62
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0
    .restart local p1
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
