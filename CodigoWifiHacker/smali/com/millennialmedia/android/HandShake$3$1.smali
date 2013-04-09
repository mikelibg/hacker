.class Lcom/millennialmedia/android/HandShake$3$1;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/HandShake$3;

.field final synthetic val$overlayDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake$3;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$3$1;->this$1:Lcom/millennialmedia/android/HandShake$3;

    iput-object p2, p0, Lcom/millennialmedia/android/HandShake$3$1;->val$overlayDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$3$1;->val$overlayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 633
    return-void
.end method
