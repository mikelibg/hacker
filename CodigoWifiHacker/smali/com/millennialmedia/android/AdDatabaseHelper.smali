.class Lcom/millennialmedia/android/AdDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AdDatabaseHelper.java"


# static fields
.field private static final ACID:Ljava/lang/String; = "acid"

.field private static final ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ADS_TABLE_NAME:Ljava/lang/String; = "ads"

.field private static final AD_ID:Ljava/lang/String; = "adid"

.field private static final ANDROID_ANCHOR:Ljava/lang/String; = "anchor"

.field private static final ANDROID_ANCHOR_2:Ljava/lang/String; = "anchor2"

.field private static final ANDROID_POSITION:Ljava/lang/String; = "position"

.field private static final ANDROID_POSITION_2:Ljava/lang/String; = "position2"

.field private static final APPEARANCE_DELAY:Ljava/lang/String; = "appearancedelay"

.field private static final BUTTONS_TABLE_NAME:Ljava/lang/String; = "buttons"

.field private static final CACHE_COMPLETE:Ljava/lang/String; = "cachecomplete"

.field private static final CACHE_FAILED:Ljava/lang/String; = "cachefailed"

.field private static final CONTENT_LENGTH:Ljava/lang/String; = "contentlength"

.field private static final CONTENT_URL:Ljava/lang/String; = "contenturl"

.field private static final DB_NAME:Ljava/lang/String; = "millennialmedia.db"

.field private static final DB_VERSION:I = 0x24

.field private static final DEFERRED_VIEW_START:Ljava/lang/String; = "deferredviewstart"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final END_ACTIVITY:Ljava/lang/String; = "endactivity"

.field private static final END_OPACITY:Ljava/lang/String; = "endopacity"

.field private static final EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final FADE_DURATION:Ljava/lang/String; = "fadeduration"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageurl"

.field private static final INACTIVITY_TIMEOUT:Ljava/lang/String; = "inactivitytimeout"

.field private static final LINK_URL:Ljava/lang/String; = "linkurl"

.field private static final LOG:Ljava/lang/String; = "log"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final ON_COMPLETION:Ljava/lang/String; = "oncompletion"

.field private static final OVERLAY_ORIENTATION:Ljava/lang/String; = "overlayorientation"

.field private static final PADDING_BOTTOM:Ljava/lang/String; = "paddingbottom"

.field private static final PADDING_LEFT:Ljava/lang/String; = "paddingleft"

.field private static final PADDING_RIGHT:Ljava/lang/String; = "paddingright"

.field private static final PADDING_TOP:Ljava/lang/String; = "paddingtop"

.field private static final SD_CARD:Ljava/lang/String; = "sdcard"

.field private static final SHOW_CONTROLS:Ljava/lang/String; = "showcontrols"

.field private static final SHOW_COUNTDOWN:Ljava/lang/String; = "showcountdown"

.field private static final START_ACTIVITY:Ljava/lang/String; = "startactivity"

.field private static final START_OPACITY:Ljava/lang/String; = "startopacity"

.field private static final STAY_IN_PLAYER:Ljava/lang/String; = "stayInPlayer"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VIDEO_ERROR:Ljava/lang/String; = "videoError"

.field private static final _ID:Ljava/lang/String; = "id"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "millennialmedia.db"

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    return-void
.end method

