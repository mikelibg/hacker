.class public final enum Lcom/apperhand/device/android/b/b;
.super Ljava/lang/Enum;
.source "GsonWrapper.java"

# interfaces
.implements Lcom/apperhand/device/android/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/device/android/b/b;",
        ">;",
        "Lcom/apperhand/device/android/b/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apperhand/device/android/b/b;

.field private static final synthetic c:[Lcom/apperhand/device/android/b/b;


# instance fields
.field private b:Lcom/google/mygson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/apperhand/device/android/b/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/android/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/b/b;->a:Lcom/apperhand/device/android/b/b;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apperhand/device/android/b/b;

    sget-object v1, Lcom/apperhand/device/android/b/b;->a:Lcom/apperhand/device/android/b/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/apperhand/device/android/b/b;->c:[Lcom/apperhand/device/android/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Lcom/google/mygson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/mygson/GsonBuilder;-><init>()V

    const-class v1, [B

    new-instance v2, Lcom/apperhand/device/android/b/a;

    invoke-direct {v2}, Lcom/apperhand/device/android/b/a;-><init>()V

    invoke-virtual {v2}, Lcom/apperhand/device/android/b/a;->nullSafe()Lcom/google/mygson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/mygson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/mygson/GsonBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/mygson/GsonBuilder;->serializeNulls()Lcom/google/mygson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mygson/GsonBuilder;->disableHtmlEscaping()Lcom/google/mygson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mygson/GsonBuilder;->create()Lcom/google/mygson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/android/b/b;->b:Lcom/google/mygson/Gson;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/device/android/b/b;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/apperhand/device/android/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/b/b;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/device/android/b/b;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/apperhand/device/android/b/b;->c:[Lcom/apperhand/device/android/b/b;

    invoke-virtual {v0}, [Lcom/apperhand/device/android/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/device/android/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/android/b/b;->b:Lcom/google/mygson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Lcom/apperhand/device/a/d/f;

    sget-object v2, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not write JSON, string=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/android/b/b;->b:Lcom/google/mygson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/apperhand/device/a/d/f;

    sget-object v2, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not read JSON, object=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
