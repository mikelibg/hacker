.class Lcom/parse/ParseUser$9;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/ParseCommand$InternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLaziness(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V
    .locals 2
    .parameter "command"
    .parameter "result"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    const-string v1, "create"

    check-cast p2, Lorg/json/JSONObject;

    .end local p2
    invoke-virtual {v0, v1, p2}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 990
    return-void
.end method