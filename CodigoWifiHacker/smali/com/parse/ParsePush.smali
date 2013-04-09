.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field private mChannelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lorg/json/JSONObject;

.field private mExpirationTime:Ljava/lang/Long;

.field private mExpirationTimeInterval:Ljava/lang/Long;

.field private mPushToAndroid:Ljava/lang/Boolean;

.field private mPushToIOS:Ljava/lang/Boolean;

.field private mQuery:Lcom/parse/ParseQuery;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 24
    iput-object v0, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    .line 25
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 26
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 27
    iput-object v0, p0, Lcom/parse/ParsePush;->mPushToIOS:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lcom/parse/ParsePush;->mPushToAndroid:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)V
    .locals 1
    .parameter "data"
    .parameter "query"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V

    .line 87
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "data"
    .parameter "query"
    .parameter "callback"

    .prologue
    .line 102
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 103
    .local v0, push:Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 104
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 106
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)V
    .locals 1
    .parameter "message"
    .parameter "query"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V

    .line 53
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "message"
    .parameter "query"
    .parameter "callback"

    .prologue
    .line 67
    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    .line 68
    .local v0, push:Lcom/parse/ParsePush;
    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 71
    return-void
.end method


# virtual methods
.method buildCommand()Lcom/parse/ParseCommand;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "client_push"

    invoke-direct {v0, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, command:Lcom/parse/ParseCommand;
    iget-object v5, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    if-nez v5, :cond_0

    .line 279
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot send a push without calling either setMessage or setData"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_0
    const-string v5, "data"

    iget-object v6, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 284
    iget-object v5, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    if-eqz v5, :cond_4

    .line 285
    const-string v5, "where"

    iget-object v6, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    invoke-virtual {v6}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 295
    :goto_0
    iget-object v5, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    if-eqz v5, :cond_6

    .line 296
    const-string v5, "expiration_time"

    iget-object v6, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    .line 301
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    if-nez v5, :cond_3

    .line 303
    iget-object v5, p0, Lcom/parse/ParsePush;->mPushToAndroid:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/parse/ParsePush;->mPushToAndroid:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    move v1, v4

    .line 304
    .local v1, pushToAndroid:Z
    :goto_2
    iget-object v5, p0, Lcom/parse/ParsePush;->mPushToIOS:Ljava/lang/Boolean;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/parse/ParsePush;->mPushToIOS:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v4

    .line 305
    .local v2, pushToIOS:Z
    :goto_3
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 316
    .end local v1           #pushToAndroid:Z
    .end local v2           #pushToIOS:Z
    :cond_3
    :goto_4
    return-object v0

    .line 286
    :cond_4
    iget-object v5, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    if-nez v5, :cond_5

    .line 288
    const-string v5, "channel"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_5
    const-string v5, "channels"

    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 297
    :cond_6
    iget-object v5, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 298
    const-string v5, "expiration_time_interval"

    iget-object v6, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    move v1, v3

    .line 303
    goto :goto_2

    .restart local v1       #pushToAndroid:Z
    :cond_8
    move v2, v3

    .line 304
    goto :goto_3

    .line 307
    .restart local v2       #pushToIOS:Z
    :cond_9
    if-eqz v2, :cond_a

    .line 308
    const-string v3, "type"

    const-string v4, "ios"

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 309
    :cond_a
    if-eqz v1, :cond_b

    .line 310
    const-string v3, "type"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 312
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot push if both pushToIOS and pushToAndroid are false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public clearExpiration()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 187
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 188
    return-void
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/parse/ParsePush;->buildCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public sendInBackground()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 271
    return-void
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 255
    new-instance v0, Lcom/parse/ParsePush$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePush$1;-><init>(Lcom/parse/ParsePush;Lcom/parse/ParseCallback;)V

    .line 262
    .local v0, sendTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 263
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "channel cannot be null"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 117
    iget-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    .line 119
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, channels:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "channels collection cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, channel:Ljava/lang/String;
    if-eqz v0, :cond_1

    move v2, v3

    :goto_2
    const-string v5, "channel cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    move v2, v4

    .line 128
    goto :goto_0

    .restart local v0       #channel:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    move v2, v4

    .line 130
    goto :goto_2

    .line 132
    .end local v0           #channel:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 133
    iget-object v2, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    .line 135
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    .line 217
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 164
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 166
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 178
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 179
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "alert"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 231
    return-void

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .parameter "pushToAndroid"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mPushToAndroid:Ljava/lang/Boolean;

    .line 208
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .parameter "pushToIOS"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 197
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mPushToIOS:Ljava/lang/Boolean;

    .line 198
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    invoke-static {v0, v3}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/parse/ParsePush;->mPushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush;->mPushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v1, v0}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_Installation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can only push to a query for Installations"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 152
    iput-object p1, p0, Lcom/parse/ParsePush;->mQuery:Lcom/parse/ParseQuery;

    .line 153
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_1
.end method
