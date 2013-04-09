.class public Lcom/wifi/hacker/cracker/ItemListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static itemDetailsrrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wifi/hacker/cracker/NetworkDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private l_Inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wifi/hacker/cracker/NetworkDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wifi/hacker/cracker/NetworkDetails;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    sput-object p2, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->l_Inflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 29
    sget-object v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v3, p0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->l_Inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;-><init>()V

    .line 41
    .local v0, holder:Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;
    const v3, 0x7f070012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->txt_itemName:Landroid/widget/TextView;

    .line 43
    const v3, 0x7f070013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->txt_itemDescription:Landroid/widget/TextView;

    .line 45
    const v3, 0x7f070014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->itemImage:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-object v4, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->txt_itemName:Landroid/widget/TextView;

    sget-object v3, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wifi/hacker/cracker/NetworkDetails;

    iget-object v3, v3, Lcom/wifi/hacker/cracker/NetworkDetails;->networkName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->txt_itemDescription:Landroid/widget/TextView;

    sget-object v3, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wifi/hacker/cracker/NetworkDetails;

    iget-object v3, v3, Lcom/wifi/hacker/cracker/NetworkDetails;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v3, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;->itemDetailsrrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wifi/hacker/cracker/NetworkDetails;

    iget v2, v3, Lcom/wifi/hacker/cracker/NetworkDetails;->networkStrength:I

    .line 60
    .local v2, networkStrength:I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 61
    const v1, 0x7f020004

    .line 71
    .local v1, networkDrawable:I
    :goto_1
    iget-object v3, v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;->itemImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    return-object p2

    .line 50
    .end local v0           #holder:Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;
    .end local v1           #networkDrawable:I
    .end local v2           #networkStrength:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/wifi/hacker/cracker/ItemListBaseAdapter$ViewHolder;
    goto :goto_0

    .line 62
    .restart local v2       #networkStrength:I
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 63
    const v1, 0x7f020003

    .restart local v1       #networkDrawable:I
    goto :goto_1

    .line 64
    .end local v1           #networkDrawable:I
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 65
    const v1, 0x7f020002

    .restart local v1       #networkDrawable:I
    goto :goto_1

    .line 66
    .end local v1           #networkDrawable:I
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 67
    const v1, 0x7f020001

    .restart local v1       #networkDrawable:I
    goto :goto_1

    .line 69
    .end local v1           #networkDrawable:I
    :cond_4
    const/high16 v1, 0x7f02

    .restart local v1       #networkDrawable:I
    goto :goto_1
.end method
