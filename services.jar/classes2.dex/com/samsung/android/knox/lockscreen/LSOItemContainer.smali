.class public Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "LSOItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    }
.end annotation


# static fields
.field public static final LSO_FIELD_BG:I = 0x100

.field public static final LSO_FIELD_ORIENTATION:I = 0x80


# instance fields
.field private bgImagePath:Ljava/lang/String;

.field private childObj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBGImagePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    return-object v0
.end method

.method public getNumItems()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->readByteFromParcel(Landroid/os/Parcel;I)B

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    :goto_10
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_3b

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Parcel format exception"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3b
    return-void
.end method

.method public setBGImage(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->updateFieldFlag(I)V

    return-void
.end method

.method public setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContainerView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG_IMAGE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v2, v3, :cond_41

    const-string v2, "VERTICAL"

    goto :goto_43

    :cond_41
    const-string v2, "HORIZONTAL"

    :goto_43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    int-to-byte v0, v0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->writeToParcel(Landroid/os/Parcel;IB)V

    const/16 v0, 0x100

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_25
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v0, 0x1

    goto :goto_25

    :cond_3c
    return-void
.end method
