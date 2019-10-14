.class public final Lcom/samsung/android/knox/lockscreen/LSOItemCreator;
.super Ljava/lang/Object;
.source "LSOItemCreator.java"


# static fields
.field public static final LSO_ITEM_TYPE_CONTAINER:B = 0x4t

.field public static final LSO_ITEM_TYPE_IMAGE:B = 0x3t

.field public static final LSO_ITEM_TYPE_NONE:B = 0x0t

.field public static final LSO_ITEM_TYPE_SPACE:B = 0x1t

.field public static final LSO_ITEM_TYPE_TEXT:B = 0x2t

.field public static final LSO_ITEM_TYPE_WIDGET:B = 0x5t

.field private static final TAG:Ljava/lang/String; = "LSO_LSOItemCreator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_40

    const-string v1, "LSO_LSOItemCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ItemType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    move-object v0, v1

    goto :goto_3e

    :pswitch_22
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    move-object v0, v1

    goto :goto_3e

    :pswitch_29
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>()V

    move-object v0, v1

    goto :goto_3e

    :pswitch_30
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>()V

    move-object v0, v1

    goto :goto_3e

    :pswitch_37
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>()V

    move-object v0, v1

    nop

    :goto_3e
    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_1b
    .end packed-switch
.end method

.method public static createItem(BLandroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 6

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_40

    const-string v1, "LSO_LSOItemCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ItemType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_3e

    :pswitch_22
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_3e

    :pswitch_29
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_3e

    :pswitch_30
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_3e

    :pswitch_37
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    nop

    :goto_3e
    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_1b
    .end packed-switch
.end method
