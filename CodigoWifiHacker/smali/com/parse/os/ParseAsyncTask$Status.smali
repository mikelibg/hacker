.class public final enum Lcom/parse/os/ParseAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/os/ParseAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/os/ParseAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/os/ParseAsyncTask$Status;

.field public static final enum FINISHED:Lcom/parse/os/ParseAsyncTask$Status;

.field public static final enum PENDING:Lcom/parse/os/ParseAsyncTask$Status;

.field public static final enum RUNNING:Lcom/parse/os/ParseAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/parse/os/ParseAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/parse/os/ParseAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask$Status;->PENDING:Lcom/parse/os/ParseAsyncTask$Status;

    .line 200
    new-instance v0, Lcom/parse/os/ParseAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/parse/os/ParseAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask$Status;->RUNNING:Lcom/parse/os/ParseAsyncTask$Status;

    .line 204
    new-instance v0, Lcom/parse/os/ParseAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/parse/os/ParseAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask$Status;->FINISHED:Lcom/parse/os/ParseAsyncTask$Status;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parse/os/ParseAsyncTask$Status;

    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->PENDING:Lcom/parse/os/ParseAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->RUNNING:Lcom/parse/os/ParseAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->FINISHED:Lcom/parse/os/ParseAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parse/os/ParseAsyncTask$Status;->$VALUES:[Lcom/parse/os/ParseAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/os/ParseAsyncTask$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 192
    const-class v0, Lcom/parse/os/ParseAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/os/ParseAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/parse/os/ParseAsyncTask$Status;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/parse/os/ParseAsyncTask$Status;->$VALUES:[Lcom/parse/os/ParseAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/parse/os/ParseAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/os/ParseAsyncTask$Status;

    return-object v0
.end method