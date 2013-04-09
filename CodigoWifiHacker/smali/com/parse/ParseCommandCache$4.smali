.class Lcom/parse/ParseCommandCache$4;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$callback:Lcom/parse/ParseCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$callback:Lcom/parse/ParseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$callback:Lcom/parse/ParseCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/ParseCallback;->internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 565
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    #getter for: Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;
    invoke-static {v0}, Lcom/parse/ParseCommandCache;->access$100(Lcom/parse/ParseCommandCache;)Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    #getter for: Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;
    invoke-static {v0}, Lcom/parse/ParseCommandCache;->access$100(Lcom/parse/ParseCommandCache;)Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 568
    :cond_0
    return-void
.end method
