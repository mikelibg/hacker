.class Lcom/airpush/android/OptinActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OptinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/OptinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/OptinActivity;


# direct methods
.method private constructor <init>(Lcom/airpush/android/OptinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/airpush/android/OptinActivity$MyWebViewClient;->this$0:Lcom/airpush/android/OptinActivity;

    .line 132
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/airpush/android/OptinActivity;Lcom/airpush/android/OptinActivity$MyWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/airpush/android/OptinActivity$MyWebViewClient;-><init>(Lcom/airpush/android/OptinActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/airpush/android/OptinActivity$MyWebViewClient;->this$0:Lcom/airpush/android/OptinActivity;

    invoke-virtual {v1, v0}, Lcom/airpush/android/OptinActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method
