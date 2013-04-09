.class final Lcom/parse/ParseUser$3;
.super Lcom/parse/BackgroundTask;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Lcom/parse/ParseUser;>;"
    iput-object p2, p0, Lcom/parse/ParseUser$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$3;->val$password:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/parse/ParseUser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v1, p0, Lcom/parse/ParseUser$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$3;->val$password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/parse/ParseUser;->logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v0

    .line 654
    .local v0, user:Lcom/parse/ParseUser;
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
    .line 650
    invoke-virtual {p0}, Lcom/parse/ParseUser$3;->run()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
