.class abstract Lcom/parse/BackgroundTask;
.super Landroid/os/AsyncTask;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/parse/ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private exception:Lcom/parse/ParseException;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    .local p1, theCallback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<TT;>;"
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    .line 30
    iput-object p1, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    .line 31
    return-void
.end method

.method static executeTask(Lcom/parse/BackgroundTask;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/BackgroundTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, task:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<*>;"
    const/4 v1, 0x0

    .line 64
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/BackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    const/4 v2, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/BackgroundTask;->run()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Lcom/parse/ParseException;
    iput-object v0, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    goto :goto_0
.end method

.method executeInThisThread()V
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    .line 59
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/BackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    .local p0, this:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<TT;>;"
    iget-object v0, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    iget-object v1, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCallback;->internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 52
    :cond_0
    return-void
.end method

.method public abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation
.end method
