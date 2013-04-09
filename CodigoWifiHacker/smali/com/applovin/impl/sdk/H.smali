.class Lcom/applovin/impl/sdk/H;
.super Lcom/applovin/impl/sdk/O;


# instance fields
.field private final a:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    const-string v0, "HandleWebRequest"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No clientspecified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    return-void
.end method

.method static synthetic a(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/applovin/impl/sdk/H;->d(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/H;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/H;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->e:Lcom/applovin/sdk/Logger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/H;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/H;->a(Ljava/util/List;)V

    :goto_2
    return-void

    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->e:Lcom/applovin/sdk/Logger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/H;->c:Ljava/lang/String;

    const-string v4, "Unable to parse query string"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "/conv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/H;->b(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const-string v0, "/test.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/H;->b()V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/applovin/impl/sdk/K;

    const/16 v1, 0x194

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v3, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/K;-><init>(ILcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    sget-object v1, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/H;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/I;

    const-string v1, "size"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/H;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/sdk/J;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/sdk/J;-><init>(Lcom/applovin/impl/sdk/H;Ljava/util/List;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/H;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/I;-><init>(Lcom/applovin/impl/sdk/H;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;)V

    const-string v1, "placement"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/H;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/F;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/H;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    return-void
.end method

.method static synthetic a(IILjava/lang/String;)[B
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/H;->b(IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/H;->b(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/applovin/impl/sdk/H;->c(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const-string v0, "applovin_serverTest = \'4.2.1\';"

    new-instance v0, Lcom/applovin/impl/sdk/K;

    const/16 v1, 0xc8

    const-string v2, "applovin_serverTest = \'4.2.1\';"

    const-string v3, "application/javascript"

    iget-object v4, p0, Lcom/applovin/impl/sdk/H;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v5, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/K;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    sget-object v1, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/H;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4

    new-instance v0, Lcom/applovin/impl/sdk/Y;

    const-string v1, "advertiser_id"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/H;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/Y;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/W;->run()V

    new-instance v0, Lcom/applovin/impl/sdk/K;

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v3, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/K;-><init>(ILcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    sget-object v1, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/H;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    return-void
.end method

.method private static b(IILjava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; charset=utf-8\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(ILjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/H;->b(IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinAd;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applovin://com.applovin.sdk/adservice/track_click"

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinAd;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "html"

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinAd;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "redirect_url"

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinAd;->getDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "click_url"

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinAd;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Programming error: unable to create JSON message"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x800

    new-array v1, v0, [B

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x800

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/H;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/H;->e:Lcom/applovin/sdk/Logger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/H;->c:Ljava/lang/String;

    const-string v3, "Unable to communicate with the client"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
