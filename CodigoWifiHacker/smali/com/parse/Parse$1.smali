.class final Lcom/parse/Parse$1;
.super Ljava/lang/Thread;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    .line 123
    return-void
.end method
