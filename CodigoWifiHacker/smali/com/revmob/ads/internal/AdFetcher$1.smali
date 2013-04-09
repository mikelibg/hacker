.class Lcom/revmob/ads/internal/AdFetcher$1;
.super Ljava/lang/Thread;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/internal/AdFetcher;->fetch(Lcom/revmob/ads/internal/OnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/internal/AdFetcher;

.field final synthetic val$entity:Ljava/lang/String;

.field final synthetic val$listener:Lcom/revmob/ads/internal/OnLoadListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/internal/AdFetcher;Ljava/lang/String;Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/revmob/ads/internal/AdFetcher$1;->this$0:Lcom/revmob/ads/internal/AdFetcher;

    iput-object p2, p0, Lcom/revmob/ads/internal/AdFetcher$1;->val$entity:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/ads/internal/AdFetcher$1;->val$listener:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/revmob/ads/internal/AdFetcher$1;->this$0:Lcom/revmob/ads/internal/AdFetcher;

    iget-object v1, v1, Lcom/revmob/ads/internal/AdFetcher;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    iget-object v2, p0, Lcom/revmob/ads/internal/AdFetcher$1;->this$0:Lcom/revmob/ads/internal/AdFetcher;

    iget-object v2, v2, Lcom/revmob/ads/internal/AdFetcher;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/revmob/ads/internal/AdFetcher$1;->val$entity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/revmob/ads/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 65
    .local v0, response:Lorg/apache/http/HttpResponse;
    iget-object v1, p0, Lcom/revmob/ads/internal/AdFetcher$1;->this$0:Lcom/revmob/ads/internal/AdFetcher;

    iget-object v2, p0, Lcom/revmob/ads/internal/AdFetcher$1;->val$listener:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-virtual {v1, v0, v2}, Lcom/revmob/ads/internal/AdFetcher;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 66
    return-void
.end method
