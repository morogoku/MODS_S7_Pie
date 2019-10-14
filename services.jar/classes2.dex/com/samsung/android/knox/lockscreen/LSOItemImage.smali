.class public Lcom/samsung/android/knox/lockscreen/LSOItemImage;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "LSOItemImage.java"


# static fields
.field public static final LSO_FIELD_IMAGE_PATH:I = 0x80

.field public static final LSO_FIELD_IMAGE_URL:I = 0x100

.field public static final LSO_FIELD_SCALE_TYPE:I = 0x200


# instance fields
.field private imagePath:Ljava/lang/String;

.field private pollingInterval:J

.field private scaleType:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPollingInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    return-wide v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 4

    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    if-ltz v1, :cond_12

    iget v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    array-length v2, v0

    if-ge v1, v2, :cond_12

    iget v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    aget-object v1, v0, v1

    return-object v1

    :cond_12
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v1
.end method

.method public getScaleTypeAsInteger()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    const/16 v0, 0x200

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    :cond_28
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->updateFieldFlag(I)V

    return-void
.end method

.method public setScaleType(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->updateFieldFlag(I)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->updateFieldFlag(I)V

    return-void
.end method

.method public setURL(Ljava/lang/String;J)V
    .registers 6

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    goto :goto_15

    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    :goto_15
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PollingInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->scaleType:I

    const/16 v1, 0x200

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->pollingInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_23
    return-void
.end method
