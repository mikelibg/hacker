.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field static applicationContext:Landroid/content/Context;

.field static applicationId:Ljava/lang/String;

.field static clientKey:Ljava/lang/String;

.field static commandCache:Lcom/parse/ParseCommandCache;

.field private static final dateFormat:Ljava/text/DateFormat;

.field private static logLevel:I

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I

.field static maxParseFileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const/4 v1, 0x6

    sput v1, Lcom/parse/Parse;->logLevel:I

    .line 54
    const/high16 v1, 0xa0

    sput v1, Lcom/parse/Parse;->maxParseFileSize:I

    .line 58
    const/high16 v1, 0x20

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 62
    const/16 v1, 0x3e8

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 64
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, format:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    sput-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 778
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 789
    :goto_0
    return-object v0

    .line 780
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 783
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 784
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 785
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 787
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 789
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized checkCacheApplicationId()V
    .locals 10

    .prologue
    .line 240
    const-class v7, Lcom/parse/Parse;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 242
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v0, applicationIdFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    const/4 v4, 0x0

    .line 247
    .local v4, matches:Z
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v3, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v1, v6, [B

    .line 249
    .local v1, bytes:[B
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 250
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 251
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 252
    .local v2, diskApplicationId:Ljava/lang/String;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    .line 259
    .end local v1           #bytes:[B
    .end local v2           #diskApplicationId:Ljava/lang/String;
    .end local v3           #f:Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v4, :cond_0

    .line 261
    :try_start_2
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 266
    .end local v4           #matches:Z
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #applicationIdFile:Ljava/io/File;
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .restart local v0       #applicationIdFile:Ljava/io/File;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 269
    .local v5, out:Ljava/io/FileOutputStream;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 270
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 280
    .end local v5           #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    monitor-exit v7

    return-void

    .line 240
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 276
    :catch_0
    move-exception v6

    goto :goto_1

    .line 273
    :catch_1
    move-exception v6

    goto :goto_1

    .line 271
    :catch_2
    move-exception v6

    goto :goto_1

    .line 255
    .restart local v4       #matches:Z
    :catch_3
    move-exception v6

    goto :goto_0

    .line 253
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    return-void
.end method

.method static clearCacheDir()V
    .locals 4

    .prologue
    .line 323
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    .line 324
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 325
    .local v1, entries:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 331
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 329
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 391
    :cond_0
    return-void
.end method

.method static convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, new_array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 493
    .local v3, oldValue:Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 494
    .local v1, newValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 495
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    .end local v1           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method static convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v3, outputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 506
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 509
    .local v4, value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, decodedObject:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_0
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 513
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 518
    .end local v0           #decodedObject:Ljava/lang/Object;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "key"

    .prologue
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"

    .prologue
    .line 749
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 750
    .local v2, object:Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, iso:Ljava/lang/String;
    :try_start_0
    const-string v3, "__type"

    const-string v4, "Date"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    const-string v3, "iso"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    return-object v2

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "object"

    .prologue
    const/4 v12, 0x0

    .line 523
    instance-of v13, p0, Lorg/json/JSONObject;

    if-eqz v13, :cond_0

    move-object v3, p0

    .line 524
    check-cast v3, Lorg/json/JSONObject;

    .line 529
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v13, "__op"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, opString:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 532
    :try_start_0
    invoke-static {v3}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 589
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v9           #opString:Ljava/lang/String;
    :goto_0
    return-object v10

    :cond_0
    move-object v10, v12

    .line 526
    goto :goto_0

    .line 533
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v9       #opString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 534
    .local v1, e:Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 538
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    const-string v13, "__type"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 539
    .local v11, typeString:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 540
    invoke-static {v3}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    goto :goto_0

    .line 543
    :cond_2
    const-string v13, "Date"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 544
    const-string v12, "iso"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, iso:Ljava/lang/String;
    invoke-static {v2}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    goto :goto_0

    .line 548
    .end local v2           #iso:Ljava/lang/String;
    :cond_3
    const-string v13, "Bytes"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 549
    const-string v12, "base64"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, base64:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_0

    .line 553
    .end local v0           #base64:Ljava/lang/String;
    :cond_4
    const-string v13, "Pointer"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 554
    const-string v12, "className"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "objectId"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v10

    goto :goto_0

    .line 558
    :cond_5
    const-string v13, "File"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 559
    new-instance v10, Lcom/parse/ParseFile;

    const-string v12, "name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "url"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_6
    const-string v13, "GeoPoint"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 565
    :try_start_1
    const-string v12, "latitude"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 566
    .local v4, latitude:D
    const-string v12, "longitude"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 570
    .local v6, longitude:D
    new-instance v10, Lcom/parse/ParseGeoPoint;

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto/16 :goto_0

    .line 567
    .end local v4           #latitude:D
    .end local v6           #longitude:D
    :catch_1
    move-exception v1

    .line 568
    .restart local v1       #e:Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 573
    .end local v1           #e:Lorg/json/JSONException;
    :cond_7
    const-string v13, "Object"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 574
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 576
    .local v8, nested:Lorg/json/JSONObject;
    :try_start_2
    const-string v13, "data"

    invoke-virtual {v8, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 580
    const-string v13, "className"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v10

    .line 581
    .local v10, output:Lcom/parse/ParseObject;
    invoke-virtual {v10, v8}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 577
    .end local v10           #output:Lcom/parse/ParseObject;
    :catch_2
    move-exception v1

    .line 578
    .restart local v1       #e:Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 585
    .end local v1           #e:Lorg/json/JSONException;
    .end local v8           #nested:Lorg/json/JSONObject;
    :cond_8
    const-string v13, "Relation"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 586
    new-instance v10, Lcom/parse/ParseRelation;

    const-string v13, "className"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/parse/ParseRelation;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v10, v12

    .line 589
    goto/16 :goto_0
.end method

.method static encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 6
    .parameter
    .parameter "allowParseObjects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 667
    .local v1, new_array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 668
    .local v2, o:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid type for value in array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    :cond_0
    invoke-static {v2, p1}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 674
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method static declared-synchronized encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 745
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;
    .locals 13
    .parameter "object"
    .parameter "allowParseObjects"

    .prologue
    .line 594
    :try_start_0
    instance-of v10, p0, Ljava/util/Date;

    if-eqz v10, :cond_1

    .line 595
    check-cast p0, Ljava/util/Date;

    .end local p0
    invoke-static {p0}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v5

    .line 654
    :cond_0
    :goto_0
    return-object v5

    .line 598
    .restart local p0
    :cond_1
    instance-of v10, p0, [B

    if-eqz v10, :cond_2

    .line 599
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v5, json:Lorg/json/JSONObject;
    const-string v10, "__type"

    const-string v11, "Bytes"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string v10, "base64"

    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    .end local v5           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 651
    .local v2, e:Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 605
    .end local v2           #e:Lorg/json/JSONException;
    .restart local p0
    :cond_2
    :try_start_1
    instance-of v10, p0, Lcom/parse/ParseObject;

    if-eqz v10, :cond_4

    .line 606
    if-nez p1, :cond_3

    .line 607
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ParseObjects not allowed here"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 609
    :cond_3
    check-cast p0, Lcom/parse/ParseObject;

    .end local p0
    invoke-static {p0}, Lcom/parse/Parse;->parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 612
    .restart local p0
    :cond_4
    instance-of v10, p0, Lcom/parse/ParseFile;

    if-eqz v10, :cond_5

    .line 613
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseFile;

    move-object v3, v0

    .line 614
    .local v3, file:Lcom/parse/ParseFile;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 615
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v10, "__type"

    const-string v11, "File"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v10, "url"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v10, "name"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 621
    .end local v3           #file:Lcom/parse/ParseFile;
    .end local v5           #json:Lorg/json/JSONObject;
    :cond_5
    instance-of v10, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v10, :cond_6

    .line 622
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object v8, v0

    .line 623
    .local v8, point:Lcom/parse/ParseGeoPoint;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 624
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v10, "__type"

    const-string v11, "GeoPoint"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v10, "latitude"

    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 626
    const-string v10, "longitude"

    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 630
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v8           #point:Lcom/parse/ParseGeoPoint;
    :cond_6
    instance-of v10, p0, Lcom/parse/ParseACL;

    if-eqz v10, :cond_7

    .line 631
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 632
    .local v1, acl:Lcom/parse/ParseACL;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    goto/16 :goto_0

    .line 635
    .end local v1           #acl:Lcom/parse/ParseACL;
    :cond_7
    instance-of v10, p0, Ljava/util/Map;

    if-eqz v10, :cond_8

    .line 637
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 638
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 639
    .restart local v5       #json:Lorg/json/JSONObject;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 640
    .local v7, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, p1}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 645
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    instance-of v10, p0, Lcom/parse/ParseRelation;

    if-eqz v10, :cond_9

    .line 646
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v9, v0

    .line 647
    .local v9, relation:Lcom/parse/ParseRelation;
    invoke-virtual {v9}, Lcom/parse/ParseRelation;->encodeToJSON()Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 654
    .end local v9           #relation:Lcom/parse/ParseRelation;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static declared-synchronized getCommandCache()Lcom/parse/ParseCommandCache;
    .locals 3

    .prologue
    .line 448
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 450
    new-instance v0, Lcom/parse/ParseCommandCache;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 452
    :cond_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 4
    .parameter "cacheFile"

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 312
    :goto_0
    return-wide v2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getKeyValueCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 286
    const-class v3, Lcom/parse/Parse;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 287
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 288
    .local v0, appCacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "ParseKeyValueCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v1, parseCacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    monitor-exit v3

    return-object v1

    .line 292
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not create Parse cache directory"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .end local v1           #parseCacheDir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "key"

    .prologue
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, suffix:Ljava/lang/String;
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/parse/Parse$2;

    invoke-direct {v3, v1}, Lcom/parse/Parse$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 302
    .local v0, matches:[Ljava/io/File;
    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/parse/Parse;->logLevel:I

    return v0
.end method

.method static declared-synchronized getParseDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 221
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 222
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 477
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 478
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "applicationId"
    .parameter "clientKey"

    .prologue
    .line 111
    sput-object p1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 112
    sput-object p2, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 118
    new-instance v0, Lcom/parse/Parse$1;

    const-string v1, "Parse.initialize Starting Command Cache"

    invoke-direct {v0, v1}, Lcom/parse/Parse$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/Parse$1;->start()V

    .line 126
    :cond_0
    return-void
.end method

.method static isContainerObject(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 773
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 658
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 795
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 796
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .parameter "maxAgeMilliseconds"

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-static {p0, p1, p2}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, raw:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 436
    :goto_0
    return-object v1

    .line 428
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, tokener:Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 432
    .local v1, o:Ljava/lang/Object;
    goto :goto_0

    .line 433
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "com.parse.Parse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "corrupted cache for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    invoke-static {p0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    move-object v0, p0

    .line 764
    .local v0, finalObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/parse/Parse$4;

    invoke-direct {v1, v0}, Lcom/parse/Parse$4;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .parameter "key"
    .parameter "maxAgeMilliseconds"

    .prologue
    const/4 v7, 0x0

    .line 396
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 397
    .local v3, file:Ljava/io/File;
    if-nez v3, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v7

    .line 401
    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 402
    .local v4, now:Ljava/util/Date;
    const-wide/16 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 403
    .local v5, oldestAcceptableAge:J
    invoke-static {v3}, Lcom/parse/Parse;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-ltz v8, :cond_0

    .line 408
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 411
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v2, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .local v2, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 413
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 414
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 415
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 416
    .end local v0           #bytes:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Ljava/io/IOException;
    const-string v8, "com.parse.Parse"

    const-string v9, "error reading from cache"

    invoke-static {v8, v9, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "messageLogLevel"
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 160
    sget v0, Lcom/parse/Parse;->logLevel:I

    if-lt p0, v0, :cond_0

    .line 161
    if-nez p3, :cond_1

    .line 162
    sget v0, Lcom/parse/Parse;->logLevel:I

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget v0, Lcom/parse/Parse;->logLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 178
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 202
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 186
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 170
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 194
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    return-void
.end method

.method static maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .parameter "value"
    .parameter "allowParseObjects"

    .prologue
    .line 681
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 683
    check-cast v1, Ljava/util/List;

    .line 684
    .local v1, input:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v1, p1}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p0

    .line 699
    .end local v1           #input:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 687
    .restart local p0
    :cond_1
    instance-of v3, p0, Lcom/parse/ParseFieldOperation;

    if-eqz v3, :cond_2

    .line 689
    :try_start_0
    check-cast p0, Lcom/parse/ParseFieldOperation;

    .end local p0
    invoke-interface {p0}, Lcom/parse/ParseFieldOperation;->encode()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 695
    .end local v0           #e:Lorg/json/JSONException;
    .restart local p0
    :cond_2
    invoke-static {p0, p1}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 696
    .local v2, json:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    move-object p0, v2

    .line 699
    goto :goto_0
.end method

.method static maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 705
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 706
    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode an association with an unsaved ParseObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "dateString"

    .prologue
    .line 736
    const-class v2, Lcom/parse/Parse;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 740
    :goto_0
    monitor-exit v2

    return-object v1

    .line 737
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    const/4 v1, 0x0

    goto :goto_0

    .line 736
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 4
    .parameter "pointedTo"

    .prologue
    .line 716
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 718
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 719
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    const-string v2, "objectId"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    :goto_0
    return-object v1

    .line 723
    :cond_0
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v2, "localId"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static declared-synchronized recursiveDelete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 227
    const-class v5, Lcom/parse/Parse;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 229
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit v5

    return-void

    .line 227
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 482
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "key"
    .parameter "value"

    .prologue
    .line 335
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 336
    .local v9, prior:Ljava/io/File;
    if-eqz v9, :cond_0

    .line 337
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/parse/Parse;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 341
    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 342
    .local v8, out:Ljava/io/FileOutputStream;
    const-string v10, "UTF-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 343
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v8           #out:Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 350
    .local v3, files:[Ljava/io/File;
    array-length v7, v3

    .line 351
    .local v7, numFiles:I
    const/4 v6, 0x0

    .line 352
    .local v6, numBytes:I
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 353
    .local v2, file:Ljava/io/File;
    int-to-long v10, v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v6, v10

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    .end local v2           #file:Ljava/io/File;
    :cond_1
    sget v10, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v7, v10, :cond_2

    sget v10, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-le v6, v10, :cond_3

    .line 361
    :cond_2
    new-instance v10, Lcom/parse/Parse$3;

    invoke-direct {v10}, Lcom/parse/Parse$3;-><init>()V

    invoke-static {v3, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 372
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 373
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v7, v7, -0x1

    .line 374
    int-to-long v10, v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v6, v10

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 377
    sget v10, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v7, v10, :cond_4

    sget v10, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-gt v6, v10, :cond_4

    .line 382
    .end local v2           #file:Ljava/io/File;
    :cond_3
    return-void

    .line 372
    .restart local v2       #file:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 345
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #numBytes:I
    .end local v7           #numFiles:I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 344
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method static setContextIfNeeded(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 215
    sput-object p0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 217
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 147
    sput p0, Lcom/parse/Parse;->logLevel:I

    .line 148
    return-void
.end method
