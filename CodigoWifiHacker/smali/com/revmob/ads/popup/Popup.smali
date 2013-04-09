.class public Lcom/revmob/ads/popup/Popup;
.super Lcom/revmob/ads/internal/Ad;
.source "Popup.java"


# static fields
.field public static final SHOW_IN_UI_THREAD_ON_SUCCESS_LISTENER:Lcom/revmob/ads/internal/OnLoadListener;


# instance fields
.field private final POPUP_CLICK_LISTENER_NO:Landroid/content/DialogInterface$OnClickListener;

.field private final POPUP_CLICK_LISTENER_YES:Landroid/content/DialogInterface$OnClickListener;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/revmob/ads/popup/Popup$3;

    invoke-direct {v0}, Lcom/revmob/ads/popup/Popup$3;-><init>()V

    sput-object v0, Lcom/revmob/ads/popup/Popup;->SHOW_IN_UI_THREAD_ON_SUCCESS_LISTENER:Lcom/revmob/ads/internal/OnLoadListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "message"
    .parameter "url"

    .prologue
    .line 58
    invoke-direct {p0, p1, p3}, Lcom/revmob/ads/internal/Ad;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/revmob/ads/popup/Popup$1;

    invoke-direct {v0, p0}, Lcom/revmob/ads/popup/Popup$1;-><init>(Lcom/revmob/ads/popup/Popup;)V

    iput-object v0, p0, Lcom/revmob/ads/popup/Popup;->POPUP_CLICK_LISTENER_YES:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    new-instance v0, Lcom/revmob/ads/popup/Popup$2;

    invoke-direct {v0, p0}, Lcom/revmob/ads/popup/Popup$2;-><init>(Lcom/revmob/ads/popup/Popup;)V

    iput-object v0, p0, Lcom/revmob/ads/popup/Popup;->POPUP_CLICK_LISTENER_NO:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object p2, p0, Lcom/revmob/ads/popup/Popup;->message:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/popup/Popup;Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/revmob/ads/popup/Popup;->buildAndDisplayDialog(Lcom/revmob/ads/internal/OnLoadListener;)V

    return-void
.end method

.method private buildAndDisplayDialog(Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/revmob/ads/popup/Popup;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/ads/popup/Popup;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/revmob/ads/popup/Popup;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/revmob/ads/popup/Popup;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes, sure!"

    iget-object v4, p0, Lcom/revmob/ads/popup/Popup;->POPUP_CLICK_LISTENER_YES:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No, thanks."

    iget-object v4, p0, Lcom/revmob/ads/popup/Popup;->POPUP_CLICK_LISTENER_NO:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "RevMob"

    const-string v3, "Invalid activity as argument: is there an activity running?"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, Lcom/revmob/ads/internal/LoadError;->INVALID_ACTIVITY:Lcom/revmob/ads/internal/LoadError;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/revmob/ads/internal/OnLoadListener;->onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fetchAdvertisement(Landroid/app/Activity;Ljava/lang/String;IILcom/revmob/ads/internal/OnLoadListener;)V
    .locals 1
    .parameter "activity"
    .parameter "fetchUrl"
    .parameter "gender"
    .parameter "age"
    .parameter "listener"

    .prologue
    .line 102
    new-instance v0, Lcom/revmob/ads/popup/PopupFetcher;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/popup/PopupFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 104
    .local v0, fetcher:Lcom/revmob/ads/internal/AdFetcher;
    invoke-virtual {v0, p4}, Lcom/revmob/ads/internal/AdFetcher;->fetchWithSessionVerification(Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/revmob/ads/popup/Popup;->message:Ljava/lang/String;

    return-object v0
.end method

.method public show(Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/revmob/ads/popup/Popup;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/popup/Popup$4;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/popup/Popup$4;-><init>(Lcom/revmob/ads/popup/Popup;Lcom/revmob/ads/internal/OnLoadListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
