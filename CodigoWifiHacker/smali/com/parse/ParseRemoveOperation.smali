.class Lcom/parse/ParseRemoveOperation;
.super Ljava/lang/Object;
.source "ParseRemoveOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected objects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    .line 25
    iget-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    .line 21
    iget-object v0, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "oldValue"
    .parameter "object"
    .parameter "key"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .end local p1
    :goto_0
    return-object v2

    .line 65
    .restart local p1
    :cond_0
    instance-of v3, p1, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 66
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p2, p3}, Lcom/parse/ParseRemoveOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    .local v0, newValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 70
    .end local v0           #newValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 75
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
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
    invoke-virtual {p0}, Lcom/parse/ParseRemoveOperation;->encode()Lorg/json/JSONObject;

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

    const-string v2, "Remove"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

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

    .line 56
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 38
    .restart local p0
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v3, :cond_1

    .line 39
    new-instance v3, Lcom/parse/ParseSetOperation;

    iget-object v4, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

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
    check-cast v2, Lorg/json/JSONArray;

    .end local v2           #value:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p0
    :cond_2
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 49
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0
    invoke-direct {p0, v0}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p0
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You can only add an item to a List or JSONArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v2           #value:Ljava/lang/Object;
    .restart local p1
    :cond_4
    instance-of v3, p1, Lcom/parse/ParseRemoveOperation;

    if-eqz v3, :cond_5

    .line 54
    new-instance v1, Ljava/util/HashSet;

    check-cast p1, Lcom/parse/ParseRemoveOperation;

    .end local p1
    iget-object v3, p1, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 55
    .local v1, result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseRemoveOperation;->objects:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 56
    new-instance p0, Lcom/parse/ParseRemoveOperation;

    .end local p0
    invoke-direct {p0, v1}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 58
    .end local v1           #result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local p0
    .restart local p1
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
