.class Lcom/parse/ParseRequestRetryer$1;
.super Lcom/parse/BackgroundTask;
.source "ParseRequestRetryer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequestRetryer;->sendOneRequest(Lcom/parse/ProgressCallback;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequestRetryer;

.field final synthetic val$progressToReport:I


# direct methods
.method constructor <init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ParseCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    iput p3, p0, Lcom/parse/ParseRequestRetryer$1;->val$progressToReport:I

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/parse/ParseRequestRetryer$1;->val$progressToReport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/parse/ParseRequestRetryer$1;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
