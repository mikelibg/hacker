.class Lcom/parse/ParseObject$8;
.super Lcom/parse/GetCallback;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->refreshInBackground(Lcom/parse/RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$callback:Lcom/parse/RefreshCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/RefreshCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$8;->val$callback:Lcom/parse/RefreshCallback;

    invoke-direct {p0}, Lcom/parse/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 1
    .parameter "object"
    .parameter "e"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/parse/ParseObject$8;->val$callback:Lcom/parse/RefreshCallback;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/parse/ParseObject$8;->val$callback:Lcom/parse/RefreshCallback;

    invoke-virtual {v0, p1, p2}, Lcom/parse/RefreshCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 1122
    :cond_0
    return-void
.end method
