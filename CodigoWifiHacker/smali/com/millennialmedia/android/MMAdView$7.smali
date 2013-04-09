.class final Lcom/millennialmedia/android/MMAdView$7;
.super Ljava/lang/Thread;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->startConversionTrackerWithGoalId(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$auid:Ljava/lang/String;

.field final synthetic val$goalId:Ljava/lang/String;

.field final synthetic val$isFirstLaunch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$7;->val$goalId:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$7;->val$auid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/millennialmedia/android/MMAdView$7;->val$isFirstLaunch:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1327
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 1330
    .local v1, tc:Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$7;->val$goalId:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$7;->val$auid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/millennialmedia/android/MMAdView$7;->val$isFirstLaunch:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/millennialmedia/android/HttpGetRequest;->trackConversion(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
