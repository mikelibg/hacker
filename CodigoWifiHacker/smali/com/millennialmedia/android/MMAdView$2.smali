.class Lcom/millennialmedia/android/MMAdView$2;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$overlayDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$2;->this$0:Lcom/millennialmedia/android/MMAdView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$2;->val$overlayDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$2;->val$overlayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 431
    return-void
.end method
