.class public Lcom/wifi/hacker/cracker/lars3uq6n5jqwtoz;
.super Landroid/appwidget/AppWidgetProvider;
.source "lars3uq6n5jqwtoz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .parameter "paramContext"
    .parameter "paramAppWidgetManager"
    .parameter "paramArrayOfInt"

    .prologue
    const/4 v7, 0x0

    .line 14
    array-length v0, p3

    .line 15
    .local v0, i:I
    const/4 v1, 0x0

    .line 17
    .local v1, j:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    aget v2, p3, v1

    .line 20
    .local v2, k:I
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/wifi/hacker/cracker/MainActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 21
    .local v3, localPendingIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030002

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 22
    .local v4, localRemoteViews:Landroid/widget/RemoteViews;
    const v5, 0x7f070002

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 23
    invoke-virtual {p2, v2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
