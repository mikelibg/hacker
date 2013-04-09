.class public final Lcom/google/mygson/internal/bind/TimeTypeAdapter;
.super Lcom/google/mygson/TypeAdapter;
.source "TimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/mygson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/mygson/internal/bind/TimeTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/mygson/internal/bind/TimeTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized read(Lcom/google/mygson/stream/JsonReader;)Ljava/sql/Time;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v2, 0x0

    .line 57
    :goto_0
    monitor-exit p0

    return-object v2

    .line 56
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 57
    .local v0, date:Ljava/util/Date;
    new-instance v2, Ljava/sql/Time;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v0           #date:Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/text/ParseException;
    :try_start_2
    new-instance v2, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .end local v1           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p2, Ljava/sql/Time;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/sql/Time;)V

    return-void
.end method

.method public declared-synchronized write(Lcom/google/mygson/stream/JsonWriter;Ljava/sql/Time;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method