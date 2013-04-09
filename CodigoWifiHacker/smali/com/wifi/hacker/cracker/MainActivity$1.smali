.class Lcom/wifi/hacker/cracker/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifi/hacker/cracker/MainActivity;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/MainActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wifi/hacker/cracker/MainActivity$1;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/MainActivity$1;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    move-object v0, v1

    .line 52
    check-cast v0, Lcom/wifi/hacker/cracker/NetworkDetails;

    .line 53
    .local v0, networkDetails:Lcom/wifi/hacker/cracker/NetworkDetails;
    new-instance v2, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;

    iget-object v3, p0, Lcom/wifi/hacker/cracker/MainActivity$1;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v4, p0, Lcom/wifi/hacker/cracker/MainActivity$1;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    invoke-virtual {v4}, Lcom/wifi/hacker/cracker/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;-><init>(Lcom/wifi/hacker/cracker/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method
