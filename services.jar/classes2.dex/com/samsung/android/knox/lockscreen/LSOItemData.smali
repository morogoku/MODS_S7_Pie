.class public abstract Lcom/samsung/android/knox/lockscreen/LSOItemData;
.super Ljava/lang/Object;
.source "LSOItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_WH_VALUE:I = -0x63

.field public static final LSO_FIELD_ATTRIBUTES:I = 0x40

.field public static final LSO_FIELD_BG_COLOR:I = 0x10

.field public static final LSO_FIELD_GRAVITY:I = 0x20

.field public static final LSO_FIELD_ITEMID:I = 0x1

.field public static final LSO_FIELD_LAST:I = 0x80

.field public static final LSO_FIELD_PARAM_HEIGHT:I = 0x4

.field public static final LSO_FIELD_PARAM_WEIGHT:I = 0x8

.field public static final LSO_FIELD_PARAM_WIDTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LSO_LSOItemData"


# instance fields
.field private attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field private bg_color:I

.field private gravity:I

.field private height:I

.field private itemId:Ljava/lang/String;

.field private modifiedFields:I

.field private pfd:Landroid/os/ParcelFileDescriptor;

.field private type:B

.field private weight:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/16 v0, -0x63

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return-void
.end method

.method protected constructor <init>(BLandroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private openFileDescriptorInternal(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_42

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    :try_start_9
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_f} :catch_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_41

    :catch_10
    move-exception v1

    const-string v2, "LSO_LSOItemData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openFileDescriptorInternal() error occurs - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_29
    move-exception v1

    const-string v2, "LSO_LSOItemData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openFileDescriptorInternal() file not found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    nop

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public closeFileDescriptor()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_11

    :cond_10
    goto :goto_12

    :catch_11
    move-exception v0

    :cond_12
    :goto_12
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eqz v0, :cond_2d

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2d

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2d
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    return-object v0
.end method

.method public getBgColor()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    return v0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .registers 2

    iget-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    return v0
.end method

.method public getUpdatedFields()[I
    .registers 8

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_b
    if-lez v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v2, v3

    goto :goto_b

    :cond_13
    new-array v3, v0, [I

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    const/4 v4, 0x0

    :goto_18
    const/16 v5, 0x1f

    if-gt v4, v5, :cond_31

    if-lez v2, :cond_31

    if-ge v1, v0, :cond_31

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    and-int v6, v2, v5

    if-ne v6, v5, :cond_2e

    add-int/lit8 v6, v1, 0x1

    aput v5, v3, v1

    not-int v1, v5

    and-int/2addr v1, v2

    move v2, v1

    move v1, v6

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_31
    return-object v3
.end method

.method public getWeight()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    return v0
.end method

.method public isFieldUpdated(I)Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public openFileDescriptor()V
    .registers 4

    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eqz v0, :cond_26

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_25

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_25
    goto :goto_4a

    :cond_26
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    if-eqz v0, :cond_35

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    goto :goto_4a

    :cond_35
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    const-string v1, "android:src"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "android:src"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method protected readBoolFromParcel(Landroid/os/Parcel;I)Z
    .registers 6

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_10

    move v1, v2

    nop

    :cond_10
    return v1

    :cond_11
    return v1
.end method

.method protected readByteFromParcel(Landroid/os/Parcel;I)B
    .registers 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected readFloatFromParcel(Landroid/os/Parcel;I)F
    .registers 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected readFloatFromParcel(Landroid/os/Parcel;IF)F
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0

    :cond_b
    return p3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/16 v0, -0x63

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 v0, -0x1

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    goto :goto_5f

    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    :goto_5f
    return-void
.end method

.method protected readIntFromParcel(Landroid/os/Parcel;II)I
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0

    :cond_b
    return p3
.end method

.method protected readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected removeFieldFlag(I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public resetUpdatedFields()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Byte;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;[B)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->putAll(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setBgColor(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setDimension(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    return-void
.end method

.method public setDimension(IIF)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setHeight(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setWeight(F)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG_Color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    return-object p1
.end method

.method protected updateFieldFlag(I)V
    .registers 3

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_4b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4f
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IB)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    :cond_9
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IF)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_9
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_9
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IZ)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    int-to-byte v0, p3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :cond_a
    return-void
.end method
