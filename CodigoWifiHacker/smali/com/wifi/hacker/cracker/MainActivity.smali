.class public Lcom/wifi/hacker/cracker/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wifi/hacker/cracker/MainActivity$CrackTask;
    }
.end annotation


# instance fields
.field messages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Checking for root"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Switching Wifi to Monitor Mode\nairmon-ng start ${INTERFACE}\n"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Retrieving interface MAC Address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Starting airodump"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Starting Packet Capture"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Performing Fragmentation Attack"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aireplay-ng -1 0 -a ${BSSID} -h ${MACADDRESS} ${INTERFACE}"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aireplay-ng -5 -b ${BSSID} -h ${MACADDRESS} ${INTERFACE}"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "packetforge-ng -0 -a ${BSSID} -h ${MACADDRESS} *.xor -w arp-packet ${INTERFACE}"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "aireplay-ng -2 -r arp-packet ${INTERFACE}"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity;->messages:[Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public getNetworkDetails()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wifi/hacker/cracker/NetworkDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wifi/hacker/cracker/NetworkDetails;>;"
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/wifi/hacker/cracker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 183
    .local v8, wifi:Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 184
    .local v5, networkList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 185
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 186
    .local v3, network:Landroid/net/wifi/ScanResult;
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 188
    .local v0, Capabilities:Ljava/lang/String;
    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v10, -0x3c

    if-lt v9, v10, :cond_1

    .line 189
    const/4 v6, 0x5

    .line 200
    .local v6, networkStrength:I
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, networkEncryption:Ljava/lang/String;
    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, i:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    .line 203
    const/4 v9, 0x0

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 204
    :cond_0
    new-instance v9, Lcom/wifi/hacker/cracker/NetworkDetails;

    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v9, v10, v4, v6}, Lcom/wifi/hacker/cracker/NetworkDetails;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v1           #i:I
    .end local v4           #networkEncryption:Ljava/lang/String;
    .end local v6           #networkStrength:I
    :cond_1
    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v10, -0x46

    if-lt v9, v10, :cond_2

    .line 191
    const/4 v6, 0x4

    .restart local v6       #networkStrength:I
    goto :goto_1

    .line 192
    .end local v6           #networkStrength:I
    :cond_2
    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v10, -0x50

    if-lt v9, v10, :cond_3

    .line 193
    const/4 v6, 0x3

    .restart local v6       #networkStrength:I
    goto :goto_1

    .line 194
    .end local v6           #networkStrength:I
    :cond_3
    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v10, -0x5a

    if-lt v9, v10, :cond_4

    .line 195
    const/4 v6, 0x2

    .restart local v6       #networkStrength:I
    goto :goto_1

    .line 197
    .end local v6           #networkStrength:I
    :cond_4
    const/4 v6, 0x1

    .restart local v6       #networkStrength:I
    goto :goto_1

    .line 207
    .end local v0           #Capabilities:Ljava/lang/String;
    .end local v3           #network:Landroid/net/wifi/ScanResult;
    .end local v6           #networkStrength:I
    :cond_5
    return-object v7
.end method

.method public getRandomIntBetween(II)I
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 170
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 174
    .local v0, generator:Ljava/util/Random;
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p1

    return v1
.end method

.method public getSavedSSIDs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/wifi/hacker/cracker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 78
    .local v2, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 79
    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 80
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v3           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v1
.end method

.method public isWifiOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wifi/hacker/cracker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 63
    .local v1, mWifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/wifi/hacker/cracker/MainActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/wifi/hacker/cracker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 44
    .local v0, lv:Landroid/widget/ListView;
    new-instance v1, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;

    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/MainActivity;->getNetworkDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/wifi/hacker/cracker/ItemListBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    new-instance v1, Lcom/wifi/hacker/cracker/MainActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/wifi/hacker/cracker/MainActivity$1;-><init>(Lcom/wifi/hacker/cracker/MainActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method

.method public toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "arg"

    .prologue
    .line 72
    const-string v0, "%040x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
