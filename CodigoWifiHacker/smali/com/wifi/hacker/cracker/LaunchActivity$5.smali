.class Lcom/wifi/hacker/cracker/LaunchActivity$5;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/LaunchActivity;->setupApp(Ljava/lang/String;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

.field final synthetic val$showAdMethod:Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;

.field final synthetic val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/LaunchActivity;Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->val$showAdMethod:Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;

    iput-object p3, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->val$showAdMethod:Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;

    iget-object v1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v1}, Lcom/wifi/hacker/cracker/LaunchActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;->run(Landroid/app/Activity;)V

    .line 148
    iget-object v0, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v0}, Lcom/wifi/hacker/cracker/LaunchActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$5;->val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->showTabViewInterstitial(Landroid/app/Activity;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 149
    return-void
.end method
