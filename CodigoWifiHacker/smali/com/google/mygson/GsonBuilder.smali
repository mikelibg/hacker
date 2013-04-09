.class public final Lcom/google/mygson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/mygson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/mygson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/google/mygson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/google/mygson/internal/Excluder;->DEFAULT:Lcom/google/mygson/internal/Excluder;

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 71
    sget-object v0, Lcom/google/mygson/LongSerializationPolicy;->DEFAULT:Lcom/google/mygson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->longSerializationPolicy:Lcom/google/mygson/LongSerializationPolicy;

    .line 72
    sget-object v0, Lcom/google/mygson/FieldNamingPolicy;->IDENTITY:Lcom/google/mygson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->fieldNamingPolicy:Lcom/google/mygson/FieldNamingStrategy;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 80
    iput v1, p0, Lcom/google/mygson/GsonBuilder;->dateStyle:I

    .line 81
    iput v1, p0, Lcom/google/mygson/GsonBuilder;->timeStyle:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->escapeHtmlChars:Z

    .line 95
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .parameter "datePattern"
    .parameter "dateStyle"
    .parameter "timeStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, factories:Ljava/util/List;,"Ljava/util/List<Lcom/google/mygson/TypeAdapterFactory;>;"
    const/4 v3, 0x2

    .line 555
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    new-instance v0, Lcom/google/mygson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/google/mygson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, dateTypeAdapter:Lcom/google/mygson/DefaultDateTypeAdapter;
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/mygson/TreeTypeAdapter;->newFactory(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/mygson/TreeTypeAdapter;->newFactory(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/mygson/TreeTypeAdapter;->newFactory(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v0           #dateTypeAdapter:Lcom/google/mygson/DefaultDateTypeAdapter;
    :cond_0
    return-void

    .line 557
    :cond_1
    if-eq p2, v3, :cond_0

    if-eq p3, v3, :cond_0

    .line 558
    new-instance v0, Lcom/google/mygson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/google/mygson/DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0       #dateTypeAdapter:Lcom/google/mygson/DefaultDateTypeAdapter;
    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/mygson/ExclusionStrategy;)Lcom/google/mygson/GsonBuilder;
    .locals 3
    .parameter "strategy"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/mygson/internal/Excluder;->withExclusionStrategy(Lcom/google/mygson/ExclusionStrategy;ZZ)Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 341
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/mygson/ExclusionStrategy;)Lcom/google/mygson/GsonBuilder;
    .locals 3
    .parameter "strategy"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/mygson/internal/Excluder;->withExclusionStrategy(Lcom/google/mygson/ExclusionStrategy;ZZ)Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 324
    return-object p0
.end method

.method public create()Lcom/google/mygson/Gson;
    .locals 12

    .prologue
    .line 540
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v11, factories:Ljava/util/List;,"Ljava/util/List<Lcom/google/mygson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 543
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/google/mygson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/google/mygson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/mygson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 546
    new-instance v0, Lcom/google/mygson/Gson;

    iget-object v1, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    iget-object v2, p0, Lcom/google/mygson/GsonBuilder;->fieldNamingPolicy:Lcom/google/mygson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/google/mygson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/mygson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/google/mygson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/google/mygson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/google/mygson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/google/mygson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/google/mygson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/google/mygson/GsonBuilder;->longSerializationPolicy:Lcom/google/mygson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v11}, Lcom/google/mygson/Gson;-><init>(Lcom/google/mygson/internal/Excluder;Lcom/google/mygson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/mygson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->escapeHtmlChars:Z

    .line 364
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/mygson/internal/Excluder;->disableInnerClassSerialization()Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 251
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->complexMapKeySerialization:Z

    .line 240
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/mygson/GsonBuilder;
    .locals 1
    .parameter "modifiers"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/google/mygson/internal/Excluder;->withModifiers([I)Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 122
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/mygson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 147
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->generateNonExecutableJson:Z

    .line 136
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/mygson/GsonBuilder;
    .locals 4
    .parameter "type"
    .parameter "typeAdapter"

    .prologue
    .line 445
    instance-of v1, p2, Lcom/google/mygson/JsonSerializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/google/mygson/JsonDeserializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/google/mygson/InstanceCreator;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/google/mygson/TypeAdapter;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/mygson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 449
    invoke-static {p1}, Lcom/google/mygson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/mygson/internal/Primitives;->isWrapperType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot register type adapters for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 453
    :cond_3
    instance-of v1, p2, Lcom/google/mygson/InstanceCreator;

    if-eqz v1, :cond_4

    .line 454
    iget-object v2, p0, Lcom/google/mygson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lcom/google/mygson/InstanceCreator;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_4
    instance-of v1, p2, Lcom/google/mygson/JsonSerializer;

    if-nez v1, :cond_5

    instance-of v1, p2, Lcom/google/mygson/JsonDeserializer;

    if-eqz v1, :cond_6

    .line 457
    :cond_5
    invoke-static {p1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v0

    .line 458
    .local v0, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/mygson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/mygson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v0           #typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<*>;"
    :cond_6
    instance-of v1, p2, Lcom/google/mygson/TypeAdapter;

    if-eqz v1, :cond_7

    .line 461
    iget-object v1, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v2

    check-cast p2, Lcom/google/mygson/TypeAdapter;

    .end local p2
    invoke-static {v2, p2}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Lcom/google/mygson/reflect/TypeToken;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_7
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/google/mygson/TypeAdapterFactory;)Lcom/google/mygson/GsonBuilder;
    .locals 1
    .parameter "factory"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/mygson/GsonBuilder;
    .locals 3
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/mygson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 495
    instance-of v0, p2, Lcom/google/mygson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/mygson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/mygson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/mygson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 498
    instance-of v0, p2, Lcom/google/mygson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/mygson/JsonSerializer;

    if-eqz v0, :cond_2

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/mygson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    :cond_2
    instance-of v0, p2, Lcom/google/mygson/TypeAdapter;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/google/mygson/TypeAdapter;

    .end local p2
    invoke-static {p1, p2}, Lcom/google/mygson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    return-object p0

    .restart local p2
    :cond_4
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method public serializeNulls()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->serializeNulls:Z

    .line 159
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 530
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/mygson/GsonBuilder;
    .locals 1
    .parameter "style"

    .prologue
    .line 404
    iput p1, p0, Lcom/google/mygson/GsonBuilder;->dateStyle:I

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/mygson/GsonBuilder;
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 425
    iput p1, p0, Lcom/google/mygson/GsonBuilder;->dateStyle:I

    .line 426
    iput p2, p0, Lcom/google/mygson/GsonBuilder;->timeStyle:I

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/mygson/GsonBuilder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/mygson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/mygson/ExclusionStrategy;)Lcom/google/mygson/GsonBuilder;
    .locals 6
    .parameter "strategies"

    .prologue
    const/4 v5, 0x1

    .line 304
    move-object v0, p1

    .local v0, arr$:[Lcom/google/mygson/ExclusionStrategy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 305
    .local v3, strategy:Lcom/google/mygson/ExclusionStrategy;
    iget-object v4, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    invoke-virtual {v4, v3, v5, v5}, Lcom/google/mygson/internal/Excluder;->withExclusionStrategy(Lcom/google/mygson/ExclusionStrategy;ZZ)Lcom/google/mygson/internal/Excluder;

    move-result-object v4

    iput-object v4, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v3           #strategy:Lcom/google/mygson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/mygson/FieldNamingPolicy;)Lcom/google/mygson/GsonBuilder;
    .locals 0
    .parameter "namingConvention"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/mygson/GsonBuilder;->fieldNamingPolicy:Lcom/google/mygson/FieldNamingStrategy;

    .line 277
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/mygson/FieldNamingStrategy;)Lcom/google/mygson/GsonBuilder;
    .locals 0
    .parameter "fieldNamingStrategy"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/mygson/GsonBuilder;->fieldNamingPolicy:Lcom/google/mygson/FieldNamingStrategy;

    .line 290
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/mygson/LongSerializationPolicy;)Lcom/google/mygson/GsonBuilder;
    .locals 0
    .parameter "serializationPolicy"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/mygson/GsonBuilder;->longSerializationPolicy:Lcom/google/mygson/LongSerializationPolicy;

    .line 264
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/mygson/GsonBuilder;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mygson/GsonBuilder;->prettyPrinting:Z

    .line 352
    return-object p0
.end method

.method public setVersion(D)Lcom/google/mygson/GsonBuilder;
    .locals 1
    .parameter "ignoreVersionsAfter"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/internal/Excluder;->withVersion(D)Lcom/google/mygson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mygson/GsonBuilder;->excluder:Lcom/google/mygson/internal/Excluder;

    .line 106
    return-object p0
.end method