.method private getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "cursor"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "I[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 850
    .local p3, emptyArray:[Ljava/lang/Object;,"[TT;"
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 851
    .local v1, data:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 852
    .local v0, byteIn:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 853
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 854
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 855
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 857
    if-eqz v5, :cond_0

    .line 858
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 866
    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v6

    .line 861
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v2}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 866
    .end local v2           #e:Ljava/io/StreamCorruptedException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 862
    :catch_1
    move-exception v3

    .local v3, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 863
    .end local v3           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .local v3, ex:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "values"
    .parameter "col"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p3, array:[Ljava/lang/Object;,"[TT;"
    if-nez p3, :cond_0

    .line 902
    :goto_0
    return-void

    .line 885
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v4, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, p3

    if-ge v3, v6, :cond_1

    .line 888
    aget-object v6, p3, v3

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 891
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 892
    .local v1, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 893
    .local v5, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 895
    .local v0, byteArray:[B
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 896
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 899
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    .end local v0           #byteArray:[B
    .end local v1           #byteOut:Ljava/io/ByteArrayOutputStream;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v5           #out:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method checkIfAdExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "adName"

    .prologue
    .line 467
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM ads WHERE ads.name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 471
    .local v1, row:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 472
    if-lez v1, :cond_0

    .line 474
    const/4 v2, 0x1

    .line 478
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 177
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllExpiredAds()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 652
    iget-object v10, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT ads.expiration,ads.name FROM ads"

    invoke-virtual {v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 655
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 656
    .local v8, row:I
    const/4 v4, 0x0

    .line 657
    .local v4, expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-lez v8, :cond_3

    .line 659
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .restart local v4       #expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 661
    .local v3, expiration:Ljava/util/Date;
    const/4 v2, 0x0

    .line 662
    .local v2, exp:Ljava/lang/String;
    const/4 v7, 0x0

    .line 663
    .local v7, name:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 664
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 666
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 667
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 668
    if-eqz v2, :cond_2

    .line 672
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 673
    .local v5, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 674
    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    .line 678
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is expired"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 680
    if-eqz v7, :cond_0

    .line 681
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v5           #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 664
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 687
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v1           #e:Ljava/text/ParseException;
    :cond_2
    if-eqz v7, :cond_0

    .line 694
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 704
    .end local v2           #exp:Ljava/lang/String;
    .end local v3           #expiration:Ljava/util/Date;
    .end local v6           #i:I
    .end local v7           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 709
    :goto_2
    return-object v9

    .line 708
    .restart local v2       #exp:Ljava/lang/String;
    .restart local v3       #expiration:Ljava/util/Date;
    .restart local v6       #i:I
    .restart local v7       #name:Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v9, v4

    .line 709
    goto :goto_2
.end method

.method getAllVideoAds()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 416
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v9, ads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/millennialmedia/android/VideoAd;>;"
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 420
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 421
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v8

    .line 424
    .local v8, ad:Lcom/millennialmedia/android/VideoAd;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 427
    .end local v8           #ad:Lcom/millennialmedia/android/VideoAd;
    :cond_0
    return-object v9
.end method

.method getButtonCountForAd(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 605
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*)  FROM ads,buttons WHERE ads.name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "buttons"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 609
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 610
    .local v0, count:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 611
    return v0
.end method

.method getButtonsForAd(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 530
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT DISTINCT buttons.imageurl,buttons.contentlength,buttons.linkurl,buttons.overlayorientation,buttons.activity,buttons.position,buttons.anchor,buttons.position2,buttons.anchor2,buttons.paddingleft,buttons.paddingtop,buttons.paddingright,buttons.paddingbottom,buttons.appearancedelay,buttons.inactivitytimeout,buttons.startopacity,buttons.endopacity,buttons.fadeduration,buttons.id FROM ads,buttons WHERE ads.name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ads"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 555
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 557
    .local v4, row:I
    const/4 v1, 0x0

    .line 558
    .local v1, buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 559
    if-lez v4, :cond_2

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .restart local v1       #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 564
    new-instance v0, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage;-><init>()V

    .line 565
    .local v0, button:Lcom/millennialmedia/android/VideoImage;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 566
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 567
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 568
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 569
    const/4 v5, 0x4

    new-array v6, v8, [Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 570
    iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 571
    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 572
    :cond_0
    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 573
    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 574
    const/4 v5, 0x7

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 575
    const/16 v5, 0x8

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 576
    const/16 v5, 0x9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 577
    const/16 v5, 0xa

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 578
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 579
    const/16 v5, 0xc

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 580
    const/16 v5, 0xd

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 581
    const/16 v5, 0xe

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 582
    const/16 v5, 0xf

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 583
    const/16 v5, 0x10

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 584
    const/16 v5, 0x11

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 586
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 562
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 593
    .end local v0           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v3           #i:I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 594
    return-object v1
.end method

.method getCachedAdAcid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "adName"

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, acid:Ljava/lang/String;
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT acid FROM ads WHERE ads.name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 450
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 452
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    return-object v0
.end method

.method getCachedAdId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "acid"

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT name FROM ads WHERE ads.acid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 437
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 442
    return-object v1
.end method

.method getDeferredViewStart(Ljava/lang/String;)J
    .locals 7
    .parameter "adName"

    .prologue
    .line 762
    iget-object v4, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT ads.deferredviewstart FROM ads WHERE ads.name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 764
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 765
    .local v3, row:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 766
    .local v1, deferredViewStart:J
    if-lez v3, :cond_0

    .line 768
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 769
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 771
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 772
    return-wide v1
.end method

.method getIdForAdName(Ljava/lang/String;)I
    .locals 12
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 822
    iget-object v0, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v11

    const-string v3, "ads.name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 825
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 826
    .local v10, row:I
    const/4 v9, 0x0

    .line 827
    .local v9, id:I
    if-lez v10, :cond_0

    .line 829
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 830
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 832
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 833
    return v9
.end method

.method getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    .locals 22
    .parameter "adName"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT DISTINCT ads.name,ads.acid,ads.contenturl,ads.expiration,ads.deferredviewstart,ads.oncompletion,ads.showcontrols,ads.startactivity,ads.endactivity,ads.duration,ads.contentlength,ads.stayInPlayer,ads.log,ads.id,ads.sdcard,ads.showcountdown,ads.cachecomplete,ads.cachefailed,ads.videoError FROM ads WHERE ads.name=\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 283
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 285
    .local v14, row:I
    const/4 v3, 0x0

    .line 286
    .local v3, ad:Lcom/millennialmedia/android/VideoAd;
    if-lez v14, :cond_e

    .line 288
    new-instance v3, Lcom/millennialmedia/android/VideoAd;

    .end local v3           #ad:Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v3}, Lcom/millennialmedia/android/VideoAd;-><init>()V

    .line 289
    .restart local v3       #ad:Lcom/millennialmedia/android/VideoAd;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 290
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 291
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    .line 292
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 293
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, exp:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v19, "EEE MMM dd HH:mm:ss zzz yyyy"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v10, formatter:Ljava/text/SimpleDateFormat;
    if-eqz v9, :cond_0

    .line 298
    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v10           #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    .line 303
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 304
    const/16 v16, 0x1

    .line 305
    .local v16, shouldShowControls:I
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 306
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 308
    const/16 v19, 0x7

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 309
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 310
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 311
    :cond_1
    const/16 v19, 0x8

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 312
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 313
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 314
    :cond_2
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 315
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 316
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 317
    .local v18, stayInPlayer:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 319
    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Lcom/millennialmedia/android/VideoLogEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/millennialmedia/android/VideoLogEvent;

    .line 320
    .local v13, logEvents:[Lcom/millennialmedia/android/VideoLogEvent;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 321
    if-eqz v13, :cond_5

    .line 323
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    .line 324
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v13, v11

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 299
    .end local v11           #i:I
    .end local v13           #logEvents:[Lcom/millennialmedia/android/VideoLogEvent;
    .end local v16           #shouldShowControls:I
    .end local v18           #stayInPlayer:I
    :catch_0
    move-exception v8

    .line 300
    .local v8, e:Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 306
    .end local v8           #e:Ljava/text/ParseException;
    .restart local v16       #shouldShowControls:I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 317
    .restart local v18       #stayInPlayer:I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 327
    .restart local v13       #logEvents:[Lcom/millennialmedia/android/VideoLogEvent;
    :cond_5
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 329
    .local v12, id:I
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 330
    .local v15, sdCard:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    .line 332
    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 333
    .local v17, showCountdown:I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 335
    const/16 v19, 0x10

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 336
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 337
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 339
    :cond_6
    const/16 v19, 0x11

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 340
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 341
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 343
    :cond_7
    const/16 v19, 0x12

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 344
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 345
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT DISTINCT buttons.imageurl,buttons.contentlength,buttons.linkurl,buttons.overlayorientation,buttons.activity,buttons.position,buttons.anchor,buttons.position2,buttons.anchor2,buttons.paddingleft,buttons.paddingtop,buttons.paddingright,buttons.paddingbottom,buttons.appearancedelay,buttons.inactivitytimeout,buttons.startopacity,buttons.endopacity,buttons.fadeduration,buttons.id FROM ads,buttons WHERE buttons.adid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ORDER BY "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "buttons"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "id"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    .local v6, buttonsCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 373
    .local v5, buttonsCount:I
    if-lez v5, :cond_d

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 376
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 377
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    if-ge v11, v5, :cond_d

    .line 379
    new-instance v4, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v4}, Lcom/millennialmedia/android/VideoImage;-><init>()V

    .line 381
    .local v4, button:Lcom/millennialmedia/android/VideoImage;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 382
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 383
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 384
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 385
    const/16 v19, 0x4

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->getArray(Landroid/database/Cursor;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 386
    iget-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 387
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 388
    :cond_9
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 389
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 390
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 391
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 392
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 393
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 394
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 395
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 396
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 397
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 398
    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 399
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 400
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 402
    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v19

    if-nez v19, :cond_a

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 377
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 330
    .end local v4           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v5           #buttonsCount:I
    .end local v6           #buttonsCursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v17           #showCountdown:I
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 333
    .restart local v17       #showCountdown:I
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 408
    .restart local v5       #buttonsCount:I
    .restart local v6       #buttonsCursor:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    .end local v5           #buttonsCount:I
    .end local v6           #buttonsCursor:Landroid/database/Cursor;
    .end local v9           #exp:Ljava/lang/String;
    .end local v12           #id:I
    .end local v13           #logEvents:[Lcom/millennialmedia/android/VideoLogEvent;
    .end local v15           #sdCard:I
    .end local v16           #shouldShowControls:I
    .end local v17           #showCountdown:I
    .end local v18           #stayInPlayer:I
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 411
    return-object v3
.end method

.method isAdExpired(Ljava/lang/String;)Z
    .locals 11
    .parameter "adName"

    .prologue
    const/4 v6, 0x0

    .line 720
    iget-object v7, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT ads.expiration FROM ads WHERE ads.name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 722
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 723
    .local v5, row:I
    const/4 v3, 0x0

    .line 724
    .local v3, expiration:Ljava/util/Date;
    if-lez v5, :cond_2

    .line 726
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, exp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 734
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 735
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 748
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 749
    if-eqz v3, :cond_1

    .line 750
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    const/4 v6, 0x1

    .line 751
    .end local v2           #exp:Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 736
    .restart local v2       #exp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 737
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 744
    .end local v1           #e:Ljava/text/ParseException;
    .end local v2           #exp:Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method isAdOnSDCard(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, result:I
    iget-object v4, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT sdcard FROM ads WHERE ads.name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 624
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 626
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 627
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 629
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 630
    if-ne v1, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 99
    const-string v1, "Creating cached ad database"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 101
    const-string v1, "CREATE TABLE ads (id INTEGER NOT NULL PRIMARY KEY,name TEXT,acid TEXT,type INTEGER,startactivity BLOB,endactivity BLOB,showcontrols INTEGER,contenturl TEXT,expiration TEXT,deferredviewstart BIGINT,oncompletion TEXT,duration BIGINT,contentlength BIGINT,stayInPlayer INTEGER,log BLOB,sdcard INTEGER,showcountdown INTEGER,cachecomplete BLOB,cachefailed BLOB,videoError BLOB);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v1, "CREATE TABLE buttons (id INTEGER NOT NULL PRIMARY KEY,imageurl TEXT,contentlength BIGINT,linkurl TEXT,overlayorientation TEXT,activity BLOB,position INTEGER,anchor INTEGER,position2 INTEGER,anchor2 INTEGER,paddingtop INTEGER,paddingleft INTEGER,paddingbottom INTEGER,paddingright INTEGER,appearancedelay BIGINT,inactivitytimeout BIGINT,startopacity FLOAT,endopacity FLOAT,fadeduration BIGINT,adid INTEGER CONSTRAINT fk_buttons_ads_id REFERENCES ads(id) ON DELETE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "CREATE TRIGGER fk_buttons_ads_id BEFORE DELETE ON ads FOR EACH ROW BEGIN DELETE from buttons WHERE buttons.adid=OLD.id; END;"

    .line 154
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 93
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 163
    const-string v0, "DROP TABLE IF EXISTS ads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v0, "DROP TABLE IF EXISTS buttons"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    return-void
.end method

.method purgeAdFromDb(Ljava/lang/String;)Z
    .locals 7
    .parameter "adName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    iget-object v3, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ads"

    const-string v5, "ads.name=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, row:I
    if-lez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method shouldShowBottomBar(Ljava/lang/String;)Z
    .locals 8
    .parameter "adName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 491
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT DISTINCT showcontrols FROM ads WHERE ads.name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 496
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 498
    .local v1, row:I
    const/4 v2, 0x1

    .line 500
    .local v2, shouldShowControls:I
    if-lez v1, :cond_0

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 506
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 508
    if-ne v2, v3, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method storeAd(Lcom/millennialmedia/android/VideoAd;)V
    .locals 13
    .parameter "ad"

    .prologue
    const/4 v12, 0x0

    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, adValues:Landroid/content/ContentValues;
    const-string v9, "name"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v9, "acid"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v9, "type"

    iget v10, p1, Lcom/millennialmedia/android/VideoAd;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v9, "startactivity"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const-string v9, "endactivity"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const-string v9, "showcontrols"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    const-string v9, "contenturl"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    if-eqz v9, :cond_0

    .line 200
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, dateString:Ljava/lang/String;
    const-string v9, "expiration"

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v5           #dateString:Ljava/lang/String;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const-string v9, "deferredviewstart"

    iget-wide v10, p1, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v9, "oncompletion"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v9, "duration"

    iget-wide v10, p1, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v9, "contentlength"

    iget-wide v10, p1, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v9, "stayInPlayer"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 213
    const-string v9, "sdcard"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 214
    const-string v9, "showcountdown"

    iget-boolean v10, p1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    const-string v9, "log"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v9, "cachecomplete"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const-string v9, "cachefailed"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const-string v9, "videoError"

    iget-object v10, p1, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-direct {p0, v0, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v9, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "ads"

    invoke-virtual {v9, v10, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 222
    .local v1, adid:J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 224
    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 225
    .local v3, button:Lcom/millennialmedia/android/VideoImage;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v4, buttonValues:Landroid/content/ContentValues;
    const-string v9, "imageurl"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v9, "contentlength"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const-string v9, "linkurl"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v9, "overlayorientation"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v9, "activity"

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-direct {p0, v4, v9, v10}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v9, "position"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v9, "anchor"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v9, "position2"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v9, "anchor2"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v9, "paddingtop"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v9, "paddingleft"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v9, "paddingright"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v9, "paddingbottom"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v9, "appearancedelay"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v9, "inactivitytimeout"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v9, "startopacity"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 242
    const-string v9, "endopacity"

    iget v10, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 243
    const-string v9, "fadeduration"

    iget-wide v10, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v9, "adid"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    iget-object v9, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "buttons"

    invoke-virtual {v9, v10, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 205
    .end local v1           #adid:J
    .end local v3           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v4           #buttonValues:Landroid/content/ContentValues;
    .end local v8           #i:I
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 249
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #adid:J
    .restart local v8       #i:I
    :cond_1
    return-void
.end method

.method updateAdData(Lcom/millennialmedia/android/VideoAd;)V
    .locals 12
    .parameter "ad"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 777
    if-nez p1, :cond_1

    .line 818
    :cond_0
    return-void

    .line 780
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v1, adValues:Landroid/content/ContentValues;
    const-string v5, "startactivity"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    const-string v5, "endactivity"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    const-string v5, "log"

    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    const-string v5, "deferredviewstart"

    new-instance v6, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 786
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ads"

    const-string v7, "ads.name=?"

    new-array v8, v11, [Ljava/lang/String;

    iget-object v9, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->getIdForAdName(Ljava/lang/String;)I

    move-result v0

    .line 790
    .local v0, adIdNum:I
    if-lez v0, :cond_0

    .line 792
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 794
    iget-object v5, p1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 795
    .local v2, button:Lcom/millennialmedia/android/VideoImage;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v3, buttonValues:Landroid/content/ContentValues;
    const-string v5, "linkurl"

    iget-object v6, v2, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v5, "overlayorientation"

    iget-object v6, v2, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v5, "activity"

    iget-object v6, v2, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->putArray(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    const-string v5, "position"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v5, "anchor"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v5, "position2"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    const-string v5, "anchor2"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    const-string v5, "paddingtop"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    const-string v5, "paddingleft"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    const-string v5, "paddingbottom"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    const-string v5, "paddingright"

    new-instance v6, Ljava/lang/Integer;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v5, "appearancedelay"

    new-instance v6, Ljava/lang/Long;

    iget-wide v7, v2, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 809
    const-string v5, "inactivitytimeout"

    new-instance v6, Ljava/lang/Long;

    iget-wide v7, v2, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 810
    const-string v5, "startopacity"

    new-instance v6, Ljava/lang/Float;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 811
    const-string v5, "endopacity"

    new-instance v6, Ljava/lang/Float;

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 812
    const-string v5, "fadeduration"

    new-instance v6, Ljava/lang/Long;

    iget-wide v7, v2, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 814
    iget-object v5, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "buttons"

    const-string v7, "buttons.adid=? AND buttons.imageurl=? "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, v2, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 792
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method updateAdOnSDCard(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "isOnSdCard"

    .prologue
    .line 639
    iget-object v1, p0, Lcom/millennialmedia/android/AdDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE ads SET sdcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 642
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 643
    return-void
.end method
