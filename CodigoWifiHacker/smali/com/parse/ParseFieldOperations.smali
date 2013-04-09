.class final Lcom/parse/ParseFieldOperations;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;
    }
.end annotation


# static fields
.field static opDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v2, "__op"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, op:Ljava/lang/String;
    sget-object v2, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;

    .line 148
    .local v0, factory:Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;
    if-nez v0, :cond_0

    .line 149
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode operation of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    invoke-interface {v0, p0}, Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;->decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;

    move-result-object v2

    return-object v2
.end method

.method static jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 167
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-object v2
.end method

.method private static registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V
    .locals 1
    .parameter "opName"
    .parameter "factory"

    .prologue
    .line 76
    sget-object v0, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method static registerDefaultDecoders()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "Batch"

    new-instance v1, Lcom/parse/ParseFieldOperations$1;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$1;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 96
    const-string v0, "Delete"

    new-instance v1, Lcom/parse/ParseFieldOperations$2;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$2;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 102
    const-string v0, "Increment"

    new-instance v1, Lcom/parse/ParseFieldOperations$3;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$3;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 108
    const-string v0, "Add"

    new-instance v1, Lcom/parse/ParseFieldOperations$4;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$4;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 114
    const-string v0, "AddUnique"

    new-instance v1, Lcom/parse/ParseFieldOperations$5;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$5;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 120
    const-string v0, "Remove"

    new-instance v1, Lcom/parse/ParseFieldOperations$6;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$6;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 126
    const-string v0, "AddRelation"

    new-instance v1, Lcom/parse/ParseFieldOperations$7;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$7;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 132
    const-string v0, "RemoveRelation"

    new-instance v1, Lcom/parse/ParseFieldOperations$8;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$8;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    .line 137
    return-void
.end method
