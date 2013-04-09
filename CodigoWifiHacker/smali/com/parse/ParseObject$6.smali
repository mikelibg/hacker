.class Lcom/parse/ParseObject$6;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/ParseCommand$InternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V
    .locals 2
    .parameter "command"
    .parameter "result"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p1, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    check-cast p2, Lorg/json/JSONObject;

    .end local p2
    invoke-virtual {v0, v1, p2}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1033
    return-void
.end method
