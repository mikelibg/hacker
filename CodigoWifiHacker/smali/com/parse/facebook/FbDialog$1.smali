.class Lcom/parse/facebook/FbDialog$1;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/facebook/FbDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/facebook/FbDialog;


# direct methods
.method constructor <init>(Lcom/parse/facebook/FbDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parse/facebook/FbDialog$1;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$1;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    .line 102
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$1;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-virtual {v0}, Lcom/parse/facebook/FbDialog;->dismiss()V

    .line 103
    return-void
.end method
