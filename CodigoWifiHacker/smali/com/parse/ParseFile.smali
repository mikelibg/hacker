.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFile$ParseFileState;
    }
.end annotation


# instance fields
.field private callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/GetDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private currentCommand:Lcom/parse/ParseCommand;

.field private currentTask:Lcom/parse/BackgroundTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/BackgroundTask",
            "<*>;"
        }
    .end annotation
.end field

.field private data:[B

.field private fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

.field private name:Ljava/lang/String;

.field private previousState:Lcom/parse/ParseFile$ParseFileState;

.field private state:Lcom/parse/ParseFile$ParseFileState;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    .line 34
    iput-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    .line 35
    iput-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->AWAITING_FETCH:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .parameter "name"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    .line 34
    iput-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    .line 35
    iput-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    .line 83
    array-length v0, p2

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %i bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    .line 91
    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 92
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    .line 34
    iput-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    .line 35
    iput-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    .line 61
    array-length v0, p1

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %i bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 68
    iput-object p1, p0, Lcom/parse/ParseFile;->data:[B

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseFile;ZLcom/parse/ProgressCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->save(ZLcom/parse/ProgressCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseFile;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private constructFileUploadCommand()Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "upload_file"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    .line 177
    iget-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 179
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    const-string v1, "name"

    iget-object v2, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    return-object v0
.end method

.method private handleFileUploadResult(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V
    .locals 5
    .parameter "result"
    .parameter "progressCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v2, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    if-eq v1, v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    if-nez v1, :cond_1

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V

    .line 249
    :cond_1
    new-instance v0, Lcom/parse/ParseRequestRetryer;

    iget-object v1, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parse/ParseRequestRetryer;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V

    .line 250
    .local v0, retryer:Lcom/parse/ParseRequestRetryer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseRequestRetryer;->go(Lcom/parse/ProgressCallback;)[B

    .line 251
    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->DATA_AVAILABLE:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v1}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    goto :goto_0
.end method

.method private prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V
    .locals 11
    .parameter "result"
    .parameter "progressCallback"

    .prologue
    .line 187
    const/4 v6, 0x0

    .line 190
    .local v6, postParams:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 191
    const-string v7, "url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 192
    const-string v7, "post_params"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 197
    const/4 v5, 0x0

    .line 198
    .local v5, mimeType:Ljava/lang/String;
    new-instance v1, Lcom/parse/CountingMultipartEntity;

    sget-object v7, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-direct {v1, v7, p2}, Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V

    .line 201
    .local v1, entity:Lcom/parse/CountingMultipartEntity;
    iget-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 202
    iget-object v7, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .end local v2           #extension:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    .line 206
    const-string v5, "application/octet-stream"

    .line 210
    :cond_1
    :try_start_1
    const-string v7, "Content-Type"

    new-instance v8, Lcom/parse/entity/mime/content/StringBody;

    invoke-direct {v8, v5}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 216
    .local v4, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, key:Ljava/lang/String;
    :try_start_2
    new-instance v7, Lcom/parse/entity/mime/content/StringBody;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/parse/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v7}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 193
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #entity:Lcom/parse/CountingMultipartEntity;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 194
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 211
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #entity:Lcom/parse/CountingMultipartEntity;
    .restart local v5       #mimeType:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 223
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    .line 224
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    const-string v7, "file"

    new-instance v8, Lcom/parse/entity/mime/content/ByteArrayBody;

    iget-object v9, p0, Lcom/parse/ParseFile;->data:[B

    const-string v10, "file"

    invoke-direct {v8, v9, v5, v10}, Lcom/parse/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/parse/CountingMultipartEntity;->addPart(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V

    .line 231
    :try_start_3
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "post_url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 236
    iget-object v7, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 237
    return-void

    .line 232
    :catch_4
    move-exception v0

    .line 233
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private revertState()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parse/ParseFile;->previousState:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 117
    return-void
.end method

.method private save(ZLcom/parse/ProgressCallback;)V
    .locals 5
    .parameter "needsToSetState"
    .parameter "progressCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 263
    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/parse/ParseFile;->assertNotRunning()V

    .line 265
    iget-object v3, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v4, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    if-eq v3, v4, :cond_0

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v3, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v3}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 272
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseFile;->constructFileUploadCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 273
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 274
    .local v2, result:Lorg/json/JSONObject;
    invoke-direct {p0, v2, p2}, Lcom/parse/ParseFile;->handleFileUploadResult(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v0           #command:Lcom/parse/ParseCommand;
    .end local v2           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Lcom/parse/ParseException;
    invoke-direct {p0}, Lcom/parse/ParseFile;->revertState()V

    .line 277
    throw v1
.end method

.method private setState(Lcom/parse/ParseFile$ParseFileState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    if-eq p1, v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    if-eq v0, p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    iput-object v0, p0, Lcom/parse/ParseFile;->previousState:Lcom/parse/ParseFile$ParseFileState;

    .line 110
    iput-object p1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    .line 112
    :cond_1
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected assertNotRunning()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    if-ne v0, v1, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/parse/ParseFile;->fileUploadPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/parse/ParseFile;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/BackgroundTask;->cancel(Z)Z

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    invoke-direct {p0}, Lcom/parse/ParseFile;->revertState()V

    .line 443
    return-void
.end method

.method public getData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseFile;->getData(ZLcom/parse/ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getData(ZLcom/parse/ProgressCallback;)[B
    .locals 6
    .parameter "needsToSetState"
    .parameter "progressCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/parse/ParseFile;->data:[B

    .line 363
    :goto_0
    return-object v2

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/parse/ParseFile;->assertNotRunning()V

    .line 348
    sget-object v2, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v2}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 352
    :cond_1
    :try_start_0
    new-instance v1, Lcom/parse/ParseRequestRetryer;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/parse/ParseRequestRetryer;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V

    .line 353
    .local v1, retryer:Lcom/parse/ParseRequestRetryer;
    invoke-virtual {v1, p2}, Lcom/parse/ParseRequestRetryer;->go(Lcom/parse/ProgressCallback;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseFile;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    sget-object v2, Lcom/parse/ParseFile$ParseFileState;->DATA_AVAILABLE:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v2}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 363
    iget-object v2, p0, Lcom/parse/ParseFile;->data:[B

    goto :goto_0

    .line 354
    .end local v1           #retryer:Lcom/parse/ParseRequestRetryer;
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lcom/parse/ParseFile;->revertState()V

    .line 356
    new-instance v2, Lcom/parse/ParseException;

    const/16 v3, 0x64

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 357
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, e:Lcom/parse/ParseException;
    invoke-direct {p0}, Lcom/parse/ParseFile;->revertState()V

    .line 359
    throw v0
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1
    .parameter "dataCallback"

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V

    .line 421
    return-void
.end method

.method public declared-synchronized getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 4
    .parameter "dataCallback"
    .parameter "progressCallback"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/parse/ParseFile;->data:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/parse/GetDataCallback;->done([BLcom/parse/ParseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v3, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    if-ne v2, v3, :cond_1

    .line 384
    iget-object v2, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 388
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/parse/ParseFile;->assertNotRunning()V

    .line 389
    sget-object v2, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v2}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 390
    iget-object v2, p0, Lcom/parse/ParseFile;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Lcom/parse/ParseFile$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;)V

    .line 403
    .local v1, myCallback:Lcom/parse/GetDataCallback;
    new-instance v0, Lcom/parse/ParseFile$3;

    invoke-direct {v0, p0, v1, p2}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;Lcom/parse/ParseCallback;Lcom/parse/ProgressCallback;)V

    .line 410
    .local v0, getTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<[B>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->AWAITING_FETCH:Lcom/parse/ParseFile$ParseFileState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseFile;->save(ZLcom/parse/ProgressCallback;)V

    .line 259
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 329
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V

    .line 322
    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 3
    .parameter "saveCallback"
    .parameter "progressCallback"

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseFile;->assertNotRunning()V

    .line 295
    iget-object v1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$ParseFileState;

    sget-object v2, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    if-eq v1, v2, :cond_0

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    invoke-direct {p0, v1}, Lcom/parse/ParseFile;->setState(Lcom/parse/ParseFile$ParseFileState;)V

    .line 302
    new-instance v0, Lcom/parse/ParseFile$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ParseFile;Lcom/parse/ParseCallback;Lcom/parse/ProgressCallback;)V

    .line 310
    .local v0, saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    iput-object v0, p0, Lcom/parse/ParseFile;->currentTask:Lcom/parse/BackgroundTask;

    .line 311
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v0           #saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
