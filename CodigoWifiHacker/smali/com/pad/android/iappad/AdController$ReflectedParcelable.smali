.class public Lcom/pad/android/iappad/AdController$ReflectedParcelable;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectedParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2703
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 2717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2718
    check-cast v4, [Ljava/lang/reflect/Field;

    .line 2719
    .local v4, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2720
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2723
    move-object v6, p0

    .line 2724
    .local v6, obj:Lcom/pad/android/iappad/AdController$ReflectedParcelable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_0
    array-length v9, v4

    if-lt v5, v9, :cond_0

    .line 2750
    :goto_1
    return-void

    .line 2725
    :cond_0
    aget-object v3, v4, v5

    .line 2727
    .local v3, f:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2729
    .local v7, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2730
    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2731
    .local v8, typeStr:Ljava/lang/String;
    const-string v9, "class com.pad.android.util.AdNavigationStringEnum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pad/android/util/AdNavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/pad/android/util/AdNavigationStringEnum;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2724
    .end local v8           #typeStr:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2733
    .restart local v8       #typeStr:Ljava/lang/String;
    :cond_2
    const-string v9, "class com.pad.android.util.AdTransitionStringEnum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2734
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pad/android/util/AdTransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/pad/android/util/AdTransitionStringEnum;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2744
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v7           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #typeStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2745
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "LBAdController"

    invoke-static {v9, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2737
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #f:Ljava/lang/reflect/Field;
    .restart local v7       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2738
    .local v1, dt:Ljava/lang/Object;
    instance-of v9, v1, Landroid/os/Parcelable$Creator;

    if-nez v9, :cond_1

    .line 2739
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2746
    .end local v1           #dt:Ljava/lang/Object;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v7           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 2747
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v9, "LBAdController"

    invoke-static {v9, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2709
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .parameter "out"
    .parameter "flags1"

    .prologue
    .line 2756
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 2757
    .local v4, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2758
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2760
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_0
    array-length v8, v4

    if-lt v5, v8, :cond_0

    .line 2783
    :goto_1
    return-void

    .line 2761
    :cond_0
    aget-object v3, v4, v5

    .line 2762
    .local v3, f:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 2764
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2765
    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2766
    .local v7, typeStr:Ljava/lang/String;
    const-string v8, "class com.pad.android.util.AdNavigationStringEnum"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2767
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pad/android/util/AdNavigationStringEnum;

    invoke-virtual {v8}, Lcom/pad/android/util/AdNavigationStringEnum;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2760
    .end local v7           #typeStr:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2768
    .restart local v7       #typeStr:Ljava/lang/String;
    :cond_2
    const-string v8, "class com.pad.android.util.AdTransitionStringEnum"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2769
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pad/android/util/AdTransitionStringEnum;

    invoke-virtual {v8}, Lcom/pad/android/util/AdTransitionStringEnum;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2778
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #typeStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2779
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "LBAdController"

    invoke-static {v8, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2772
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #f:Ljava/lang/reflect/Field;
    .restart local v6       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2773
    .local v1, dt:Ljava/lang/Object;
    instance-of v8, v1, Landroid/os/Parcelable$Creator;

    if-nez v8, :cond_1

    .line 2774
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2780
    .end local v1           #dt:Ljava/lang/Object;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 2781
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v8, "LBAdController"

    invoke-static {v8, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
