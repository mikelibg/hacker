.class Lcom/parse/ParseUser$5;
.super Lcom/parse/SaveCallback;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$callback:Lcom/parse/SaveCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$5;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Lcom/parse/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 840
    if-nez p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 842
    iget-object v0, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 843
    invoke-static {}, Lcom/parse/ParseUser;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-static {}, Lcom/parse/ParseUser;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-interface {v0, v2}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$5;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/parse/ParseUser$5;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v2, p1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 850
    :cond_1
    return-void
.end method
